<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%topic}}".
 *
 * @property integer $id
 * @property integer $node_id
 * @property integer $user_id
 * @property string $title
 * @property string $excerpt
 * @property string $image
 * @property string $content
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 */
class Topic extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%topic}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['node_id', 'title', 'content'], 'required'],
            [['node_id', 'user_id', 'status', 'created_at', 'updated_at'], 'integer'],
            [['content'], 'string'],
            [['title', 'excerpt', 'image'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'node_id' => '版块ID',
            'user_id' => '作者ID',
            'title' => '标题',
            'excerpt' => '摘要',
            'image' => '封面图片',
            'content' => 'Content',
            'status' => '状态 1:发布 0：草稿',
            'created_at' => '创建时间',
            'updated_at' => '修改时间',
        ];
    }
}
