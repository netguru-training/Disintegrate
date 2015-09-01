# Disintegrate
[![Build Status](https://travis-ci.org/netguru-training/Disintegrate.svg)](https://travis-ci.org/netguru-training/Disintegrate)

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## :hash: Description
Do you have problem to find new apartment or roommates? There's chance for you! Create new advertisement or ask about existing one.

## :closed_lock_with_key: Technology

| Name |  Version |
| :--: | :---: |
| [Ruby](https://www.ruby-lang.org) | 2.2.0 |
| [Ruby on Rails](http://www.rubyonrails.org/) | 4.2.0 |
| [PostgreSQL](http://www.postgresql.org/) | 9.4.1 |
| [Bootstrap](https://github.com/twbs/bootstrap-sass) | 3.3.5.1 |

## :book: Setup
* Copy files and provide your data:
`cp database.yml.sample database.yml`

* Prepare database:
`rake db:setup`
`rake db:seed`

* Get own access to Amazon S3 service

## :bookmark: Travis

This application is integrated with Travis CI and it will automatically upload changes to heroku.
