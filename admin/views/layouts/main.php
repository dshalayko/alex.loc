<?

use yii\helpers\Html;
use yii\helpers\Url;
use admin\assets\AdminAsset;
use admin\helpers\AjaxModalPopup;
use admin\widgets\Alert;

$adminAsset = AdminAsset::register($this);

$moduleName = $this->context->module->id;
?>
<? $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>        
        <meta charset="<?= Yii::$app->charset ?>">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <meta content="<?= Html::encode($this->params['description']) ?>" name="description">
        <meta content="<?= Html::encode($this->params['keywords']) ?>" name="keywords">
        <link rel="shortcut icon" href="<?= $adminAsset->baseUrl ?>/favicon.ico" type="image/x-icon">
        <link rel="icon" href="<?= $adminAsset->baseUrl ?>/favicon.ico" type="image/x-icon">        
        <? $this->head() ?>
    </head>
    <body class="hold-transition skin-blue sidebar-mini <? if (Yii::$app->getSession()->has('sidebar_collapse')) { ?>sidebar-collapse<? } ?>">
        <? $this->beginBody() ?>
        <div class="wrapper">
            <header class="main-header">
                <a href="/admin" class="logo">
                    <span class="logo-mini"><i class="fa fa-cogs"></i></span>
                    <span class="logo-lg"><i class="fa fa-cogs"></i> <?= \admin\AdminModule::NAME ?></span>
                </a>

                <nav class="navbar navbar-static-top">
                    <a href="javascript:void(0);" class="sidebar-toggle  fa fa-bars" data-toggle="offcanvas" role="button">
                        <span class="sr-only"> <?= Yii::t('admin', 'Свернуть/Развернуть') ?></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav"> 
                            <li><a href="<?= Url::to(['/admin/user/logout']) ?>">
                                    <?=
                                    Yii::t('admin', 'Выход ({username})', [
                                        'username' => Yii::$app->user->identity->email,
                                    ])
                                    ?>
                                </a>
                            </li>  
                            <li>
                                <a href="<?= Url::to(['/']) ?>" class="pull-left" target="_blank"><i class="fa fa-home"></i> <?= Yii::t('admin', 'Открыть сайт') ?></a>
                            </li>                          
                        </ul>
                    </div>
                </nav>
            </header>
            <aside class="main-sidebar">
                <section class="sidebar">

                    <ul class="sidebar-menu">
