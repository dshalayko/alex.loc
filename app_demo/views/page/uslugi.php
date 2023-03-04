<?

use admin\modules\page\api\Page;
use yii\helpers\Url;


?>
<style>
    .table_us{
        margin-bottom: 5px;
    }
</style>
<h1>Услуги</h1>


<div class="container">
    <div class="row table_us">
        <div class="col-md-1">№</div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-4">

                </div>
            </div>
        </div>
        <div class="col-md-3">
            Стоимость
        </div>
    </div>
    <div class="row table_us">
        <div class="col-md-1">1</div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-8">Заказать гарантийное письмо/письма</div>
                <div class="col-md-4">
                    <!-- Кнопка, по клику на которую появится модальное окно -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        Заказать
                    </button>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            Уточнять по запросу
        </div>
    </div>
    <div class="row table_us">
        <div class="col-md-1">2</div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-8">Сделать заявку на производственную/преддипломную/научно-техническую практику</div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-primary disabled">Заказать</a>


                </div>
            </div>
        </div>
        <div class="col-md-3">
            Уточнять по запросу
        </div>
    </div>
    <div class="row table_us">
        <div class="col-md-1">2</div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-8">Ксерокопия (контракта, приказа, направления, трудовой книги)</div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-primary disabled">Заказать</a>


                </div>
            </div>
        </div>
        <div class="col-md-3">
            15р
        </div>
    </div>
    <div class="row table_us">
        <div class="col-md-1">2</div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-8">Доставка корреспонденции в руки ЕМС по РБ за 24 часа</div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-primary disabled">Заказать</a>


                </div>
            </div>
        </div>
        <div class="col-md-3">
            15р
        </div>
    </div>
</div>


<!-- Модальное окно -->
<div class="modal" tabindex="-1" role="dialog" id="exampleModal">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                Пожалуйста выберите
                <a href="/uslugi/step-two" class="btn btn-primary">Распределение</a>
                или
                <a href="#" class="btn btn-primary disabled">Перераспределение</a>
            </div>

        </div>
    </div>
</div>