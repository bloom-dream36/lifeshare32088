# README

## Users

| columun              | Type      | Options           |   
|----------------------|-----------|-------------------|
|nickname              | string    | null:false        |
|email                 | string    | unique null:false |
|a_word                | string    |                   |
|password              | string    | null:false        |
|encrypted_password    | string    | null:false        |
|birthday              | date      | null:false        |


### Association

- has_many plans
- has_many comments
- has_many keys

## Calendars

| columun              | Typpe      | Options           |
|----------------------|------------|-------------------| 
|start_day             |detetime    | null:false        |
|end_day               |datetime    | null:false        |
|title                 | string     | null:false        |
|map                   | string     |                   |
|password              | string     | null:false        |
|url                   | string     | null:false        |
|user                  | references | foreign_key       |



### Association

- belongs_to user
- has_many   keys
- has_many   comments


## comments

| columun              | Type       | Options           |   
|----------------------|------------|-------------------|
|message               | text       | null:false        |
|calendare             | references |  foreign_key      |
|usre                  | references |  foreign_key      |

### Association

- belongs_to calendar
- belongs_to user


## Keys

| columun            | Type       | Options              |
|--------------------|------------|----------------------|
| calendars          | references | foreign_key          |
| user               | references | foreign_key          |

### Association

- belongs_to user
-belongs_to calensare












