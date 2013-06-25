# Bugheard::Api

Ruby wrapper for the [Bugherd](http://www.bugherd.com) API.

## Installation

Add this line to your application's Gemfile:

    gem 'bugheard-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bugheard-api

## Usage

### Authenication

The API use Basic HTTP authentication

    client = Bugherd.new(api_key, 'x')

### Organization

    client.show_organization

### Users

    client.show_users

### Members

    client.show_members

### Guests

    client.show_guests

### Projects

    client.list_projects

#### Create Projects

    client.create_project(project: {name: "My Website", devurl:
    "http://www.example.com", is_active: true, is_public: false})

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
