<?

namespace app_demo\controllers;

class PageController extends \admin\base\api\Controller { 

    public function actionIndex($slug) {
        return $this->render('index',['slug'=>$slug]);
    }

    public function actionPrice()
    {
        return $this->render('price');

    }

}
