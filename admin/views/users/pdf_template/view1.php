<?php
$request = Yii::$app->request;
$request->hostInfo;

$this->title = Yii::t('admin', 'Документы пользователя '.$model->data['name'].' '.  $model->data['surname']);

?>

    <div class="row">
        <div class="col-md-12">
            <a href=" <?= $request->hostInfo . '/' . $path ?>">Контракт</a>

        </div>
    </div>

