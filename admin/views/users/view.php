<?

$this->title = Yii::t('admin', 'Данные пользователя ') . $model->data['name'];
?>

<div class="row">
    <div class="col-sm-6">
        Имя: <?= $model->data['name'] ?> <br>
        Фамилия: <?= $model->data['surname'] ?><br>
        Отчетсво: <?= $model->data['surname2'] ?><br>
        Телефон: <?= $model->data['number'] ?><br>
        Наименование учереждения образорвания: <?= $model->data['nameUO'] ?><br>
        Наименование Факультета: <?= $model->data['nameFK'] ?><br>
        Название орагнизации, из которой хочешь уволиться: <?= $model->data['addressORG1'] ?><br>
        Полностью ФИО и должность руководителя: <?= $model->data['nameRUK'] ?><br>
        Адрес: <?= $model->data['address'] ?><br>
        email: <?= $model->email ?><br>
    </div>
</div>
