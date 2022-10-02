# frozen_string_literal: true

  class ObjectTypes::Inquiry < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :name, String
    field :contact, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end

