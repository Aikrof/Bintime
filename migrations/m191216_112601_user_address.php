<?php

use yii\db\Migration;

/**
 * Class m191216_112601_user_address
 */
class m191216_112601_user_address extends Migration
{
    public function up()
    {
        $this->createTable('user_address', [
            'id' => $this->primaryKey(),
            'user_id' => $this->integer()->notNull(),
            'postcode' => $this->string()->notNull(),
            'country' => $this->string(2)->notNull(),
            'city' => $this->string()->notNull(),
            'street' => $this->string()->notNull(),
            'house_number' => $this->string()->notNull(),
            'apartment_office_number' => $this->string()->defaultValue(null),
        ], 'ENGINE InnoDB');

        $this->addForeignKey(
            'address_to_user',
            'user_address',
            'user_id',
            'user',
            'id',
            'CASCADE'
        );
    }

    public function down()
    {
        echo "m191216_112601_user_address cannot be reverted.\n";

        return false;
    }

}
