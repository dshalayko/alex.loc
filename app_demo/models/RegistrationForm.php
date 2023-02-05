<?

namespace app_demo\models;

use admin\models\Setting;
use admin\models\User;
use admin\validators\ReCaptchaValidator;
use Yii;

class RegistrationForm extends \admin\models\api\RegistrationForm {


    public $name;
    public $surname;
    public $surname2;
    public $phone;
    public $email;
    public $password;

    public function rules() {
        return [
            ['email', 'trim'],
            ['email', 'required'],
            ['phone', 'required'],
            ['email', 'email'],
            ['email', 'string', 'max' => 255],
            ['email', 'unique', 'targetClass' => '\admin\models\User', 'message' => Yii::t('admin', 'Пользователь с таким email уже существует')],
            ['name,surname,surname2', 'string', 'max' => 255],
            ['name,surname,surname2', 'trim'],
            ['name,surname,surname2', 'required'],
            ['password', 'required', 'when' => function() {
                return !Setting::get('generatePasswordRegistration');
            }],
            ['password', 'string', 'min' => 8],
            ['reCaptcha', ReCaptchaValidator::className(), 'when' => function($model) {
                return Setting::get('enableCaptchaRegistration');
            }],
        ];
    }

    public function attributeLabels() {
        return [
            'email' => Yii::t('admin', 'E-mail'),
            'name' => Yii::t('admin', 'Имя'),
            'surname' => Yii::t('admin', 'Фамилия'),
            'surname2' => Yii::t('admin', 'Отчество'),
            'phone' => Yii::t('admin', 'Телефон'),
            'password' => Yii::t('admin', 'Пароль'),
            'reCaptcha' => Yii::t('admin', 'Проверка')
        ];
    }

    /**
     * Registration user.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function registration() {
        if (!$this->validate()) {
            return null;
        }
        if (empty($this->password)) {
            $this->password = substr(uniqid(md5(rand()), true), 0, 8);
        }

        $user = new User();
        $user->email = $this->email;
        $user->password = $this->password;

        $user->data = [
            'name' => $this->name,
            'surname' => $this->surname,
            'surname2' => $this->surname2,
            'phone' => $this->phone,
        ];

        if ($user->save()) {
            $this->notifyUser();
            return $user;
        } else {
            return null;
        }
    }
}
