# Restaurant Api

This is a backend project made by Ruby On Rails. It provides all data belonging to `Restaurant`, `Pizza` and its joining table `Restaurant_pizza`

In this project, I demonstrate their relationships in the model directory and serializers.

## Ruby version

- Ruby 2.7.4

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

```
http://127.0.0.1:3000
```

## Routes

GET

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

## Contributor

The project is contributed by Ian Kamau [ https://github.com/Iank-code ]

## License

This project is licensed under the MIT license.

```
Copyright (c) 2023 Ian Kamau

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
