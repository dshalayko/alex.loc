<?

use admin\modules\page\api\Page;
use yii\helpers\Html;
use yii\helpers\Url;


?>
<style>
    .table_us{
        margin-bottom: 5px;
    }
</style>
<h1>Заполнить данные распределения</h1>


<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="row">
                <div class="col-md-12">
                    <h3><?= Yii::t('admin', 'Заполнить данные') ?></h3>
                    <hr>
                    <?= Html::beginForm(Url::to(['/user/data', 'id' => $model->id]), 'post') ?>
                    <? $model->renderDataForm() ?>

                    <?= Html::submitButton(Yii::t('admin', 'Сохранить дополнительные данные'), ['class' => 'btn btn-primary']) ?>
                    <?= Html::endForm() ?>
                </div>
            </div>
        </div>
    </div>
</div>






