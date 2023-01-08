<?
//Параметры подключения к БД разработка
return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=alex',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
            'tablePrefix' => '',
            'enableSchemaCache' => true,
        ]
    ]
];
