<?

$this->title = Yii::t('admin', 'Данные пользователя ') . $model->data['FIO-vin-pad'];
?>

<div class="row">
    <div class="col-sm-6">
        <?php
        foreach ($model->getDataSchema() as $key => $param) {
            echo '<label class="control-label">' .  $param['title'] . '</label>:   '. $model->data[$key].'<br>';
        }
        ?>
    </div>
</div>
