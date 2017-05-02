[![Build Status](https://travis-ci.org/sul-dlss/MyAccount.svg?branch=master)](https://travis-ci.org/sul-dlss/MyAccount) | [![Coverage Status](https://coveralls.io/repos/github/sul-dlss/MyAccount/badge.svg?branch=master)](https://coveralls.io/github/sul-dlss/MyAccount?branch=master) | [![Dependency Status](https://gemnasium.com/sul-dlss/MyAccount.svg)](https://gemnasium.com/sul-dlss/MyAccount)

# MyAccount
MyAccount rails application that uses Symphony web services to display library patron account information, allows renewals of materials, canceling of hold requests, and payments of library fees and fines via a hosted payment gateway.

## Requirements
1. Ruby (2.2.4 or greater)
2. Rails (4.2.0 or greater)
3. Connection to Symphony Web Services (hosted on libwebdev1 or libwebprod1)
4. OCI8 Oracle connection to Symphony database (to handle db lookups not supported by SymWS)

## Installation

Clone the repository

    $ git clone git@github.com:sul-dlss/MyAccount.git

Change directories into the app and install dependencies

    $ bundle install

## Testing

The test suite (with RuboCop style enforcement) will be run with the default rake task (also run on travis)

    $ rake

The specs can be run without RuboCop enforcement

    $ rake spec

The RuboCop style enforcement can be run without running the tests

    $ rake rubocop
    
