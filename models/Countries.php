<?php

namespace app\models;

use yii\db\ActiveRecord;
use \yii\db\Query;
use yii\helpers\ArrayHelper;

class Countries extends ActiveRecord
{
    public static function getAllCountriesName()
    {
        $countries = [];
        foreach (self::find()->each() as $country){
            $countries[$country->iso] = $country->en_country_name;
        }

        return ($countries);
    }

    public static function getAllIsoName()
    {
        $iso = [];
        foreach (self::find()->each() as $country){
            $iso[$country->en_country_name] = $country->iso;
        }

        return ($iso);
    }

    public static function getIso()
    {
        return (self::find()->where(['en_country_name' => $country])->one()->iso);
    }
}