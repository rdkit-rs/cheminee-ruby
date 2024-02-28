=begin
#Cheminée

#Cheminée: The Chemical Structure Search Engine

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.4.0-SNAPSHOT

=end

# Common files
require 'cheminee/api_client'
require 'cheminee/api_error'
require 'cheminee/version'
require 'cheminee/configuration'

# Models
require 'cheminee/models/bulk_request'
require 'cheminee/models/bulk_request_doc'
require 'cheminee/models/converted_smiles'
require 'cheminee/models/create_index_error'
require 'cheminee/models/get_indexes_response_error'
require 'cheminee/models/index_meta'
require 'cheminee/models/index_schema'
require 'cheminee/models/list_index_response_err'
require 'cheminee/models/mol_block'
require 'cheminee/models/post_index_bulk_response_error'
require 'cheminee/models/post_index_bulk_response_ok'
require 'cheminee/models/post_index_bulk_response_ok_status'
require 'cheminee/models/query_response_error'
require 'cheminee/models/query_search_hit'
require 'cheminee/models/schema'
require 'cheminee/models/smiles'
require 'cheminee/models/standardized_smiles'
require 'cheminee/models/structure_response_error'
require 'cheminee/models/structure_search_hit'

# APIs
require 'cheminee/api/default_api'

module Cheminee
  class << self
    # Customize default settings for the SDK using block.
    #   Cheminee.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
