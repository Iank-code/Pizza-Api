# Restaurant Api

This is a backend project made by Ruby On Rails. It

<!-- * Ruby version -->

## Dependencies

- Faker
- Active_model_serializers
- sqlite3
- Rake

## How to run

To be able to use it, you will need to clone it into your machine using the following command.

    git clone git@github.com:Iank-code/Pizza-Api.git
    cd Pizza-Api
    bundle install
    rails db:migrate db:seed
    rails s

This will also start the server which will listen on port 3000

## Routes

### GET

    /restaurants

Returns all restaurants

GET

    /restaurants/:id

Return the specific `Restaurant` you want with its associated meal or pizza.

If the `Restaurant` does not exist, it returns the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```

DELETE

```
/restaurants/:id
```

If the `Restaurant` exists, it removes it from the database, along with
any `RestaurantPizza`s that are associated with it.

After deletion, it will return an _empty_ response body, along with the
appropriate HTTP status code.

If the `Restaurant` does not exist, it returns the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```

GET

    /pizzas

Return all the foods.

POST

    /restaurant_pizzas

This route creates a new `RestaurantPizza` that is associated with an
existing `Pizza` and `Restaurant`.

If the `RestaurantPizza` is **not** created successfully, it will return a
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}
```