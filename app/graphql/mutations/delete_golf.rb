module Mutations
    class DeleteGolf < Mutations::BaseMutation
      argument :id, ID, required: true
  
      field :id, ID, null: false
  
      def resolve(id:)
        Golf.find(id).delete
  
        { id: id }
      rescue => e
        GraphQL::ExecutionError.new(e.message)
      end
    end
  end