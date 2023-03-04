<?php

use yii\helpers\Html;
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

            <?php
            foreach ($model->getDataSchema() as $key => $param) {
                echo '<label class="control-label">' .  $param['title'] . '</label>:   '. $model->data[$key].'<br>';
            }
            ?>

        </div>
        <div class="col-sm-6">
            <a href="<?= Url::to(['/user/update', 'id' => Yii::$app->user->id]) ?>"
               class="btn btn-success mt-5">Заполнить данные</a>
        </div>
    </div>

</div>

