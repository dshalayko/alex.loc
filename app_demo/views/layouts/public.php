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
<div class="bg-first">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <ul class="nav nav-pills">
                    <li>
                        <a href="#" title="Телефон"><i class="fa fa-phone"></i> <strong><?= Setting::get('contact_telephone') ?></strong>
                            <span title="<?= Yii::t('app', 'Заказ обратного звонка') ?> " data-url="<?= Url::to(['/callback']) ?>" data-modal-size="modal-sm" class="ajaxModalPopup dotted"><?= Yii::t('app', 'Заказать звонок!') ?></span>
                        </a>               
                    </li>
                    <li>
                        <a href="mailto:<?= Setting::get('contact_email') ?>" title="E-mail"><i class="fa fa-envelope"></i>  <?= Setting::get('contact_email') ?></a>
                    </li>
                    <? if (Setting::get('contact_skype')) { ?>
                        <li>
                            <a href="skype:<?= Setting::get('contact_skype') ?>?call" title="Skype"><i class="fa fa-skype"></i>  <?= Setting::get('contact_skype') ?></a>
                        </li>
                    <? } ?>
                    <li>
                        <a href="/contact"  title="<?= Yii::t('app', 'Время работы') ?>"><i class="fa fa-calendar"></i> <?= Setting::get('contact_openingHours') ?></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-2">
                <div class="pull-right">
                    <ul class="nav nav-pills">
                        <li><a rel="nofollow" href="http://vk.com"><i class="fab fa-vk"></i></a></li>
                        <li><a rel="nofollow" href="http://twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li><a rel="nofollow" href="http://facebook.com"><i class="fab fa-facebook"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row pt-15 pb-15">
        <div class="col-md-6">
            <div class="logo pull-left">
                <a href="/" title="<?= Setting::get('contact_name') ?>">
<!--                    <img src="--><?php //= $appAsset->baseUrl ?><!--/img/logo.png" class="img-responsive" alt="--><?php //= Setting::get('contact_name') ?><!--">-->
                </a>               
            </div>                                        
        </div>
        <div class="col-md-6">
            <div class="pull-right">
                <ul class="nav navbar-nav">
                    <?
                    if (Yii::$app->user->isGuest) {
                        ?>
                        <li><a href="<?= Url::to(['/user/registration']) ?>"><i class="fa fa-user"></i> <?= Yii::t('app', 'Регистрация') ?></a></li>
                        <li><a href="<?= Url::to(['/user/login']) ?>"><i class="fa fa-lock"></i> <?= Yii::t('app', 'Вход') ?></a></li>
                        <?
                    } else {
                        ?>
                        <li><a href="<?= Url::to(['/shopcart/orders']) ?>"><i class="fa fa-list-ul"></i> <?= Yii::t('app', 'Мои данные') ?></a></li>
                        <li><a href="<?= Url::to(['/user/logout']) ?>"><i class="fa fa-lock"></i> <?= Yii::$app->user->identity->email ?> (<?= Yii::t('app', 'Выход') ?>)</a></li>
                        <?
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<?
NavBar::begin();
$menuItems[] = ['label' => Yii::t('app', 'Главная'), 'url' => ['/']];
$menuItems[] = ['label' => Yii::t('app', 'Контакты'), 'url' => ['/contact']];
echo Nav::widget([
    'options' => ['class' => 'navbar-nav'],
    'items' => $menuItems,
]);
?>

<?
NavBar::end();
?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <?=
                    Breadcrumbs::widget([
                        'homeLink' => [
                            'label' => Yii::t('app', 'Главная'),
                            'url' => ['/'],
                        ],
                        'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                            ], ['class' => 'p-0'])
                    ?>
                    <?= Alert::widget() ?>  
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?= $content ?>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="container">
        <br>
        <hr>
        <div class="col-md-4">            
            <div>
                <?= Schema::localBusiness() ?>
            </div>
        </div>   

    </div>
    <div class="container mt-30 mb-60">
        <div class="col-md-4">
            &copy; <?= Setting::get('contact_name') ?>, <?= date('Y') ?>
        </div>   
        <div class="col-md-3">             
        </div>        

    </div>
</footer>
<?= \admin\widgets\ScrollUp::widget(); ?>
<? $this->endContent(); ?>
