<?php

use yii\db\Migration;

/**
 * Class m191216_112530_user
 */
class m191216_112530_user extends Migration
{
    public function up()
    {
        $this->createTable('user', [
            'id' => $this->primaryKey(),
            'login' => $this->string()->notNull()->unique(),
            'email' => $this->string()->notNull()->unique(),
            'password' => $this->string()->notNull(),
            'first_name' => $this->string()->notNull(),
            'last_name' => $this->string()->notNull(),
            'gender' => $this->string()->defaultValue(null),
            'created_at' => $this->string()
        ], 'ENGINE InnoDB');
    }

    public function down()
    {
        $this->dropTable('users');
    }
}
