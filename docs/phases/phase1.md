# Phase 1: User Authentication

## Rails
### Models
* User

### Controllers
* UsersController (create, new)
* SessionsController (create, new, destroy)

### Views
* `static_pages#root` will be the root view in the application, just like all our other projects
* users/new.json.jbuilder
  * `users/new` router route
* session/new.json.jbuilder
  * `users/new` router route (have option for sign up or sign in on this same page with different actions for the submit button depending on which item is clicked)
* session/show.json.jbuilder

## Flux
### Views (React Components)
AuthenticationForm

### Stores
* CurrentUser

### Actions
* UserActions

### ApiUtil
* ApiUserActions.getCurrentUser -> triggered by ApiUtil
* ApiUserActions.createNewUser
* UserActions.createNewUser -> triggers ApiUtil
* UserActions.getCurrentUser

## Gems/Libraries
* BCrypt (Gem)
