<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'User Form';
?>
<style>
    .test{
        display: flex;
        justify-content: flex-start;
        justify-content: center;
    }
    .mb-0{
        margin-bottom: 0!important;
    }
    .pr-0{
        margin-right: 0!important;
    }
    textarea:focus,
    input[type="text"]:focus,
    input[type="password"]:focus,
    input[type="datetime"]:focus,
    input[type="datetime-local"]:focus,
    input[type="date"]:focus,
    input[type="month"]:focus,
    input[type="time"]:focus,
    input[type="week"]:focus,
    input[type="number"]:focus,
    input[type="email"]:focus,
    input[type="url"]:focus,
    input[type="search"]:focus,
    input[type="tel"]:focus,
    input[type="color"]:focus,
    select:focus{
        border: 2px solid #1a73e8!important;
        box-shadow: none!important;
    }
    .d-flex-w-end{
        display: flex;
        justify-content: flex-end;
    }
    .btn_stl{
        width: 100px;
        margin-top: 10px;
    }
    .btn_stl:hover{
        background-color: #1a73e8;
        border-color: #1a73e8!important;
        box-shadow: none!important;
    }
    .attention{
        color: red;
        font-weight: bold;
        font-size: 1.6rem;
    }
</style>
<div class="site-login">
        <?php $form = ActiveForm::begin([
            'method' => 'POST',
            'id' => 'userData',
            'layout' => 'horizontal',
            'fieldConfig' => [
                'template' => "<div class=\"col-lg-12 pr-0\">{label}\n{input}</div>\n<div class=\"col-lg-12\">{error}</div>",
                'labelOptions' => ['class' => 'mb-0'],
            ],
            'options' =>[
                'class' => 'col-md-12',
            ]
        ]);?>
    <div class="col-md-8">
        <h1>User data:</h1>
        <div class="col-md-12">
        <?= $form->field($userData, 'first_name', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-5']])
            ->label('First name: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'First name', 'class' => 'form-control']);
        ?>
        <?= $form->field($userData, 'last_name', ['options' => ['class' => 'form-group mb-0 pb-0 pr-0 mr-0 col-lg-5']])
            ->label('Last name: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'Last name', 'class' => 'form-control']);
        ?>
        </div>
        <div class="col-md-12">
        <?= $form->field($userData,'login', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-5']])
            ->label('Login: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'login', 'class' => 'form-control']);
        ?>
        <?= $form->field($userData, 'password', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-5']])
            ->label('Password: <small class="attention">*</small>')
            ->passwordInput(['placeholder' => 'Password', 'class' => 'form-control']);
        ?>
        </div>
        <div class="col-md-12">
        <?= $form->field($userData, 'email', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-6 a']])
            ->input('email')
            ->label('Email: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'Email', 'class' => 'form-control']);
        ?>
        <?= $form->field($userData, 'gender', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-4']])
            ->label('Gender:')
            ->dropDownList([null => 'Select gender', 'Male' => 'Male', 'Female' => 'Female'], ['options' => [0 => ['disabled' => true, 'selected'=>true]],'class' => 'form-control'])
        ?>
        </div>
    </div>
    <div class="col-md-8">
        <h1>User address:</h1>
        <div class="col-md-12">
        <?= $form->field($userAddress, 'country', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-7']])
            ->label('Country: <small class="attention">*</small>')
            ->dropDownList(array_merge(['Select your country'], $countries), ['options' => [0 => ['disabled' => true, 'selected'=>true]],'class' => 'form-control'])
        ?>
        <?= $form->field($userAddress, 'postcode', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-3']])
            ->label('Postcode: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'postcode', 'class' => 'form-control']);
        ?>
        </div>
        <div class="col-md-12">
        <?= $form->field($userAddress, 'city', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-5']])
            ->label('City: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'City', 'class' => 'form-control']);
        ?>
        <?= $form->field($userAddress, 'street', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-5']])
            ->label('Street: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'Street', 'class' => 'form-control']);
        ?>
        </div>
        <div class="col-md-12">
        <?= $form->field($userAddress, 'house_number', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-5']])
            ->label('House number: <small class="attention">*</small>')
            ->textInput(['placeholder' => 'House number', 'class' => 'form-control']);
        ?>
        <?= $form->field($userAddress, 'apartment_office_number', ['options' => ['class' => 'form-group mb-0 pb-0 col-lg-5']])
            ->label('Apartment/office number:')
            ->textInput(['placeholder' => 'Apartment/office number', 'class' => 'form-control']);
        ?>
        </div>
    </div>

    <div class="col-md-8">
        <div class="col-lg-9 d-flex-w-end">
            <?= Html::submitButton('Add', ['class' => 'btn btn-primary btn_stl']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>


</script>