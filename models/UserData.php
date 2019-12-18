<?php

namespace app\models;

use yii\db\ActiveRecord;

class UserData extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function getAddress()
    {
        return $this->hasMany(UserAddress::className(), ['user_id' => 'id']);
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        $scenarios = parent::scenarios();
        $scenarios['update'] = ['login', 'first_name', 'last_name', 'email', 'gender'];
        $scenarios['add'] = ['login', 'password', 'first_name', 'last_name', 'email', 'gender'];
        return ($scenarios);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return ([
            [['login', 'first_name', 'last_name', 'email'], 'required'],
            [['first_name', 'last_name', 'email', 'gender'], 'string'],
            [['first_name', 'last_name'], 'match', 'pattern' => '/^[A-ZА-Я]/'],
            [['login', 'email'], 'unique', 'on' => 'add'],
            ['login', 'string','min' => 4],
            ['password', 'required', 'on' => 'add'],
            ['password', 'string', 'min' => 6, 'on' => 'add'],
            ['gender', 'in', 'range' => ['Male', 'Female', null]],
            ['email', 'email']
        ]);
    }

    /**
     * Converts date from ISO8601
     *
     * @return date
     */
    public function getFormatedCreatedAt()
    {
        return (date('d-m-Y h:i', strtotime($this->created_at)));
    }
}