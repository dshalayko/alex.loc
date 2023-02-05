<?php

use yii\helpers\Url; ?>
<style>
    .shap{
        display: flex;
        justify-content: space-around;
    }
</style>

<div class="container">
    <div class="row">
        <h1>
            Добро пожаловать <?= $model->data['name'] ?> <?= $model->data['surname'] ?> <?= $model->data['surname2'] ?>
        </h1>
    </div>
<!--    <div class="row shap">-->
<!--        <div class="col-2">#</div>-->
<!--        <div class="col-3">Услуга</div>-->
<!--        <div class="col-3">Дата обращения</div>-->
<!--        <div class="col-3">Цель трудоустройства</div>-->
<!--        <div class="col-3">Прикрепленный образец</div>-->
<!--        <div class="col-3">Статус</div>-->
<!--        <div class="col-3">Стоимость</div>-->
<!--        <div class="col-3">Дата получения</div>-->
<!--    </div>-->
<!--    <div class="row">-->
<!--        <div class="col-1">1</div>-->
<!--        <div class="col-3">Заказать гарантийное письмо/письма</div>-->
<!--        <div class="col-3">--><?//$model->updated_at?><!--</div>-->
<!--        <div class="col-3">Цель трудоустройства</div>-->
<!--        <div class="col-3">Прикрепленный образец</div>-->
<!--        <div class="col-3">Статус</div>-->
<!--        <div class="col-3">Стоимость</div>-->
<!--        <div class="col-3">Дата получения</div>-->
<!--    </div>-->
    <div class="row">
        <div class="col-sm-6">
            Имя: <?= $model->data['name'] ?> <br>
            Фамилия: <?= $model->data['surname'] ?><br>
            Отчетсво: <?= $model->data['surname2'] ?><br>
            Телефон: <?= $model->data['phone'] ?><br>
            Наименование учереждения образорвания: <?= $model->data['nameUO'] ?><br>
            Наименование Факультета: <?= $model->data['nameFK'] ?><br>
            Название орагнизации, из которой хочешь уволиться: <?= $model->data['addressORG1'] ?><br>
            Полностью ФИО и должность руководителя: <?= $model->data['nameRUK'] ?><br>
            Адрес: <?= $model->data['address'] ?><br>
            email: <?= $model->email ?><br>
        </div>
        <div class="col-sm-6">
            <a href="<?= Url::to(['/user/update', 'id' => Yii::$app->user->id]) ?>"
               class="btn btn-success mt-5">Заполнить данные</a>
        </div>
    </div>

</div>

