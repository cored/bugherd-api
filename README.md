Bugherd API wrapper for Ruby (using ActiveResource) 
===
[![Build Status](https://secure.travis-ci.org/cored/bugherd-api.png)](http://travis-ci.org/cored/bugherd-api)

This is a Ruby wrapper for the [Bugherd](http://bugherd.com) API. 

It allows you to interface with the Bugherd API using simple
ActiveRecord-like syntax, i.e.:

```ruby
BugherdAPI.authenticate 'username', 'password'
BugherdAPI::Project.find :all
BugherdAPI::Project.find 1458
```

### Installation

```
$ gem install bugherd-api
```

### Usage

Simple require the library before using it

```ruby
require 'rubygems'
require 'bugherd-api'
```

### Contributing
* Fork the project
* Create feature and tests 
* Make a pull request

### License

Copyright (c) 2011 Rafael George

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
