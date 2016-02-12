# CONEMO Browser Features

This test suite tests the
[CONEMO App](https://github.com/cbitstech/conemo_app).

You will need to run the testing server in the above repo.
This can be done by running 

```
node path/to/conemo_app/test/support/dummy_server.js
```

You will also need to run the
[Conemo Dashboard](http://github.com/cbitstech/conemo_dashboard). To run this

```
rake db:drop db:create db:migrate
rake selenium_seed:with_fixtures
rails s
```

You will then need to build the app following the instructions in the above
repo except you will need to change the API_SERVER to http://127.0.0.1:1337 and
the LESSON_SERVER to http://localhost:3000. Alternatively, you can use staging
build the app. You will need to run it in the browser. For example:

```
LOCALE=es-PE API_SERVER=http://127.0.0.1:1337 \
LESSON_SERVER=http://localhost:3000 npm run install:browser
```

Once the above is done, run:

```
rspec
```
