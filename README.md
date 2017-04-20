# Omniauth Example

This is an example project of using gem [omniauth](https://github.com/omniauth/omniauth) in rails.

Demo available [here](https://omniauth-example-demo.herokuapp.com/).

## Getting Started ##
1. Clone repository: `git clone https://github.com/roman-sereda/omniauth_example_demo`
2. Enter the folder: `cd omniauth_example_demo`
3. Install gems: `bundle install`
4. Migrate db: `rake db:migrate`
5. Configurate your pg database in `config/database.yml`
6. Edit your client and secret keys in `config/omniauth.rb`

## Add new provider strategie ##
1. Add provider gem to `Gemfile`
2. Add provider with keys to `config/omniauth.rb`
3. Add provider name to current user's array in `app/controllers/application_controller.rb`
