<?php

$this->title = 'User Info';

use yii\widgets\LinkPager;
use yii\helpers\Html;

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
    .form-group-mb-15{
        margin-bottom: 15px!important;
    }
    .attention{
        color: red;
        font-weight: bold;
        font-size: 1.6rem;
    }
    .form-cont{
        border:2px solid #dfe1e5;
        border-radius: 10px;
        margin-bottom: 30px;
    }
    .delete_container{
        position: absolute;
        right: 0;
        top: 10px;
        z-index: 1!important;
    }
    .edit_container{
        position: absolute;
        bottom: 10px;
        right: 0;
        z-index: 1!important;
    }
    .hvr{
        margin-bottom: 20px;
    }
    @media( max-width: 1199px ){
        .delete_container{
            position: inherit;
            margin-bottom: 20px;
        }
        .edit_container{
            position: inherit;
            margin: 20px 0 20px 0;
            display: flex;
            justify-content: flex-end;
        }
    }
    .help-block-error{
        color: red;
    }
</style>

<div class="col-md-12 form-horizontal">
    <div class="col-md-8">
        <h1 class="mb-0">User data:</h1>
        <div class="col-md-12">
        <div class="mb-0 pb-0 col-lg-5" style="display: flex">
            <p class="ml-10" style="color:#7b7b7b;">Created at:
                <p style="margin: 0 0 0 5px;"><?=$user->formatedCreatedAt?></p>
            </p>
        </div>
        </div>
        <div class="form-group mb-0 pb-0 col-lg-5">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="userdata-first_name">First name:</label>
                <input type="text" class="form-control" value="<?=$user->first_name?>" readonly></div>
        </div>
        <div class="form-group mb-0 pb-0 pr-0 mr-0 col-lg-5 form-group-mb-15">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="userdata-last_name">Last name:</label>
                <input type="text" class="form-control" value="<?=$user->last_name?>" readonly></div>
        </div>
        <div class="form-group mb-0 pb-0 col-lg-5 form-group-mb-15">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="userdata-login">Login:</label>
                <input type="text" class="form-control" value="<?=$user->login?>" readonly></div>
        </div>
        <div class="form-group mb-0 pb-0 col-lg-5 form-group-mb-15">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="userdata-password">Gender:</label>
                <input type="text" class="form-control" value="<?=$user->gender?>" readonly></div>
        </div>
        <div class="form-group mb-0 pb-0 col-lg-6 form-group-mb-15">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="userdata-email">Email:</label>
                <input type="text" class="form-control" value="<?=$user->email?>" readonly></div>
        </div>
    </div>
