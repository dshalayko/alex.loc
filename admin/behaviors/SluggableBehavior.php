<?

namespace admin\behaviors;

use Yii;
use yii\db\ActiveRecord;
use yii\helpers\ArrayHelper;

class SluggableBehavior extends \yii\behaviors\SluggableBehavior {

    /**
     * @var string
     */
    public $slugAttribute = 'slug';

    /**
     * @var string|array
     */
    public $attribute = 'title';

    /**
     * @var bool
     */
    public $ensureUnique = true;

    /**
     * @var string
     */
    public $replacement = '_';

    /**
     * @var bool
     */
    public $lowercase = true;

    /**
     * @var bool
     */
    public $immutable = true;

    /**
     * @var bool
     */
    private $slugIsEmpty = false;

    /**
     * @inheritdoc
     * @param ActiveRecord $owner
     */
    public function attach($owner) {
        $this->attribute = (array) $this->attribute;
        $primaryKey = $owner->primaryKey();
        $primaryKey = is_array($primaryKey) ? array_shift($primaryKey) : $primaryKey;
        if (in_array($primaryKey, $this->attribute, true) && $owner->getIsNewRecord()) {
            $this->attributes[ActiveRecord::EVENT_AFTER_INSERT] = $this->slugAttribute;
        }

        parent::attach($owner);
    }

    /**
     * @inheritdoc
     */
    protected function getValue($event) {
        /* @var $owner ActiveRecord */
        $owner = $this->owner;

        if (!empty($owner->{$this->slugAttribute}) && !$this->slugIsEmpty && $this->immutable) {
            $slug = $owner->{$this->slugAttribute};
        } else {
            if ($owner->getIsNewRecord()) {
                $this->slugIsEmpty = true;
            }
            if ($this->attribute !== null) {
                $attributes = $this->attribute;

                $slugParts = array_map(function ($attribute) {
                    return ArrayHelper::getValue($this->owner, $attribute);
                }, $attributes);

                $slug = $this->slugify(implode($this->replacement, $slugParts), $this->replacement, $this->lowercase);

                if (!$owner->getIsNewRecord() && $this->slugIsEmpty) {
                    $owner->{$this->slugAttribute} = $slug;
                    $owner->save(false, [$this->slugAttribute]);
                }
            } else {
                $slug = parent::getValue($event);
            }
        }

        if ($this->ensureUnique) {
            $baseSlug = $slug;
            $iteration = 0;
            while (!$this->validateSlug($slug)) {
                $iteration++;
                $slug = $this->generateUniqueSlug($baseSlug, $iteration);
            }
        }

        return $slug;
    }

    /**
     * @param string $str
     * @param string $replacement
     * @param bool $lowercase
     *
     * @return string
     */
    public static function slugify($str, $replacement = '_', $lowercase = true) {

        // ???????? 7.79B
        $transliteration = array(
            '??' => 'A', '??' => 'a',
            '??' => 'B', '??' => 'b',
            '??' => 'V', '??' => 'v',
            '??' => 'G', '??' => 'g',
            '??' => 'D', '??' => 'd',
            '??' => 'E', '??' => 'e',
            '??' => 'Yo', '??' => 'yo',
            '??' => 'Zh', '??' => 'zh',
            '??' => 'Z', '??' => 'z',
            '??' => 'I', '??' => 'i',
            '??' => 'J', '??' => 'j',
            '??' => 'K', '??' => 'k',
            '??' => 'L', '??' => 'l',
            '??' => 'M', '??' => 'm',
            '??' => "N", '??' => 'n',
            '??' => 'O', '??' => 'o',
            '??' => 'P', '??' => 'p',
            '??' => 'R', '??' => 'r',
            '??' => 'S', '??' => 's',
            '??' => 'T', '??' => 't',
            '??' => 'U', '??' => 'u',
            '??' => 'F', '??' => 'f',
            '??' => 'H', '??' => 'h',
            '??' => 'Cz', '??' => 'cz',
            '??' => 'Ch', '??' => 'ch',
            '??' => 'Sh', '??' => 'sh',
            '??' => 'Shh', '??' => 'shh',
            '??' => '??', '??' => '??',
            '??' => 'Y`', '??' => 'y`',
            '??' => '', '??' => '',
            '??' => 'E`', '??' => 'e`',
            '??' => 'Yu', '??' => 'yu',
            '??' => 'Ya', '??' => 'ya',
            '???' => '#', '??' => '???',
            '???' => '`', '??' => '??',
        );

        $str = strtr($str, $transliteration);
        if ($lowercase) {
            $str = strtolower($str);
        }
        $str = preg_replace('/[^\s0-9a-z\-_]/', '', $str);
        $str = preg_replace('|([-]+)|s', $replacement, $str);
        $str = str_replace(' ', $replacement, $str);
        $str = trim($str, $replacement);

        return $str;
    }

    /**
     * @param string $baseSlug
     * @param int $iteration
     *
     * @return string
     */
    protected function generateUniqueSlug($baseSlug, $iteration) {
        return is_callable($this->uniqueSlugGenerator) ? call_user_func($this->uniqueSlugGenerator, $baseSlug, $iteration, $this->owner) : $baseSlug . $this->replacement . ($iteration + 1);
    }

}
