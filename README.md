##  usersテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| email | string | null: false,unique: true |
| encrypted_password  | string | null: false |
| nickname | string | null: false |

### Association
- has_many :posts
- has_many :comments


##  postsテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| detail | text | null: false |
| size_id | integer | null: false |
| place_id | integer | null: false |
| user | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments


##  commentsテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| comment | text | null: false |
| post | references | null: false, foreign_key: true |
| user | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post
