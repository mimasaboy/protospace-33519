#テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | NULL: FALSE |
| password   | string | NULL: FALSE |
| name       | string | NULL: FALSE |
| profile    | text   | NULL: FALSE |
| occupation | text   | NULL: FALSE |
| position   | text   | NULL: FALSE |

### Association

* has_many :reototypes
* has_many :comments

##　prototypes　テーブル

| Column     | Type          | Options          |
| ---------- | ------------- | ---------------- |
| title      | string        | NULL: FALSE      |  
| catch_copy | text          | NULL: FALSE      |
| concept    | text          | NULL: FALSE      |
| user       | references    | foreign_key:true |

### Association

* belongs_to :user
* has_many :comments

## comments　テーブル

| Column    | Type       | Options          |
| --------- | ---------- | ---------------- |
| text      | text       | NULL: FALSE      |
| user      | references | foreign_key:true |
| prototype | references | foreign_key:true |

### Association

* belongs_to :prototypes
* belongs_to :user