<!--                        <li class="header text-uppercase">--><?php //= Yii::t('admin', 'Модули') ?><!--</li>-->
<!--                        --><?// foreach (Yii::$app->getModule('admin')->activeModules as $module) { ?>
<!---->
<!--                            --><?//
//                                //Проверяем права по AuthManager
//                                if (!Yii::$app->user->can('admin/' . $module->name)) {
//                                    continue;
//                                }
//                            ?>
<!--                            <li class="treeview --><?php //= ($moduleName == $module->name ? 'active' : '') ?><!--">-->
<!--                                <a href="--><?php //= Url::to(["/admin/$module->name"]) ?><!--">-->
<!--                                    --><?// if ($module->icon != '') : ?>
<!--                                        <i class="fa fa---><?php //= $module->icon ?><!--"></i>-->
<!--                                    --><?// endif; ?>
<!--                                    <span> --><?php //= $module->title ?><!--</span> -->
<!--                                    --><?// if ($module->notice > 0 || is_array($module->settings['__submenu_module'])) : ?>
<!--                                        <span class="pull-right-container">-->
<!--                                            --><?// if ($module->notice > 0) : ?>
<!--                                                <small class="label pull-right bg-green">--><?php //= $module->notice ?><!--</small>-->
<!--                                            --><?// endif; ?>
<!--                                            --><?// if (is_array($module->settings['__submenu_module'])) : ?>
<!--                                                <i class="fa fa-angle-left pull-right"></i>-->
<!--                                            --><?// endif; ?>
<!--                                        </span>-->
<!--                                    --><?// endif; ?>
<!--                                </a>-->
<!--                                --><?//
//                                if (is_array($module->settings['__submenu_module'])) {
//                                    ?>
<!--                                    <ul class="treeview-menu">-->
<!--                                        --><?//
//                                        foreach ($module->settings['__submenu_module'] as $submenu) {
//                                            ?>
<!--                                            <li class="--><?php //= (($moduleName == $module->name && $this->context->id == $submenu['id']) ? 'active' : '') ?><!--"><a href="--><?php //= $submenu['url'] ?><!--"><i class="fa fa-circle"></i>--><?php //= $submenu['label'] ?><!--</a></li> -->
<!--                                            --><?//
//                                        }
//                                        ?>
<!--                                    </ul>-->
<!--                                --><?// } ?>
<!--                            </li>-->
<!--                        --><?// } ?><!--   -->
                        <? if (Yii::$app->user->can('SuperAdmin')) { ?>
                            <li class="header"><?= Yii::t('admin', 'СИСТЕМА') ?></li>                          
<!--                            <li class="--><?php //= ($moduleName == 'admin' && $this->context->id == 'modules') ? 'active' : '' ?><!--">-->
<!--                                <a href="--><?php //= Url::to(['/admin/modules']) ?><!--">-->
<!--                                    <i class="fa fa-th-large"></i>-->
<!--                                    <span> --><?php //= Yii::t('admin', 'Модули') ?><!--</span> -->
<!--                                </a>-->
<!--                            </li>                         -->

                            <li class="<?= ($moduleName == 'admin' && ($this->context->id == 'rbac' || $this->context->id == 'user')) ? 'active' : '' ?>">
                            <li class="<?= (($moduleName == 'admin' && $this->context->id == 'user') ? 'active' : '') ?>"><a href="<?= Url::to(['/admin/users']) ?>"><i class="fa fa-users"></i><?= Yii::t('admin', 'Пользователи') ?></a></li>
                            <li class="<?= (($moduleName == 'admin' && $this->context->id == 'rbac' && $this->context->action->id == 'role') ? 'active' : '') ?>"><a href="<?= Url::to(['/admin/rbac/role']) ?>"><i class="fa fa-circle"></i><?= Yii::t('admin', 'Роли пользователей') ?></a></li>
                            <li class="<?= (($moduleName == 'admin' && $this->context->id == 'rbac' && $this->context->action->id == 'permission') ? 'active' : '') ?>"><a href="<?= Url::to(['/admin/rbac/permission']) ?>"><i class="fa fa-circle"></i><?= Yii::t('admin', 'Разрешения пользователей') ?></a></li>
                            <li class="<?= ($moduleName == 'admin' && $this->context->id == 'settings') ? 'active' : '' ?>">
                                <a href="<?= Url::to(['/admin/settings']) ?>">
                                    <i class="fa fa-cog"></i>
                                    <span> <?= Yii::t('admin', 'Настройки') ?></span>
                                </a>
                            </li>
                            <li class="<?= ($moduleName == 'admin' && $this->context->id == 'system') ? 'active' : '' ?>">
                                <a href="<?= Url::to(['/admin/system']) ?>">
                                    <i class="fa fa-hdd"></i>
                                    <span> <?= Yii::t('admin', 'Система') ?></span> 
                                </a>
                            </li>
                            <li class="<?= ($moduleName == 'admin' && $this->context->id == 'logs') ? 'active' : '' ?>">
                                <a href="<?= Url::to(['/admin/logs']) ?>">
                                    <i class="fa fa-align-justify"></i>
                                    <span> <?= Yii::t('admin', 'Логи') ?></span> 
                                </a>
                            </li>

                        <? } ?>
                    </ul>
                </section>
            </aside>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>
                        <?= Html::encode($this->title) ?>
                    </h1>                      
                </section>
                <section class="content">
                    <div class="row">
                        <div class="col-sm-12">
                            <?= Alert::widget() ?> 
                        </div>
                    </div>                    
                    <div class="row">
                        <div class="col-sm-12">
                            <?
                            if (isset($this->params['complex_page'])) {
                                ?>
                                <?= $content ?>
                                <?
                            } else {
                                ?>
                                <div class="box">
                                    <div class="box-body">
                                        <?= $content ?>
                                    </div>
                                </div>
                                <?
                            }
                            ?>
                        </div>
                    </div>                    
                </section>               
            </div>
            <footer class="main-footer">                
                 <?= date('Y') ?>  v<?= \admin\AdminModule::VERSION ?>
            </footer>
        </div>
        <? $this->endBody() ?>
        <? AjaxModalPopup::renderModal() ?>
        <?= \admin\widgets\Counters::widget(); ?>
    </body>
</html>
<? $this->endPage() ?>
