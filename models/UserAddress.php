<?php

namespace app\models;

use Yii;
use yii\db\ActiveRecord;

class UserAddress extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public function getUser()
    {
        return $this->hasOne(UserData::className(), ['id' => 'user_id']);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return ([
            [['postcode', 'country', 'city', 'street', 'house_number'], 'required'],
            [['country', 'city', 'street'], 'string'],
            ['postcode', 'number'],
            [['country'], 'in', 'range' => Countries::getAllIsoName()],
            ['apartment_office_number', 'default', 'value' => null]
        ]);
    }
}