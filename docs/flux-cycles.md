# Flux Cycles

Flux loops are organized by data type. Under each data type, there may
be sub-categories, and each action is listed with the sequence of events
that result from its invocation, ending with the API or store. Finally,
store listeners are listed at the end.

You should be able to use this document trace an **action** starting
with where it was invoked, through the **API**/**store** involved, and
finally to the **components** that update as a result. This is important
because once you start implementing your flux loops, that's precisely
what you'll need to do.


## Restaurant Cycles

### Restaurant API Request Actions

* `fetchAllRestaurants`
  0. invoked from `RestaurantsIndex` `didMount`/`willReceiveProps`
  0. `GET /api/restaurants` is called.
  0. `receiveAllRestaurants` is set as the callback.

* `fetchSingleRestaurant`
  0. invoked from `RestaurantIndexItem` `didMount`/`willReceiveProps`
  0. `GET /api/restaurants/:restaurantId` is called.
  0. `receiveSingleRestaurant` is set as the callback.

### Restaurant API Response Actions

* `receiveAllRestaurants`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants` and emits change.

* `receiveSingleRestaurant`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants[id]` and emits change.

### Store Listeners

* `RestaurantsIndex` component listens to `Restaurant` store.
* `RestaurantsIndexItem` component listens to `Restaurant` store.


## Notebook Cycles

### Notebooks API Request Actions

* `fetchAllNotebooks`
  0. invoked from `NotebooksIndex` `didMount`/`willReceiveProps`
  0. `GET /api/notebooks` is called.
  0. `receiveAllNotebooks` is set as the callback.

* `createNotebook`
  0. invoked from new notebook button `onClick`
  0. `POST /api/notebooks` is called.
  0. `receiveSingleNotebook` is set as the callback.

* `fetchSingleNotebook`
  0. invoked from `NotebookDetail` `didMount`/`willReceiveProps`
  0. `GET /api/notebooks/:id` is called.
  0. `receiveSingleNotebook` is set as the callback.

* `updateNotebook`
  0. invoked from `NotebookForm` `onSubmit`
  0. `POST /api/notebooks` is called.
  0. `receiveSingleNotebook` is set as the callback.

* `destroyNotebook`
  0. invoked from delete notebook button `onClick`
  0. `DELETE /api/notebooks/:id` is called.
  0. `removeNotebook` is set as the callback.

### Notebooks API Response Actions

* `receiveAllNotebooks`
  0. invoked from an API callback.
  0. `Notebook` store updates `_notebooks` and emits change.

* `receiveSingleNotebook`
  0. invoked from an API callback.
  0. `Notebook` store updates `_notebooks[id]` and emits change.

* `removeNotebook`
  0. invoked from an API callback.
  0. `Notebook` store removes `_notebooks[id]` and emits change.

### Store Listeners

* `NotebooksIndex` component listens to `Notebook` store.


## SearchSuggestion Cycles

* `fetchSearchSuggestions`
  0. invoked from `NoteSearchBar` `onChange` when there is text
  0. `GET /api/notes` is called with `text` param.
  0. `receiveSearchSuggestions` is set as the callback.

* `receiveSearchSuggestions`
  0. invoked from an API callback.
  0. `SearchSuggestion` store updates `_suggestions` and emits change.

* `removeSearchSuggestions`
  0. invoked from `NoteSearchBar` `onChange` when empty
  0. `SearchSuggestion` store resets `_suggestions` and emits change.

### Store Listeners

* `SearchBarSuggestions` component listens to `SearchSuggestion` store.
