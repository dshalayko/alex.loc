<?php

use yii\helpers\Url; ?>
<div class="container">
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
            <a href="<?=Url::to(['/user/update', 'id' => Yii::$app->user->id]) ?>"
               class="btn btn-success mt-5">Заполнить данные</a>
        </div>
    </div>
</div>

