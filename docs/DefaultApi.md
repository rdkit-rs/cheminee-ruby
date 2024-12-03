# Cheminee::DefaultApi

All URIs are relative to *http://localhost:4001/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_convert_mol_block_to_smiles_post**](DefaultApi.md#v1_convert_mol_block_to_smiles_post) | **POST** /v1/convert/mol_block_to_smiles | Convert a list of SMILES to molblocks |
| [**v1_convert_smiles_to_mol_block_post**](DefaultApi.md#v1_convert_smiles_to_mol_block_post) | **POST** /v1/convert/smiles_to_mol_block | Convert a list of molblocks to SMILES |
| [**v1_indexes_get**](DefaultApi.md#v1_indexes_get) | **GET** /v1/indexes | List indexes |
| [**v1_indexes_index_bulk_delete_delete**](DefaultApi.md#v1_indexes_index_bulk_delete_delete) | **DELETE** /v1/indexes/{index}/bulk_delete | Delete a list of smiles (after standardization) from an index |
| [**v1_indexes_index_bulk_index_post**](DefaultApi.md#v1_indexes_index_bulk_index_post) | **POST** /v1/indexes/{index}/bulk_index | Index a list of SMILES and associated, free-form JSON attributes which are indexed and searchable |
| [**v1_indexes_index_delete**](DefaultApi.md#v1_indexes_index_delete) | **DELETE** /v1/indexes/{index} | Delete an index |
| [**v1_indexes_index_get**](DefaultApi.md#v1_indexes_index_get) | **GET** /v1/indexes/{index} | Get extended information about an index |
| [**v1_indexes_index_merge_post**](DefaultApi.md#v1_indexes_index_merge_post) | **POST** /v1/indexes/{index}/merge | Merge segments inside the index |
| [**v1_indexes_index_post**](DefaultApi.md#v1_indexes_index_post) | **POST** /v1/indexes/{index} | Create an index |
| [**v1_indexes_index_search_basic_get**](DefaultApi.md#v1_indexes_index_search_basic_get) | **GET** /v1/indexes/{index}/search/basic | Perform basic query search against index |
| [**v1_indexes_index_search_identity_get**](DefaultApi.md#v1_indexes_index_search_identity_get) | **GET** /v1/indexes/{index}/search/identity | Perform identity search (i.e. exact match) against index |
| [**v1_indexes_index_search_similarity_get**](DefaultApi.md#v1_indexes_index_search_similarity_get) | **GET** /v1/indexes/{index}/search/similarity | Perform similarity search against index |
| [**v1_indexes_index_search_substructure_get**](DefaultApi.md#v1_indexes_index_search_substructure_get) | **GET** /v1/indexes/{index}/search/substructure | Perform substructure search against index |
| [**v1_indexes_index_search_superstructure_get**](DefaultApi.md#v1_indexes_index_search_superstructure_get) | **GET** /v1/indexes/{index}/search/superstructure | Perform superstructure search against index |
| [**v1_schemas_get**](DefaultApi.md#v1_schemas_get) | **GET** /v1/schemas | List schemas available for creating indexes |
| [**v1_standardize_post**](DefaultApi.md#v1_standardize_post) | **POST** /v1/standardize | Pass a list of SMILES through fragment_parent, uncharger, and canonicalization routines |


## v1_convert_mol_block_to_smiles_post

> <Array<ConvertedSmiles>> v1_convert_mol_block_to_smiles_post(sanitize, mol_block)

Convert a list of SMILES to molblocks

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
sanitize = 'sanitize_example' # String | 
mol_block = [Cheminee::MolBlock.new({mol_block: 'mol_block_example'})] # Array<MolBlock> | 

begin
  # Convert a list of SMILES to molblocks
  result = api_instance.v1_convert_mol_block_to_smiles_post(sanitize, mol_block)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_convert_mol_block_to_smiles_post: #{e}"
end
```

#### Using the v1_convert_mol_block_to_smiles_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConvertedSmiles>>, Integer, Hash)> v1_convert_mol_block_to_smiles_post_with_http_info(sanitize, mol_block)

```ruby
begin
  # Convert a list of SMILES to molblocks
  data, status_code, headers = api_instance.v1_convert_mol_block_to_smiles_post_with_http_info(sanitize, mol_block)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConvertedSmiles>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_convert_mol_block_to_smiles_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sanitize** | **String** |  |  |
| **mol_block** | [**Array&lt;MolBlock&gt;**](MolBlock.md) |  |  |

### Return type

[**Array&lt;ConvertedSmiles&gt;**](ConvertedSmiles.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json


## v1_convert_smiles_to_mol_block_post

> <Array<ConvertedMolBlock>> v1_convert_smiles_to_mol_block_post(smiles)

Convert a list of molblocks to SMILES

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
smiles = [Cheminee::Smiles.new({smiles: 'smiles_example'})] # Array<Smiles> | 

begin
  # Convert a list of molblocks to SMILES
  result = api_instance.v1_convert_smiles_to_mol_block_post(smiles)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_convert_smiles_to_mol_block_post: #{e}"
end
```

#### Using the v1_convert_smiles_to_mol_block_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConvertedMolBlock>>, Integer, Hash)> v1_convert_smiles_to_mol_block_post_with_http_info(smiles)

```ruby
begin
  # Convert a list of molblocks to SMILES
  data, status_code, headers = api_instance.v1_convert_smiles_to_mol_block_post_with_http_info(smiles)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConvertedMolBlock>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_convert_smiles_to_mol_block_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smiles** | [**Array&lt;Smiles&gt;**](Smiles.md) |  |  |

### Return type

[**Array&lt;ConvertedMolBlock&gt;**](ConvertedMolBlock.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json


## v1_indexes_get

> <Array<IndexMeta>> v1_indexes_get

List indexes

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new

begin
  # List indexes
  result = api_instance.v1_indexes_get
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_get: #{e}"
end
```

#### Using the v1_indexes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexMeta>>, Integer, Hash)> v1_indexes_get_with_http_info

```ruby
begin
  # List indexes
  data, status_code, headers = api_instance.v1_indexes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexMeta>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;IndexMeta&gt;**](IndexMeta.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_bulk_delete_delete

> <DeleteIndexBulkResponseOk> v1_indexes_index_bulk_delete_delete(index, bulk_request)

Delete a list of smiles (after standardization) from an index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
bulk_request = Cheminee::BulkRequest.new({docs: [Cheminee::BulkRequestDoc.new({smiles: 'smiles_example'})]}) # BulkRequest | 

begin
  # Delete a list of smiles (after standardization) from an index
  result = api_instance.v1_indexes_index_bulk_delete_delete(index, bulk_request)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_bulk_delete_delete: #{e}"
end
```

#### Using the v1_indexes_index_bulk_delete_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteIndexBulkResponseOk>, Integer, Hash)> v1_indexes_index_bulk_delete_delete_with_http_info(index, bulk_request)

```ruby
begin
  # Delete a list of smiles (after standardization) from an index
  data, status_code, headers = api_instance.v1_indexes_index_bulk_delete_delete_with_http_info(index, bulk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteIndexBulkResponseOk>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_bulk_delete_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **bulk_request** | [**BulkRequest**](BulkRequest.md) |  |  |

### Return type

[**DeleteIndexBulkResponseOk**](DeleteIndexBulkResponseOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json


## v1_indexes_index_bulk_index_post

> <PostIndexBulkResponseOk> v1_indexes_index_bulk_index_post(index, bulk_request)

Index a list of SMILES and associated, free-form JSON attributes which are indexed and searchable

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
bulk_request = Cheminee::BulkRequest.new({docs: [Cheminee::BulkRequestDoc.new({smiles: 'smiles_example'})]}) # BulkRequest | 

begin
  # Index a list of SMILES and associated, free-form JSON attributes which are indexed and searchable
  result = api_instance.v1_indexes_index_bulk_index_post(index, bulk_request)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_bulk_index_post: #{e}"
end
```

#### Using the v1_indexes_index_bulk_index_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostIndexBulkResponseOk>, Integer, Hash)> v1_indexes_index_bulk_index_post_with_http_info(index, bulk_request)

```ruby
begin
  # Index a list of SMILES and associated, free-form JSON attributes which are indexed and searchable
  data, status_code, headers = api_instance.v1_indexes_index_bulk_index_post_with_http_info(index, bulk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostIndexBulkResponseOk>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_bulk_index_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **bulk_request** | [**BulkRequest**](BulkRequest.md) |  |  |

### Return type

[**PostIndexBulkResponseOk**](PostIndexBulkResponseOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json


## v1_indexes_index_delete

> <IndexMeta> v1_indexes_index_delete(index)

Delete an index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 

begin
  # Delete an index
  result = api_instance.v1_indexes_index_delete(index)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_delete: #{e}"
end
```

#### Using the v1_indexes_index_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IndexMeta>, Integer, Hash)> v1_indexes_index_delete_with_http_info(index)

```ruby
begin
  # Delete an index
  data, status_code, headers = api_instance.v1_indexes_index_delete_with_http_info(index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IndexMeta>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |

### Return type

[**IndexMeta**](IndexMeta.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_get

> <IndexSchema> v1_indexes_index_get(index)

Get extended information about an index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 

begin
  # Get extended information about an index
  result = api_instance.v1_indexes_index_get(index)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_get: #{e}"
end
```

#### Using the v1_indexes_index_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IndexSchema>, Integer, Hash)> v1_indexes_index_get_with_http_info(index)

```ruby
begin
  # Get extended information about an index
  data, status_code, headers = api_instance.v1_indexes_index_get_with_http_info(index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IndexSchema>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |

### Return type

[**IndexSchema**](IndexSchema.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_merge_post

> String v1_indexes_index_merge_post(index)

Merge segments inside the index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 

begin
  # Merge segments inside the index
  result = api_instance.v1_indexes_index_merge_post(index)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_merge_post: #{e}"
end
```

#### Using the v1_indexes_index_merge_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> v1_indexes_index_merge_post_with_http_info(index)

```ruby
begin
  # Merge segments inside the index
  data, status_code, headers = api_instance.v1_indexes_index_merge_post_with_http_info(index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_merge_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/json; charset=utf-8


## v1_indexes_index_post

> <IndexMeta> v1_indexes_index_post(index, schema)

Create an index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
schema = 'schema_example' # String | 

begin
  # Create an index
  result = api_instance.v1_indexes_index_post(index, schema)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_post: #{e}"
end
```

#### Using the v1_indexes_index_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IndexMeta>, Integer, Hash)> v1_indexes_index_post_with_http_info(index, schema)

```ruby
begin
  # Create an index
  data, status_code, headers = api_instance.v1_indexes_index_post_with_http_info(index, schema)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IndexMeta>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **schema** | **String** |  |  |

### Return type

[**IndexMeta**](IndexMeta.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_search_basic_get

> <Array<QuerySearchHit>> v1_indexes_index_search_basic_get(index, query, opts)

Perform basic query search against index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
query = 'query_example' # String | 
opts = {
  limit: 56 # Integer | 
}

begin
  # Perform basic query search against index
  result = api_instance.v1_indexes_index_search_basic_get(index, query, opts)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_basic_get: #{e}"
end
```

#### Using the v1_indexes_index_search_basic_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<QuerySearchHit>>, Integer, Hash)> v1_indexes_index_search_basic_get_with_http_info(index, query, opts)

```ruby
begin
  # Perform basic query search against index
  data, status_code, headers = api_instance.v1_indexes_index_search_basic_get_with_http_info(index, query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<QuerySearchHit>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_basic_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **query** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |

### Return type

[**Array&lt;QuerySearchHit&gt;**](QuerySearchHit.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_search_identity_get

> <Array<StructureSearchHit>> v1_indexes_index_search_identity_get(index, smiles, opts)

Perform identity search (i.e. exact match) against index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
smiles = 'smiles_example' # String | 
opts = {
  use_chirality: true, # Boolean | 
  extra_query: 'extra_query_example', # String | 
  use_scaffolds: true # Boolean | 
}

begin
  # Perform identity search (i.e. exact match) against index
  result = api_instance.v1_indexes_index_search_identity_get(index, smiles, opts)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_identity_get: #{e}"
end
```

#### Using the v1_indexes_index_search_identity_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StructureSearchHit>>, Integer, Hash)> v1_indexes_index_search_identity_get_with_http_info(index, smiles, opts)

```ruby
begin
  # Perform identity search (i.e. exact match) against index
  data, status_code, headers = api_instance.v1_indexes_index_search_identity_get_with_http_info(index, smiles, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StructureSearchHit>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_identity_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **smiles** | **String** |  |  |
| **use_chirality** | **Boolean** |  | [optional] |
| **extra_query** | **String** |  | [optional] |
| **use_scaffolds** | **Boolean** |  | [optional] |

### Return type

[**Array&lt;StructureSearchHit&gt;**](StructureSearchHit.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_search_similarity_get

> <Array<StructureSearchHit>> v1_indexes_index_search_similarity_get(index, smiles, opts)

Perform similarity search against index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
smiles = 'smiles_example' # String | 
opts = {
  result_limit: 56, # Integer | 
  tautomer_limit: 56, # Integer | 
  search_percent_limit: 3.4, # Float | 
  tanimoto_minimum: 3.4, # Float | 
  extra_query: 'extra_query_example' # String | 
}

begin
  # Perform similarity search against index
  result = api_instance.v1_indexes_index_search_similarity_get(index, smiles, opts)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_similarity_get: #{e}"
end
```

#### Using the v1_indexes_index_search_similarity_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StructureSearchHit>>, Integer, Hash)> v1_indexes_index_search_similarity_get_with_http_info(index, smiles, opts)

```ruby
begin
  # Perform similarity search against index
  data, status_code, headers = api_instance.v1_indexes_index_search_similarity_get_with_http_info(index, smiles, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StructureSearchHit>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_similarity_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **smiles** | **String** |  |  |
| **result_limit** | **Integer** |  | [optional] |
| **tautomer_limit** | **Integer** |  | [optional] |
| **search_percent_limit** | **Float** |  | [optional] |
| **tanimoto_minimum** | **Float** |  | [optional] |
| **extra_query** | **String** |  | [optional] |

### Return type

[**Array&lt;StructureSearchHit&gt;**](StructureSearchHit.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_search_substructure_get

> <Array<StructureSearchHit>> v1_indexes_index_search_substructure_get(index, smiles, opts)

Perform substructure search against index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
smiles = 'smiles_example' # String | 
opts = {
  use_chirality: true, # Boolean | 
  result_limit: 56, # Integer | 
  tautomer_limit: 56, # Integer | 
  extra_query: 'extra_query_example', # String | 
  use_scaffolds: true # Boolean | 
}

begin
  # Perform substructure search against index
  result = api_instance.v1_indexes_index_search_substructure_get(index, smiles, opts)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_substructure_get: #{e}"
end
```

#### Using the v1_indexes_index_search_substructure_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StructureSearchHit>>, Integer, Hash)> v1_indexes_index_search_substructure_get_with_http_info(index, smiles, opts)

```ruby
begin
  # Perform substructure search against index
  data, status_code, headers = api_instance.v1_indexes_index_search_substructure_get_with_http_info(index, smiles, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StructureSearchHit>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_substructure_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **smiles** | **String** |  |  |
| **use_chirality** | **Boolean** |  | [optional] |
| **result_limit** | **Integer** |  | [optional] |
| **tautomer_limit** | **Integer** |  | [optional] |
| **extra_query** | **String** |  | [optional] |
| **use_scaffolds** | **Boolean** |  | [optional] |

### Return type

[**Array&lt;StructureSearchHit&gt;**](StructureSearchHit.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_indexes_index_search_superstructure_get

> <Array<StructureSearchHit>> v1_indexes_index_search_superstructure_get(index, smiles, opts)

Perform superstructure search against index

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
smiles = 'smiles_example' # String | 
opts = {
  use_chirality: true, # Boolean | 
  result_limit: 56, # Integer | 
  tautomer_limit: 56, # Integer | 
  extra_query: 'extra_query_example', # String | 
  use_scaffolds: true # Boolean | 
}

begin
  # Perform superstructure search against index
  result = api_instance.v1_indexes_index_search_superstructure_get(index, smiles, opts)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_superstructure_get: #{e}"
end
```

#### Using the v1_indexes_index_search_superstructure_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StructureSearchHit>>, Integer, Hash)> v1_indexes_index_search_superstructure_get_with_http_info(index, smiles, opts)

```ruby
begin
  # Perform superstructure search against index
  data, status_code, headers = api_instance.v1_indexes_index_search_superstructure_get_with_http_info(index, smiles, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StructureSearchHit>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_superstructure_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **smiles** | **String** |  |  |
| **use_chirality** | **Boolean** |  | [optional] |
| **result_limit** | **Integer** |  | [optional] |
| **tautomer_limit** | **Integer** |  | [optional] |
| **extra_query** | **String** |  | [optional] |
| **use_scaffolds** | **Boolean** |  | [optional] |

### Return type

[**Array&lt;StructureSearchHit&gt;**](StructureSearchHit.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_schemas_get

> <Array<Schema>> v1_schemas_get

List schemas available for creating indexes

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new

begin
  # List schemas available for creating indexes
  result = api_instance.v1_schemas_get
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_schemas_get: #{e}"
end
```

#### Using the v1_schemas_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Schema>>, Integer, Hash)> v1_schemas_get_with_http_info

```ruby
begin
  # List schemas available for creating indexes
  data, status_code, headers = api_instance.v1_schemas_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Schema>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_schemas_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Schema&gt;**](Schema.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_standardize_post

> <Array<StandardizedSmiles>> v1_standardize_post(smiles, opts)

Pass a list of SMILES through fragment_parent, uncharger, and canonicalization routines

### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
smiles = [Cheminee::Smiles.new({smiles: 'smiles_example'})] # Array<Smiles> | 
opts = {
  attempt_fix: 'attempt_fix_example' # String | 
}

begin
  # Pass a list of SMILES through fragment_parent, uncharger, and canonicalization routines
  result = api_instance.v1_standardize_post(smiles, opts)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_standardize_post: #{e}"
end
```

#### Using the v1_standardize_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StandardizedSmiles>>, Integer, Hash)> v1_standardize_post_with_http_info(smiles, opts)

```ruby
begin
  # Pass a list of SMILES through fragment_parent, uncharger, and canonicalization routines
  data, status_code, headers = api_instance.v1_standardize_post_with_http_info(smiles, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StandardizedSmiles>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_standardize_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smiles** | [**Array&lt;Smiles&gt;**](Smiles.md) |  |  |
| **attempt_fix** | **String** |  | [optional] |

### Return type

[**Array&lt;StandardizedSmiles&gt;**](StandardizedSmiles.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json

