<?

use admin\modules\block\api\Block;
use admin\modules\page\api\Page;
use yii\helpers\Url;

$page = Page::get('page-main');

$this->title = $page->seo('title');
$this->params['description'] = $page->seo('description');
$this->params['keywords'] = $page->seo('keywords');
?>

            <?
            if (Yii::$app->user->isGuest) {
                ?>
                <a href="<?= Url::to(['/user/registration']) ?>"><i
                            class="fa fa-user"></i> <?= Yii::t('app', 'Регистрация') ?></a>
                <a href="<?= Url::to(['/user/login']) ?>"><i class="fa fa-lock"></i> <?= Yii::t('app', 'Вход') ?></a>
                <?
            } else {
                ?>
                <a href="<?= Url::to(['/user/view', 'id' => Yii::$app->user->id]) ?>"><i
                            class="fa fa-list-ul"></i> <?= Yii::t('app', 'Личный кабинет') ?></a>
                <br>
                <a class="btn btn-danger" href="<?= Url::to(['/user/update', 'id' => Yii::$app->user->id]) ?>">
                    <?= Yii::t('app', 'Заполнить данные') ?></a>

                <?
            }
            ?>
