module Mutations
    class DeleteGolf < Mutations::AuthMutation
      argument :id, ID, required: true
  
      field :id, ID, null: false
  
      def resolve(id:)
        user = context[:current_user]
        Golf.find(id).delete
  
        { id: id }
      rescue => e
        GraphQL::ExecutionError.new(e.message)
      end
    end
  end