</div>
<div class="col-md-12 form-horizontal">
    <div class="col-md-8 hvr">
        <h1 class="col-md-8">User address:</h1>
            <h1><button type="button" class="btn btn-lg btn-success col-md-3 addNewClassBtn">Add new Address</button>
        </h1>
    </div>
    <?php foreach ($addresses as $address): ?>
    <form class="col-md-8 form-cont address-form">
        <div class="delete_container">
            <button type="button" class="btn btn-primary" style="width: 100px;" onclick="deleteAddress(event);">Delete</button>
        </div>
        <input type="hidden" name="user_id" value="<?=$user->id?>">
        <input type="hidden" name="address_id" value="<?= $address->id?>">
        <div class="col-md-12">
        <div class="form-group mb-0 pb-0 col-lg-7 required">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="useraddress-country">Country:
                    <small class="attention">*</small></label>
                <select class="form-control" name="country" aria-required="true">
                    <option value="<?=$address->country?>"><?=$countries[$address->country]?></option>
                    <?php foreach ($countries as $iso => $country_name): ?>
                        <?php if ($iso !== $address->country): ?>
                            <option value="<?=$iso?>"><?=$country_name?></option>
                        <?php endif;?>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="col-lg-12 help_container">
                <p class="help-block help-block-error"></p>
            </div>
        </div>
        <div class="form-group mb-0 pb-0 col-lg-4 required">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="useraddress-postcode">Postcode:
                    <small class="attention">*</small>
                </label>
                <input type="text" class="form-control" name="postcode" value="<?=$address->postcode?>" aria-required="true">
            </div>
            <div class="col-lg-12 help_container">
                <p class="help-block help-block-error "></p>
            </div>
        </div>
        </div>
        <div class="col-md-12">
        <div class="form-group mb-0 pb-0 col-lg-5 required">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="useraddress-city">City:
                    <small class="attention">*</small>
                </label>
                <input type="text" class="form-control" name="city" value="<?=$address->city?>" aria-required="true"></div>
            <div class="col-lg-12 help_container">
                <p class="help-block help-block-error "></p>
            </div>
        </div>
        <div class="form-group mb-0 pb-0 col-lg-5 required">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="useraddress-street">Street:
                    <small class="attention">*</small>
                </label>
                <input type="text" class="form-control" name="street" value="<?=$address->city?>" aria-required="true"></div>
            <div class="col-lg-12 help_container">
                <p class="help-block help-block-error "></p>
            </div>
        </div>
        </div>
        <div class="col-md-12">
        <div class="form-group mb-0 pb-0 col-lg-5 required">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="useraddress-house_number">House number:
                    <small class="attention">*</small>
                </label>
                <input type="text" class="form-control" name="house_number" value="<?=$address->house_number?>" aria-required="true"></div>
            <div class="col-lg-12 help_container">
                <p class="help-block help-block-error "></p>
            </div>
        </div>
        <div class="form-group mb-0 pb-0 col-lg-5">
            <div class="col-lg-12 pr-0">
                <label class="mb-0" for="useraddress-apartment_office_number">Apartment/office number:</label>
                <input type="text" class="form-control" name="apartment_office_number" value="<?=$address->apartment_office_number?>"></div>
            <div class="col-lg-12 help_container">
                <p class="help-block help-block-error "></p>
            </div>
        </div>
        </div>
        <div class="edit_container">
            <button type="button" class="btn btn-primary" onclick="editAddress(event);" style="width: 100px;">Edit</button>
        </div>
        <div class="col-lg-12" style="display: flex;justify-content: center;align-items: center">
            <p class="help-block help-block-error oneAddDell"></p>
        </div>
    </form>
    <?php endforeach; ?>
    <div class="col-lg-12">
        <?= LinkPager::widget([
            'pagination' => $pages,
        ]);?>
    </div>
</div>

