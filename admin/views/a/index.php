<?

use admin\models\Setting;

$this->title = Yii::t('admin', 'Панель управления') . ' - ' . Setting::get('contact_name');
$appAsset = Yii::$app->assetManager->getBundle('admin\assets\AdminAsset');
?>
<div class="row pt-30 pb-20">       
    <div class="col-md-12 text-center">
        <div class="logo">

        </div> 
        <br>
        <h4><?= Yii::t('admin', 'Панель управления') . ' - ' . Setting::get('contact_name') ?></h4>
        <br>
        <br>
        <?= Yii::t('admin', 'Версия') ?>: <b><?= Setting::get('admin_version') ?></b>
    </div>        
</div>

