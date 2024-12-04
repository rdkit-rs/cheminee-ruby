# cheminee

Cheminee - the Ruby gem for the Cheminée

Cheminée: The Chemical Structure Search Engine

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 0.1.45
- Generator version: 7.11.0-SNAPSHOT
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
gem install ./cheminee-0.1.45.gem
```

(for development, run `gem install --dev ./cheminee-0.1.45.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cheminee', '~> 0.1.45'

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
sanitize = 'sanitize_example' # String | 
mol_block = [Cheminee::MolBlock.new({mol_block: 'mol_block_example'})] # Array<MolBlock> | 

begin
  #Convert a list of SMILES to molblocks
  result = api_instance.v1_convert_mol_block_to_smiles_post(sanitize, mol_block)
  p result
rescue Cheminee::ApiError => e
  puts "Exception when calling DefaultApi->v1_convert_mol_block_to_smiles_post: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:4001/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Cheminee::DefaultApi* | [**v1_convert_mol_block_to_smiles_post**](docs/DefaultApi.md#v1_convert_mol_block_to_smiles_post) | **POST** /v1/convert/mol_block_to_smiles | Convert a list of SMILES to molblocks
*Cheminee::DefaultApi* | [**v1_convert_smiles_to_mol_block_post**](docs/DefaultApi.md#v1_convert_smiles_to_mol_block_post) | **POST** /v1/convert/smiles_to_mol_block | Convert a list of molblocks to SMILES
*Cheminee::DefaultApi* | [**v1_indexes_get**](docs/DefaultApi.md#v1_indexes_get) | **GET** /v1/indexes | List indexes
*Cheminee::DefaultApi* | [**v1_indexes_index_bulk_delete_delete**](docs/DefaultApi.md#v1_indexes_index_bulk_delete_delete) | **DELETE** /v1/indexes/{index}/bulk_delete | Delete a list of smiles (after standardization) from an index
*Cheminee::DefaultApi* | [**v1_indexes_index_bulk_index_post**](docs/DefaultApi.md#v1_indexes_index_bulk_index_post) | **POST** /v1/indexes/{index}/bulk_index | Index a list of SMILES and associated, free-form JSON attributes which are indexed and searchable
*Cheminee::DefaultApi* | [**v1_indexes_index_delete**](docs/DefaultApi.md#v1_indexes_index_delete) | **DELETE** /v1/indexes/{index} | Delete an index
*Cheminee::DefaultApi* | [**v1_indexes_index_get**](docs/DefaultApi.md#v1_indexes_index_get) | **GET** /v1/indexes/{index} | Get extended information about an index
*Cheminee::DefaultApi* | [**v1_indexes_index_merge_post**](docs/DefaultApi.md#v1_indexes_index_merge_post) | **POST** /v1/indexes/{index}/merge | Merge segments inside the index
*Cheminee::DefaultApi* | [**v1_indexes_index_post**](docs/DefaultApi.md#v1_indexes_index_post) | **POST** /v1/indexes/{index} | Create an index
*Cheminee::DefaultApi* | [**v1_indexes_index_search_basic_get**](docs/DefaultApi.md#v1_indexes_index_search_basic_get) | **GET** /v1/indexes/{index}/search/basic | Perform basic query search against index
*Cheminee::DefaultApi* | [**v1_indexes_index_search_identity_get**](docs/DefaultApi.md#v1_indexes_index_search_identity_get) | **GET** /v1/indexes/{index}/search/identity | Perform identity search (i.e. exact match) against index
*Cheminee::DefaultApi* | [**v1_indexes_index_search_similarity_get**](docs/DefaultApi.md#v1_indexes_index_search_similarity_get) | **GET** /v1/indexes/{index}/search/similarity | Perform similarity search against index
*Cheminee::DefaultApi* | [**v1_indexes_index_search_substructure_get**](docs/DefaultApi.md#v1_indexes_index_search_substructure_get) | **GET** /v1/indexes/{index}/search/substructure | Perform substructure search against index
*Cheminee::DefaultApi* | [**v1_indexes_index_search_superstructure_get**](docs/DefaultApi.md#v1_indexes_index_search_superstructure_get) | **GET** /v1/indexes/{index}/search/superstructure | Perform superstructure search against index
*Cheminee::DefaultApi* | [**v1_schemas_get**](docs/DefaultApi.md#v1_schemas_get) | **GET** /v1/schemas | List schemas available for creating indexes
*Cheminee::DefaultApi* | [**v1_standardize_post**](docs/DefaultApi.md#v1_standardize_post) | **POST** /v1/standardize | Pass a list of SMILES through fragment_parent, uncharger, and canonicalization routines


## Documentation for Models

 - [Cheminee::BulkRequest](docs/BulkRequest.md)
 - [Cheminee::BulkRequestDoc](docs/BulkRequestDoc.md)
 - [Cheminee::ConvertedMolBlock](docs/ConvertedMolBlock.md)
 - [Cheminee::ConvertedSmiles](docs/ConvertedSmiles.md)
 - [Cheminee::CreateIndexError](docs/CreateIndexError.md)
 - [Cheminee::DeleteIndexBulkResponseError](docs/DeleteIndexBulkResponseError.md)
 - [Cheminee::DeleteIndexBulkResponseOk](docs/DeleteIndexBulkResponseOk.md)
 - [Cheminee::DeleteIndexBulkResponseOkStatus](docs/DeleteIndexBulkResponseOkStatus.md)
 - [Cheminee::DeleteIndexError](docs/DeleteIndexError.md)
 - [Cheminee::GetIndexesResponseError](docs/GetIndexesResponseError.md)
 - [Cheminee::IndexMeta](docs/IndexMeta.md)
 - [Cheminee::IndexSchema](docs/IndexSchema.md)
 - [Cheminee::ListIndexResponseErr](docs/ListIndexResponseErr.md)
 - [Cheminee::MolBlock](docs/MolBlock.md)
 - [Cheminee::PostIndexBulkResponseError](docs/PostIndexBulkResponseError.md)
 - [Cheminee::PostIndexBulkResponseOk](docs/PostIndexBulkResponseOk.md)
 - [Cheminee::PostIndexBulkResponseOkStatus](docs/PostIndexBulkResponseOkStatus.md)
 - [Cheminee::QueryResponseError](docs/QueryResponseError.md)
 - [Cheminee::QuerySearchHit](docs/QuerySearchHit.md)
 - [Cheminee::Schema](docs/Schema.md)
 - [Cheminee::Smiles](docs/Smiles.md)
 - [Cheminee::StandardizedSmiles](docs/StandardizedSmiles.md)
 - [Cheminee::StructureResponseError](docs/StructureResponseError.md)
 - [Cheminee::StructureSearchHit](docs/StructureSearchHit.md)


## Documentation for Authorization

Endpoints do not require authorization.

