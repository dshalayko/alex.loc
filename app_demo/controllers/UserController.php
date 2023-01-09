<?

namespace app_demo\controllers;

use admin\models\User;
use Yii;

class UserController extends \admin\controllers\api\UserController
{
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => User::findOne($id),
        ]);
    }

    public function actionUpdate($id)
    {
        return $this->render('update', [
            'model' => User::findOne($id),
        ]);
    }

    public function actionData($id)
    {

        $model = User::findOne($id);

        if ($model === null) {
            $this->flash('error', Yii::t('admin', 'Запись не найдена'));
            return $this->redirect(['/user/view', 'id' => $model->id]);
        }

        if (is_array(Yii::$app->request->post('User'))) {
            if (is_array(Yii::$app->request->post('User')['data'])) {
                $model->data = Yii::$app->request->post('User')['data'];
                if ($model->save()) {
                    $this->flash('success', Yii::t('admin', 'Дополнительные данные пользователя обновлены'));
                    return $this->redirect(['/user/view', 'id' => $model->id]);
                }
            }
        }
        $this->flash('error', Yii::t('admin', 'Ошибка при обновлении записи. {0}', $model->formatErrors()));
        return $this->redirect(['/user/view', 'id' => $model->id]);
    }

}
