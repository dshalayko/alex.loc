<?

use admin\modules\block\api\Block;
use admin\modules\page\api\Page;

$page = Page::get('page-main');

$this->title = $page->seo('title');
$this->params['description'] = $page->seo('description');
$this->params['keywords'] = $page->seo('keywords');
?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="row text-justify">
                <div class="col-md-12">
                    <h1><?= $page->seo('h1') ?></h1>
                    <p><?= $page->text ?></p>
                </div>
            </div>
        </div>
    </div>
</div>
