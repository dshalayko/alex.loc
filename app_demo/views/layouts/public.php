<?
/* @var $this \yii\web\View */
/* @var $content string */

use admin\helpers\Schema;
use admin\models\Setting;
use admin\widgets\Alert;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;

$appAsset = Yii::$app->assetManager->getBundle('app_demo\assets\AppAsset');
?>

<? $this->beginContent('@admin/views/layouts/base.php'); ?>
<!--<div class="container p-15">-->
<!--    --><?//
//    if (Yii::$app->user->isGuest) {
//        ?>
<!--        <a href="--><?//= Url::to(['/user/registration']) ?><!--"><i class="fa fa-user"></i> --><?//= Yii::t('app', 'Регистрация') ?><!--</a>-->
<!--        <a href="--><?//= Url::to(['/user/login']) ?><!--"><i class="fa fa-lock"></i> --><?//= Yii::t('app', 'Вход') ?><!--</a>-->
<!--        --><?//
//    } else {
//        ?>
<!--        <a href="--><?//=Url::to(['/user/view', 'id' => Yii::$app->user->id]) ?><!--"><i class="fa fa-list-ul"></i> --><?//= Yii::t('app', 'Личный кабинет') ?><!--</a>-->
<!--        <a href="--><?//= Url::to(['/user/logout']) ?><!--"><i class="fa fa-lock"></i> --><?//= Yii::$app->user->identity->email ?><!-- (--><?//= Yii::t('app', 'Выход') ?><!--)</a>-->
<!--        --><?//
//    }
//    ?>
<!--</div>-->
<?//
//NavBar::begin();
//$menuItems[] = ['label' => Yii::t('app', 'Главная'), 'url' => ['/']];
//$menuItems[] = ['label' => Yii::t('app', 'Контакты'), 'url' => ['/contact']];
//$menuItems[] = ['label' => Yii::t('app', 'Новости'), 'url' => ['/news']];
//$menuItems[] = ['label' => Yii::t('app', 'Услуги'), 'url' => ['page/uslugi']];
//$menuItems[] = ['label' => Yii::t('app', 'Реферальная программа'), 'url' => ['/referal']];
//echo Nav::widget([
//    'options' => ['class' => 'navbar-nav'],
//    'items' => $menuItems,
//]);
//?>
<!---->
<?//
//NavBar::end();
?>
<div class="container" style="display: flex;
    align-content: space-around;
    justify-content: space-around;
    flex-wrap: nowrap;
    align-items: center;
    flex-direction: column;
    height: 100vh;">
    <div class="row">
        <div class="row">
            <?= Alert::widget() ?>
            <div class="col-md-12">
                <?= $content ?>
            </div>
        </div>
    </div>
</div>
<!--<footer class="footer">-->
<!--    <div class="container">-->
<!--        <br>-->
<!--        <hr>-->
<!--        <div class="col-md-4">            -->
<!--            <div>-->
<!--                --><?//= Schema::localBusiness() ?>
<!--            </div>-->
<!--        </div>   -->
<!---->
<!--    </div>-->
<!--    <div class="container mt-30 mb-60">-->
<!--        <div class="col-md-4">-->
<!--            &copy; --><?//= Setting::get('contact_name') ?><!--, --><?//= date('Y') ?>
<!--        </div>   -->
<!--        <div class="col-md-3">             -->
<!--        </div>        -->
<!---->
<!--    </div>-->
<!--</footer>-->
<?= \admin\widgets\ScrollUp::widget(); ?>
<? $this->endContent(); ?>
