<?

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
?>
<? $form = ActiveForm::begin(['enableAjaxValidation' => true]); ?>
<?= $form->field($model, 'email')->textInput($this->context->action->id === 'edit' ? ['disabled' => 'disabled'] : []) ?>
<? ActiveForm::end(); ?>

<div class="row">
    <div class="col-md-12">        
        <h3><?= Yii::t('admin', 'Дополнительные данные пользователя') ?></h3>
        <hr>            
        <?= Html::beginForm(Url::to(['/admin/users/data', 'id' => $model->id]), 'post') ?>
        <? $model->renderDataForm()?>
        
        <?= Html::submitButton(Yii::t('admin', 'Сохранить дополнительные данные'), ['class' => 'btn btn-primary']) ?>
        <?= Html::endForm() ?>            
    </div>
</div>