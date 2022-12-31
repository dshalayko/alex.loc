<?

use yii\helpers\Html;
use yii\helpers\Url;
use admin\widgets\Menu;
use admin\modules\catalog\api\Catalog;
use admin\modules\page\api\Page;
use admin\modules\news\api\News;
use admin\modules\carousel\api\Slick;
use admin\modules\block\api\Block;

$page = Page::get('page-main');

$this->title = $page->seo('title');
$this->params['description'] = $page->seo('description');
$this->params['keywords'] = $page->seo('keywords');
?>

<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-10">
                <ul class="list-unstyled">
                    <? foreach (News::last(4) as $news) { ?>
                        <li>      
                            <div class="row">
                                <div class="col-md-2"><span class="text-nowrap"><i class="fa fa-clock-o"></i> <?= $news->date ?></span></div>
                                <div class="col-md-10">
                                    <a href="<?= Url::to(['/news', 'slug' => $news->slug]) ?>"><?= $news->title ?></a>
                                </div>
                            </div>
                        </li>
                    <? } ?>
                </ul>
            </div>
            <div class="col-md-2 text-right">
                <a href="<?= Url::to(['/news']) ?>"><?= Yii::t('app','Все новости') ?><i class="fa fa-fw fa-chevron-down"></i></a>
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-md-12 text-justify">
                <p><?= Block::get('public-index-welcome')->text ?></p>
            </div>
        </div>
        <div class="row text-justify">
            <div class="col-md-12">
                <h1><?= $page->seo('h1') ?></h1>
                <p><?= $page->text ?></p>
            </div>
        </div>
    </div>
</div>