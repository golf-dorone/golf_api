module Types
  class MutationType < Types::BaseObject
    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
    field :create_golf, mutation: Mutations::CreateGolf
    field :update_golf, mutation: Mutations::UpdateGolf
    field :delete_golf, mutation: Mutations::DeleteGolf
  end
end
