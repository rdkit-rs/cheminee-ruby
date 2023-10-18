# Cheminee::DefaultApi

All URIs are relative to *http://localhost:3000/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_indexes_get**](DefaultApi.md#v1_indexes_get) | **GET** /v1/indexes |  |
| [**v1_indexes_index_bulk_index_post**](DefaultApi.md#v1_indexes_index_bulk_index_post) | **POST** /v1/indexes/{index}/bulk_index |  |
| [**v1_indexes_index_get**](DefaultApi.md#v1_indexes_index_get) | **GET** /v1/indexes/{index} |  |
| [**v1_indexes_index_post**](DefaultApi.md#v1_indexes_index_post) | **POST** /v1/indexes/{index} |  |
| [**v1_indexes_index_search_substructure_get**](DefaultApi.md#v1_indexes_index_search_substructure_get) | **GET** /v1/indexes/{index}/search/substructure |  |
| [**v1_schemas_get**](DefaultApi.md#v1_schemas_get) | **GET** /v1/schemas |  |
| [**v1_standardize_post**](DefaultApi.md#v1_standardize_post) | **POST** /v1/standardize |  |


## v1_indexes_get

> <Array<IndexMeta>> v1_indexes_get



### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new

begin
  
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
- **Accept**: application/json; charset=utf-8


## v1_indexes_index_bulk_index_post

> <PostIndexBulkResponseOk> v1_indexes_index_bulk_index_post(index, bulk_request)



### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
bulk_request = Cheminee::BulkRequest.new({docs: [Cheminee::BulkRequestDoc.new({smile: 'smile_example'})]}) # BulkRequest | 

begin
  
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
- **Accept**: application/json; charset=utf-8


## v1_indexes_index_get

> <Array<IndexMeta>> v1_indexes_index_get(index)



### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 

begin
  
  result = api_instance.v1_indexes_index_get(index)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_get: #{e}"
end
```

#### Using the v1_indexes_index_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IndexMeta>>, Integer, Hash)> v1_indexes_index_get_with_http_info(index)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_indexes_index_get_with_http_info(index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IndexMeta>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |

### Return type

[**Array&lt;IndexMeta&gt;**](IndexMeta.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## v1_indexes_index_post

> <IndexMeta> v1_indexes_index_post(index, schema, opts)



### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
schema = 'schema_example' # String | 
opts = {
  sort_by: 'sort_by_example' # String | 
}

begin
  
  result = api_instance.v1_indexes_index_post(index, schema, opts)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_post: #{e}"
end
```

#### Using the v1_indexes_index_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IndexMeta>, Integer, Hash)> v1_indexes_index_post_with_http_info(index, schema, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_indexes_index_post_with_http_info(index, schema, opts)
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
| **sort_by** | **String** |  | [optional] |

### Return type

[**IndexMeta**](IndexMeta.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## v1_indexes_index_search_substructure_get

> <Array<SubstructureSearchHit>> v1_indexes_index_search_substructure_get(index, q)



### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
index = 'index_example' # String | 
q = 'q_example' # String | 

begin
  
  result = api_instance.v1_indexes_index_search_substructure_get(index, q)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_substructure_get: #{e}"
end
```

#### Using the v1_indexes_index_search_substructure_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SubstructureSearchHit>>, Integer, Hash)> v1_indexes_index_search_substructure_get_with_http_info(index, q)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_indexes_index_search_substructure_get_with_http_info(index, q)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SubstructureSearchHit>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_indexes_index_search_substructure_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** |  |  |
| **q** | **String** |  |  |

### Return type

[**Array&lt;SubstructureSearchHit&gt;**](SubstructureSearchHit.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## v1_schemas_get

> <Array<Schema>> v1_schemas_get



### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new

begin
  
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
- **Accept**: application/json; charset=utf-8


## v1_standardize_post

> <Array<StandardizedSmile>> v1_standardize_post(smile)



### Examples

```ruby
require 'time'
require 'cheminee'

api_instance = Cheminee::DefaultApi.new
smile = [Cheminee::Smile.new({smile: 'smile_example'})] # Array<Smile> | 

begin
  
  result = api_instance.v1_standardize_post(smile)
  p result
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_standardize_post: #{e}"
end
```

#### Using the v1_standardize_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StandardizedSmile>>, Integer, Hash)> v1_standardize_post_with_http_info(smile)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_standardize_post_with_http_info(smile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StandardizedSmile>>
rescue Cheminee::ApiError => e
  puts "Error when calling DefaultApi->v1_standardize_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smile** | [**Array&lt;Smile&gt;**](Smile.md) |  |  |

### Return type

[**Array&lt;StandardizedSmile&gt;**](StandardizedSmile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

