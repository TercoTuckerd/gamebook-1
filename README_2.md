# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |

### Association

- has_many :saves
- has_many :statuses
- has_many :games

## statuses テーブル(本命)

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| battle_a     | integer     | null: false                   |
| battle_b     | integer     | null: false                   |
| battle_c     | integer     | null: false                   |
| battle_d     | integer     | null: false                   |
| battle_e     | integer     | null: false                   |
| battle_f     | integer     | null: false                   |
| battle_g     | integer     | null: false                   |
| battle_h     | integer     | null: false                   |
| battle_i     | integer     | null: false                   |
| battle_j     | integer     | null: false                   |
| hp           | integer     | null: false                   |
| tek          | integer     | null: false                   |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :games
- has_many   :saves

##  gamesテーブル(本命)

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| story        | text       | null: false                    |
| coin         | integer    | null: false                    |
| item         | integer    | null: false                    |
| page_1       | integer    | null: false                    |
| page_2       | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |
| status       | references | null: false, foreign_key: true |

### Association

- belongs_to :status
- belongs_to :user
- has_many   :saves

## statuses テーブル(仮)

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| text         | integer    | null: false                    |
| game         | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :game
- has_many   :saves

##  gamesテーブル(仮)

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| story        | text       | null: false                    |
| page_1       | integer    | null: false                    |
| page_2       | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- has_many :status
- belongs_to :user
- has_many   :saves

## saves テーブル

| Column    | Type       | Options                        |
| -------   | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| status    | references | null: false, foreign_key: true |
| game      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :status
- belongs_to :game