# cheminee

Cheminee - the Ruby gem for the Cheminée

Cheminée: The Chemical Structure Search Engine

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 0.0.5
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://github.com/rdkit-rs/cheminee](https://github.com/rdkit-rs/cheminee)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cheminee.gemspec
```

Then either install the gem locally:

```shell
gem install ./cheminee-0.0.5.gem
```

(for development, run `gem install --dev ./cheminee-0.0.5.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cheminee', '~> 0.0.5'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'cheminee', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
smile = [Cheminee::Smile.new({smile: 'smile_example'})] # Array<Smile> | 

begin
  result = api_instance.standardize_post(smile)
  p result
rescue Cheminee::ApiError => e
  puts "Exception when calling DefaultApi->standardize_post: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Cheminee::DefaultApi* | [**standardize_post**](docs/DefaultApi.md#standardize_post) | **POST** /standardize | 


## Documentation for Models

 - [Cheminee::Smile](docs/Smile.md)
 - [Cheminee::StandardizedSmile](docs/StandardizedSmile.md)


## Documentation for Authorization

Endpoints do not require authorization.

