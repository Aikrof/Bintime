<?php

namespace app\controllers;


use Yii;
use yii\data\Pagination;
use yii\helpers\Json;
use yii\web\Controller;
use app\models\UserData;
use app\models\UserAddress;
use app\models\Countries;

class UserController extends Controller
{
    protected $userData;
    protected $userAddress;

    /**
     * @inheritdoc
     */
    public function __construct($id, $module, $config = [])
    {
        parent::__construct($id, $module, $config);

        $this->userData = new UserData();
        $this->userAddress = new UserAddress();
    }

    /**
     * @inheritdoc
     */
    public function beforeAction($action)
    {
        if (in_array($action->actionMethod, [
            'actionUpdateUser',
            'actionDeleteUser',
            'actionAddAddress',
            'actionDeleteAddress'])
        ){
            if (!Yii::$app->request->isAjax ||
                !Yii::$app->request->isPost) {

                Yii::$app->response->statusCode = 415;
                return;
            }

            Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        }
        return parent::beforeAction($action);
    }

    /**
     * Update user data
     *
     * @return void|Json
     */
    public function actionUpdateUser()
    {
        if (empty(Yii::$app->request->post('userData'))){
            Yii::$app->response->statusCode = 415;
            return;
        }

        $userFormData = json_decode(Yii::$app->request->post('userData'), true);
        if (!empty($user = UserData::findOne($userFormData['id']))){
            $user->attributes = $userFormData;
            $user->scenario = 'update';
            if ($user->validate()){
                $user->save();

                Yii::$app->response->statusCode = 204;
                return;
            }
            else{
                Yii::$app->response->statusCode = 400;
                return (['error' => $user->getErrors()]);
            }
        }
        else {
            Yii::$app->response->statusCode = 422;
            return (['error' => 'User not found']);
        }
    }

    /**
     * Delete current user
     *
     * @return void|Json
     */
    public function actionDeleteUser()
    {
        if (empty(Yii::$app->request->post('userData'))){
            Yii::$app->response->statusCode = 415;
            return;
        }

        $userFormData = json_decode(Yii::$app->request->post('userData'), true);
        if (!empty($user = UserData::findOne($userFormData['id']))){
            $user->delete();
            Yii::$app->response->statusCode = 204;
        }
        else{
            Yii::$app->response->statusCode = 422;
            return (['error' => 'User not found']);
        }
    }

    /**
     * Displays homepage with all users.
     *
     * @return String
     */
    public function actionGetAllUsers()
    {
        $query = UserData::find();
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 5]);
        $users = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();

        return ($this->render('users', compact('users', 'pages')));
    }

    /**
     * Displays add new user page and save new user to `user` table.
     *
     * @return String
     */
    public function actionAddNewUser()
    {
        if (!empty(Yii::$app->request->post('UserData')) &&
            !empty(Yii::$app->request->post('UserAddress'))){

            $this->userData->scenario = 'add';
            $this->userData->attributes = Yii::$app->request->post('UserData');
            $this->userAddress->attributes = Yii::$app->request->post('UserAddress');

            if ($this->userData->validate() && $this->userAddress->validate()){
                $this->userData->password = Yii::$app->security->generatePasswordHash($this->userData->password);
                $this->userData->created_at = date(DATE_ISO8601);
                $this->userData->save();

                $this->userAddress->user_id = $this->userData->id;
                $this->userAddress->save();

                return $this->goHome();
            }
        }

        return (
            $this->render('addUser', [
                'userData' => $this->userData,
                'userAddress' => $this->userAddress,
                'countries' => Countries::getAllCountriesName()
            ])
        );
    }

    /**
     * Displays user info page.
     *
     * @return String
     * @throws yii\web\HttpException
     */
    public function actionGetUserInfo($login)
    {
        if (!empty($user = UserData::find()->where(['login' => $login])->one())){

            $query = UserAddress::find()->where(['user_id' => $user->id]);
            $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 5]);
            $addresses = $query->offset($pages->offset)
                ->limit($pages->limit)
                ->all();

            return ($this->render('info', [
                'user' => $user,
                'addresses' => $addresses,
                'countries' => Countries::getAllCountriesName(),
                'pages' => $pages,
            ]));
        }
        else
            throw new \yii\web\HttpException(404 ,'Страница не найдена');
    }

    /**
     * Adds new address to user.
     *
     * @return void|Json
     */
    public function actionAddAddress()
    {
        if (empty(Yii::$app->request->post('userAddress'))){
            Yii::$app->response->statusCode = 415;
            return;
        }

        $newAddress = json_decode(Yii::$app->request->post('userAddress'), true);
        if (!empty($user = UserData::findOne($newAddress['user_id']))) {
            if (!empty($newAddress['address_id'])) {
                $address = UserAddress::findOne($newAddress['address_id']);
            } else {
                $address = new UserAddress();
            }

            $address->attributes = $newAddress;

            if ($address->validate()) {
                $address->user_id = $user->id;
                $address->save();

                Yii::$app->response->statusCode = 204;
                return;
            } else {
                Yii::$app->response->statusCode = 400;
                return (['error' => $address->getErrors()]);
            }

        } else {
            Yii::$app->response->statusCode = 422;
            return (['error' => 'User not found']);
        }
    }

    /**
     * Delete user address.
     *
     * @return void
     */
    public function actionDeleteAddress()
    {
        if (empty(Yii::$app->request->post('userAddress'))){
            Yii::$app->response->statusCode = 415;
            return;
        }

        $userAddress = json_decode(Yii::$app->request->post('userAddress'), true);
        if (!empty($userAddress['address_id']) &&
            !empty($address = UserAddress::findOne($userAddress['address_id'])) &&
            (UserAddress::find()->where(['user_id' => $userAddress['user_id']])->count() > 1)
        ){
            $address->delete();
        }

        Yii::$app->response->statusCode = 204;
        return;
    }
}