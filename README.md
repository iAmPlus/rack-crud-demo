## Rack CRUD demo

This app is an example for [Rack CRUD gem](https://github.com/iAmPlus/rack-crud).

### How to use:

* Check out the `spec/features/foo_crud_spec`
* Create a model and `include CRUDModel`
* Create 3 templates: `all`, `form` and `show`. Put them in `templates/your_model` folder. See `templates/foo` for examples.
* Create a "Request Handler" for the new model. 

A "Request Handler" is the controller. See `requests/foo.rb`. Rack Routing passes HTTP requests to a method in this file. Each model should have its own Request Handler. Add customized controllers for your model in this file. To use default CRUD functions, call `get_for`, `create_for`, etc. 

* Include your new Request Handler in `app/request_handler.rb`: `include FooRequest`
* Update your `config/routes.txt` file:


```
GET    /foos  
POST   /foos  
GET    /foos/create  
GET    /foos/:id/show  
GET    /foos/:id/edit  
PUT    /foos/:id  
DELETE /foos/:id  
```

Now, when `/foos` is requested, the app will render the "index" page for foos. GET `foos/create` to create a new model, and GET `foos/:id/show` to show and `foos/:id/edit` to edit.

### To run specs:
`rspec` or `guard`