<script>
    "use strict"

    let addNewClassBtn = document.querySelector('.addNewClassBtn');
    addNewClassBtn.onclick = function(event){
        event.preventDefault();

        let hvr = document.querySelector('.hvr');
        let form = document.createElement('form');
        form.className = 'col-md-8 form-cont address-form';
        form.innerHTML = createNewForm();

        hvr.after(form);
    }

    const addNewAddress = function(event){
        editAddress(event);
    }

    const editAddress = function(event){
        event.preventDefault();

        let form = event.target.form;
        clearHelpBlockError();

        let userAddress = "userAddress=" + JSON.stringify(getFormData(form));

        let request = new XMLHttpRequest();
        request.open('POST', 'add-address');
        request.setRequestHeader('Accept', 'application/json');
        request.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
        request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setRequestHeader('X-CSRF-Token', document.querySelector('meta[name="csrf-token"]').content);
        request.send(userAddress);

        request.onload = function(){
            if (request.status === 400){
                addErrorMessage(JSON.parse(request.responseText));
            }
        }

        function addErrorMessage(response){
            let error = response.error;

            for (let name in error){
                let error_container = getFieldFromForm(name).offsetParent.nextElementSibling;
                error_container.children[0].innerHTML = error[name];
            }

            function getFieldFromForm(name){
                for (let field of form){
                    if (field.name === name)
                        return (field);
                }
            }
        }

        function clearHelpBlockError(){
            let err_block = form.querySelectorAll('.help-block-error');
            for (let err of err_block){
                err.innerHTML = "";
            }
        }
    }

    const deleteAddress = function(event){
        event.preventDefault();

        let form = event.target.form;
        if (!checkAddressesCount(form))
            return;

        let userAddress = "userAddress=" + JSON.stringify(getFormData(form));

        let request = new XMLHttpRequest();
        request.open('POST', 'delete-address');
        request.setRequestHeader('Accept', 'application/json');
        request.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
        request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setRequestHeader('X-CSRF-Token', document.querySelector('meta[name="csrf-token"]').content);
        request.send(userAddress);

        request.onload = function(){
           if (request.status == 204 || request.status == 422){
               form.remove();
           }
        }
    }

    function checkAddressesCount(form){
        let bool = document.querySelectorAll('.address-form').length === 1 ? false : true;
        if (!bool){
            form.lastElementChild.firstElementChild.innerHTML = "User need to have at least one address.";
        }

        return (bool);
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

    function createNewForm(){
        return ('\
        <div class="delete_container">\
            <button type="button" class="btn btn-primary" style="width: 100px;" onclick="deleteAddress(event);">Delete</button>\
        </div>\
         <input type="hidden" name="user_id" value="<?=$user->id?>">\
        <div class="form-group mb-0 pb-0 col-lg-7 required">\
            <div class="col-lg-12 pr-0">\
                <label class="mb-0" for="useraddress-country">Country:\
                    <small class="attention">*</small></label>\
                <select class="form-control" name="country" aria-required="true">\
                    <option name="<?=null?>"><?=""?></option>\
                    <?php foreach ($countries as $iso => $country_name): ?>\
                            <option value="<?=$iso?>"><?=$country_name?></option>\
                    <?php endforeach; ?>\
                </select>\
            </div>\
            <div class="col-lg-12 help_container">\
                <p class="help-block help-block-error"></p>\
            </div>\
        </div>\
        <div class="form-group mb-0 pb-0 col-lg-4 required">\
            <div class="col-lg-12 pr-0">\
                <label class="mb-0" for="useraddress-postcode">Postcode:\
                    <small class="attention">*</small>\
                </label>\
                <input type="text" class="form-control" name="postcode" aria-required="true">\
            </div>\
            <div class="col-lg-12 help_container">\
                <p class="help-block help-block-error "></p>\
            </div>\
        </div>\
        <div class="form-group mb-0 pb-0 col-lg-5 required">\
            <div class="col-lg-12 pr-0">\
                <label class="mb-0" for="useraddress-city">City:\
                    <small class="attention">*</small>\
                </label>\
                <input type="text" class="form-control" name="city" aria-required="true"></div>\
            <div class="col-lg-12">\
                <p class="help-block help-block-error "></p>\
            </div>\
        </div>\
        <div class="form-group mb-0 pb-0 col-lg-5 required">\
            <div class="col-lg-12 pr-0">\
                <label class="mb-0" for="useraddress-street">Street:\
                    <small class="attention">*</small>\
                </label>\
                <input type="text" class="form-control" name="street" aria-required="true"></div>\
            <div class="col-lg-12 help_container">\
                <p class="help-block help-block-error "></p>\
            </div>\
        </div>\
        <div class="form-group mb-0 pb-0 col-lg-5 required">\
            <div class="col-lg-12 pr-0">\
                <label class="mb-0" for="useraddress-house_number">House number:\
                    <small class="attention">*</small>\
                </label>\
                <input type="text" class="form-control" name="house_number" aria-required="true"></div>\
            <div class="col-lg-12 help_container">\
                <p class="help-block help-block-error "></p>\
            </div>\
        </div>\
        <div class="form-group mb-0 pb-0 col-lg-5">\
            <div class="col-lg-12 pr-0">\
                <label class="mb-0" for="useraddress-apartment_office_number">Apartment/office number:</label>\
                <input type="text" class="form-control" name="apartment_office_number"></div>\
            <div class="col-lg-12">\
                <p class="help-block help-block-error "></p>\
            </div>\
        </div>\
        <div class="edit_container">\
            <button type="button" class="btn btn-primary" onclick="addNewAddress(event);"style="width: 100px;">Add</button>\
        </div>\
        <div class="col-lg-12" style="display: flex;justify-content: center;align-items: center">\
            <p class="help-block help-block-error oneAddDell"></p>\
        </div>'
        );
    }
</script>
