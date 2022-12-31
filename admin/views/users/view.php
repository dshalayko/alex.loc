<?

$this->title = Yii::t('admin', 'Данные пользователя ') . $model->data['name'];
?>

<div class="row">
    <div class="col-sm-3">
        <?= $model->email ?>
        <?= $model->data['name'] ?>
    </div>
</div>
