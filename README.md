# SehatQ Test

Test SehatQ with Ruby on Rails

## Installation

Setting version using rbenv
```
$ rbenv install 2.3.1
# set 2.3.1 as the global version
$ rbenv global 2.3.1
```

```
gem update rails
```

Bundle install
```bash
$ bundle install
```

Migrate Table
```bash
$ rails db:migrate
```

Seeding Data
```bash
$ rails db:seed
```

Test
```bash
$ bundle exec rspec
```

Run Server
```bash
$ rails s
```

## What has been done?
```
BaseURL: http://127.0.0.1:3000
```
* Show Doctor List
```
URL: /doctors
Method: GET
Response:
[
  {
    "id": 1,
    "name": "Pres. Nickolas Gutkowski",
    "created_at": "2020-09-18T09:44:19.853Z",
    "updated_at": "2020-09-18T09:44:19.853Z"
  }
]
```

* Show Hospital List
```
URL: /hospitals
Method: GET
Response:
[
  {
    "id": 1,
    "name": "Mr. Carmelo Zboncak",
    "address": "Apt. 421 5932 King Ports, West Noefort, IA 59568-2901",
    "created_at": "2020-09-18T09:42:40.722Z",
    "updated_at": "2020-09-18T09:42:40.722Z"
  }
]
```

* Booking
```
URL: /books
Method: POST
Parameters:
{
  "date": "2020-09-19 10:00",
  "doctor_id": 1,
  "hospital_id": 1,
  "user_id": 1
}
Response:
[
  {
    "id": 1,
    "name": "Mr. Carmelo Zboncak",
    "address": "Apt. 421 5932 King Ports, West Noefort, IA 59568-2901",
    "created_at": "2020-09-18T09:42:40.722Z",
    "updated_at": "2020-09-18T09:42:40.722Z"
  }
]
```

* Show Schedule List
```
URL: /schedules
Method: GET
Response:
[
  {
    "id": 191,
    "name": "Danika Stamm III",
    "created_at": "2020-09-18T10:05:26.290Z",
    "updated_at": "2020-09-18T10:05:26.290Z",
    "doctor_books": [
      {
        "id": 11,
        "hospital_id": 201,
        "user_id": 18,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.393Z",
        "updated_at": "2020-09-18T10:05:26.393Z"
      },
      {
        "id": 12,
        "hospital_id": 201,
        "user_id": 19,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.404Z",
        "updated_at": "2020-09-18T10:05:26.404Z"
      },
      {
        "id": 13,
        "hospital_id": 201,
        "user_id": 20,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.414Z",
        "updated_at": "2020-09-18T10:05:26.414Z"
      },
      {
        "id": 14,
        "hospital_id": 201,
        "user_id": 21,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.424Z",
        "updated_at": "2020-09-18T10:05:26.424Z"
      },
      {
        "id": 15,
        "hospital_id": 201,
        "user_id": 22,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.433Z",
        "updated_at": "2020-09-18T10:05:26.433Z"
      },
      {
        "id": 16,
        "hospital_id": 201,
        "user_id": 23,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.444Z",
        "updated_at": "2020-09-18T10:05:26.444Z"
      },
      {
        "id": 17,
        "hospital_id": 201,
        "user_id": 24,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.453Z",
        "updated_at": "2020-09-18T10:05:26.453Z"
      },
      {
        "id": 18,
        "hospital_id": 201,
        "user_id": 25,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.463Z",
        "updated_at": "2020-09-18T10:05:26.463Z"
      },
      {
        "id": 19,
        "hospital_id": 201,
        "user_id": 26,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.489Z",
        "updated_at": "2020-09-18T10:05:26.489Z"
      },
      {
        "id": 20,
        "hospital_id": 201,
        "user_id": 27,
        "doctor_id": 191,
        "date": "2020-09-18T10:05:26.000Z",
        "created_at": "2020-09-18T10:05:26.499Z",
        "updated_at": "2020-09-18T10:05:26.499Z"
      }
    ]
  }
]
```
* Login (not yet)

## Notes
I apologize if this test is still lacking, because I am also new to this language.