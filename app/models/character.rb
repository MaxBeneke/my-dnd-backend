class Character < ApplicationRecord
  belongs_to :user
  has_one :proficiency_list
end

# require "graphql/client"
# require "graphql/client/http"

# module API

#   HTTP = GraphQL::Client::HTTP.new("https://www.dnd5eapi.co/graphql") do 
#     def headers(context)
#     end
#   end

#   # Schema = GraphQL::Client.load_schema(HTTP)

#   GraphQL::Client.dump_schema(API::HTTP, "./introspectionSchema.json")

#   Schema = GraphQL::Client.load_schema("./introspectionSchema.json")

#   Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
# end