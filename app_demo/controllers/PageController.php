<?

namespace app_demo\controllers;

use admin\models\User;
use Yii;

class PageController extends \admin\base\api\Controller
{

    public function actionIndex($slug)
    {
        return $this->render('index', ['slug' => $slug]);
    }

    public function actionUslugi($slug = null)
    {
        if ($slug != null) {
            if ($slug == 'step-two') {
                $model = User::findOne(Yii::$app->user->id);
                    if (is_array(Yii::$app->request->post('User'))) {
                        if (is_array(Yii::$app->request->post('User')['data'])) {
                            $model->data = Yii::$app->request->post('User')['data'];
                            if ($model->save()) {
                                $this->flash('success', Yii::t('admin', 'Заявка успешно отправлена'));
                                return $this->redirect(['uslugi']);
                            }
                        }
                    }
                return $this->render('uslugi/step-two-US1', ['model' => $model]);

            } else
                return $this->render('uslugi/US' . $slug);

        } else {
            return $this->render('uslugi');
        }
    }

}
