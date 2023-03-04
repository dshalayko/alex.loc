<?

use admin\modules\page\api\Page;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

// Подключаем плагин "fancybox"
$this->registerJsFile('@web/js/jquery.fancybox.min.js', ['depends' => [\yii\web\JqueryAsset::className()]]);
$this->registerCssFile('@web/css/jquery.fancybox.min.css');

?>
<style>
    .table_us {
        margin-bottom: 5px;
    }
</style>

<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="row">
                <div class="col-md-12">
                    <h3><?= Yii::t('admin', 'Заполнить данные для распределения') ?></h3>
                    <hr>
                    <?php
                    // Создаем переменную с radio button
                    $options = [
                        'bgu' => 'БГУ',
                        'bguir' => 'БГУИР',
                        'bgeu' => 'БГЭУ',
                        'bntu' => 'БНТУ',
                        'bdrtu' => 'БрГТУ',
                        'mglu' => 'МГЛУ',
                    ];


                    $form = ActiveForm::begin();

                    // Получаем массив данных из модели
                    $data = $model->data;

                    // Отображаем значения массива в полях формы
                    echo $form->field($model, 'data[fio]')->textInput(['value' => $data['fio']])->label('ФИО (вин падеж)');
                    echo $form->field($model, 'data[nameUO]')->textInput(['value' => $data['nameUO']])->label('Наименование учереждения образорвания');
                    echo $form->field($model, 'data[spetialnost]')->textInput(['value' => $data['spetialnost']])->label('Специальность');
                    echo $form->field($model, 'data[dolshnost]')->textInput(['value' => $data['dolshnost']])->label('Должность');
                    echo $form->field($model, 'data[adresonano]')->textInput(['value' => $data['adresovano']])->label('Кому адпресовано письмо (род. падеж)');
                    echo $form->field($model, 'data[dolshnost_adresata]')->textInput(['value' => $data['dolshnost_adresata']])->label('Должность адресата(род.падеж)');
                    echo $form->field($model, 'data[shablon]')->radioList($options)->label('Шаблон');

                    // Отображаем кнопку сохранения данных
                    echo Html::submitButton('Готово', ['class' => 'btn btn-primary']);

                    // Закрываем форму
                    ActiveForm::end();


                    ?>
                </div>
            </div>
        </div>
    </div>
</div>






