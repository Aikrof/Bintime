<?php

use yii\widgets\LinkPager;
use yii\helpers\Html;

$this->title = 'Users';
?>

<style>
    .card{ background-color: #fff; border: 1px solid transparent; border-radius: 6px; }
    .card > .card-link{ color: #333; }
    .card > .card-link:hover{  text-decoration: none; }
    .card > .card-link .card-img img{ border-radius: 6px 6px 0 0; }
    .card .card-img{ position: relative; padding: 0; display: table; }
    .card .card-img .card-caption{
        position: absolute;
        right: 0;
        bottom: 16px;
        left: 0;
    }
    .card .card-body{ display: table; width: 100%; padding: 12px; }
    .card .card-header{ border-radius: 6px 6px 0 0; padding: 8px; }
    .card .card-footer{ border-radius: 0 0 6px 6px; padding: 8px; }
    .card .card-left{ position: relative; float: left; padding: 0 0 8px 0; }
    .card .card-right{ position: relative; float: left; padding: 8px 0 0 0; }
    .card .card-body h1:first-child,
    .card .card-body h2:first-child,
    .card .card-body h3:first-child,
    .card .card-body h4:first-child,
    .card .card-body .h1,
    .card .card-body .h2,
    .card .card-body .h3,
    .card .card-body .h4{ margin-top: 0; }
    .card .card-body .heading{ display: block;  }
    .card .card-body .heading:last-child{ margin-bottom: 0; }

    .card .card-body .lead{ text-align: center; }

    @media( min-width: 768px ){
        .card .card-left{ float: left; padding: 0 8px 0 0; }
        .card .card-right{ float: left; padding: 0 0 0 8px; }

        .card .card-4-8 .card-left{ width: 33.33333333%; }
        .card .card-4-8 .card-right{ width: 66.66666667%; }

        .card .card-5-7 .card-left{ width: 41.66666667%; }
        .card .card-5-7 .card-right{ width: 58.33333333%; }

        .card .card-6-6 .card-left{ width: 50%; }
        .card .card-6-6 .card-right{ width: 50%; }

        .card .card-7-5 .card-left{ width: 58.33333333%; }
        .card .card-7-5 .card-right{ width: 41.66666667%; }

        .card .card-8-4 .card-left{ width: 66.66666667%; }
        .card .card-8-4 .card-right{ width: 33.33333333%; }
    }

    /* -- default theme ------ */
    .card-default{
        border-color: #ddd;
        background-color: #fff;
        margin-bottom: 24px;
    }
    .card-default > .card-header > .col > input {font-size: 1.7rem; margin: 0;}
    .card-default > .card-header,
    .card-default > .card-footer{ color: #333; background-color: #ddd; }
    .card-default > .card-header{ border-bottom: 1px solid #ddd; padding: 8px; }
    .card-default > .card-footer{ border-top: 1px solid #ddd; padding: 8px; }
    .card-default > .card-body{  }
    .card-default > .card-img:first-child img{ border-radius: 6px 6px 0 0; }
    .card-default > .card-left{ padding-right: 4px; }
    .card-default > .card-right{ padding-left: 4px; }
    .card-default p:last-child{ margin-bottom: 0; }
    .card-default .card-caption { color: #fff; text-align: center; text-transform: uppercase; }

    input[type="text"]:focus,
    input[type="email"]:focus,
    select:focus{
        border: 2px solid #1a73e8!important;
        box-shadow: none!important;
    }
    .error_message{
        color: red;
        margin: 0 0 15px 10px;
    }
</style>

<div class="container-fluid"><h1 class="col-lg-12" style="font-weight: bold">Users:</h1></div>
<div class="container-fluid" style="display: flex;justify-content: center">
    <div class="col-lg-8">
        <?php foreach($users as $user): ?>
            <form class="card card-default">
                <input type="hidden" name="id" value="<?=$user->id?>">
                <div class="card-header col-md-12">
                    <div class="col-md-5">
                    <div class="input-group input-group">
                        <span class="input-group-addon">
                            <span aria-hidden="true">Login:</span>
                        </span>
                        <input type="text" class="form-control"  name="login" value="<?=$user->login?>">
                    </div>
                    </div>
                    <div class="col-md-4">
                    <div style="display: flex;">
                        <p style="color:#7b7b7b;margin: 0;">Created at:
                            <p style="margin: 0 0 0 5px;"><?=$user->formatedCreatedAt?></p>
                        </p>
                    </div>
                    </div>
                    <div class="col-md-3" style="display: flex;justify-content: flex-end">
                        <button class="btn btn-primary btn_stl" onclick="deleteUser(event)">Delete</button>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                    <div class="col-md-12" style="margin-left: 0;margin-bottom: 10px;padding-left: 0;">
                        <div class="col-md-6" style="margin-bottom: 5px;">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span aria-hidden="true">First name:</span>
                                </span>
                                <input type="text" class="form-control"  name="first_name" value="<?=$user->first_name?>">
                            </div>
                        </div>
                        <div class="col-md-6" style="margin-bottom: 5px;">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span aria-hidden="true">Last name:</span>
                                </span>
                                <input type="text" class="form-control"  name="last_name" value="<?=$user->last_name?>">
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-md-10" style="margin-bottom: 10px;">
                        <div class="input-group" style="margin-bottom: 5px;">
                                <span class="input-group-addon">
                                    <span aria-hidden="true">Email:</span>
                                </span>
                            <input type="email" class="form-control"  name="email" value="<?=$user->email?>">
                        </div>
                    </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5" style="margin-bottom: 10px;">
                            <div class="input-group" style="margin-bottom: 5px;">
                                <span class="input-group-addon">
                                    <span aria-hidden="true">Gender:</span>
                                </span>
                                <select class="form-control" name="gender" aria-invalid="false">
                                    <?php if (empty($user->gender)):?>
                                        <option value='null'></option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    <?php else:?>
                                        <?php $gender = ($user->gender === 'Male' ? ['Male', 'Female'] : ['Female', 'Male']);?>
                                        <option value="<?=$gender[0]?>"><?=$gender[0]?></option>
                                        <option value="<?=$gender[1]?>"><?=$gender[1]?></option>
                                    <?php endif; ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <div class="col-md-12" style="display: flex;justify-content: space-between">
                        <p style="margin-bottom: 15px;font-weight: bold"><a href="<?='user/' . $user->login?>">More info...</a></p>
                        <button class="btn btn-primary btn_stl changeBtn" onclick="editProfile(event)">Change</button>
                    </div>
                    </div>
                </div>
                <div class="row err_container">
                    <div class="col-md-12 err"></div>
                </div>
            </form>
        <?php endforeach; ?>

        <?= LinkPager::widget([
            'pagination' => $pages,
        ]);?>
    </div>
</div>
<script>
    "use strict"

    const editProfile = function(event){
        event.preventDefault();

        let form = event.target.form;
        let err = form.querySelector('.err_container > .err');
        err.innerHTML = '';

        let userData = "userData=" + JSON.stringify(getFormData(form));

        let request = new XMLHttpRequest();
        request.open('POST', 'user/update-user');
        request.setRequestHeader('Accept', 'application/json');
        request.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
        request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setRequestHeader('X-CSRF-Token', document.querySelector('meta[name="csrf-token"]').content);
        request.send(userData);

        request.onload = function(){
            if (request.status == 400){
                addErrorMessage(JSON.parse(request.responseText));
            }
            else if (request.status == 422){
               let response = JSON.parse(request.responseText);
                err.innerHTML = '<p class="error_message">'+response.error+'</p>'
            }
        }

        function addErrorMessage(response){
            let error = response.error;

            for (let i in error){
                err.innerHTML += '<p class="error_message">'+error[i][0]+'</p>';
            }
        }
    }

    const deleteUser = function(event){
        event.preventDefault();

        let form = event.target.form;
        let err = form.querySelector('.err_container > .err');
        err.innerHTML = '';

        let userData = "userData=" + JSON.stringify(getFormData(form));

        let request = new XMLHttpRequest();
        request.open('POST', 'user/delete-user');
        request.setRequestHeader('Accept', 'application/json');
        request.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
        request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setRequestHeader('X-CSRF-Token', document.querySelector('meta[name="csrf-token"]').content);
        request.send(userData);

        request.onload = function(){
            if (request.status === 204){
                form.remove();
            }
            else if (request.status == 422){
                let response = JSON.parse(request.responseText);
                err.innerHTML = '<p class="error_message">'+response.error+'</p>'
            }
        }
    }

    function getFormData(form){
        let data = {};

        for (let field of form){
            if (field.localName === 'input' || field.localName === 'select') {
                data[field.name] = field.value === 'null' ? null : field.value;
            }
        }

        return (data);
    }
</script>