module Mutations
    class UpdateGolf < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :params, InputTypes::Golf, required: true
  
      field :golf, ObjectTypes::Golf, null: false
  
      def resolve(id:, params:)
        golf = Golf.find(id)
        golf.update!(params.to_h)
  
        { golf: golf }
      rescue => e
        GraphQL::ExecutionError.new(e.message)
      end
    end
  end