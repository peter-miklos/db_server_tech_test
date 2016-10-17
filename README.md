Database Server Tech Test
=================

Description:
-------

The program runs a server that is accessible on http://localhost:4000/. When the server receives a request on http://localhost:4000/set?somekey=somevalue it stores the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it returns the value stored at somekey.

### Instructions for how to run the program

```
$ git clone https://github.com/peter-miklos/db_server_tech_test
$ bundle
$ rspec
$ rackup -p 4000 or ruby app/app.rb
```

### Screenshots
TBD

Tests
-------
### Feature tests
In feature tests the following test cases have been used:
```
set and get values
  set the value and store it in memory by using '/set' path
  get the already set value by using the proper name of the key

```
### Unit tests
The following unit tests are used:
```
AppModel
  #set_request
    adds the key and value pairs into the requests
  #get_request
    returns the value connected to the passed key
    returns warning message if key not found
```
