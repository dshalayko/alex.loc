<?
//Параметры подключения к БД разработка
return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=alex',
            'username' => 'root',
            'password' => '',
//            'dsn' => 'mysql:host=localhost;dbname=dshala02_admin',
//            'username' => 'dshala02_admin',
//            'password' => 'Lazyb0y!',
            'charset' => 'utf8',
            'tablePrefix' => '',
            'enableSchemaCache' => true,
        ]
    ]
];
