module Mutations
    class CreateGolf < Mutations::AuthMutation
      argument :params, InputTypes::Golf, required: true
  
      field :golf, ObjectTypes::Golf, null: false
  
      def resolve(params:)
        user = context[:current_user]
        golf = Golf.create!(params.to_h)
  
        { golf: golf }
      rescue => e
        GraphQL::ExecutionError.new(e.message)
      end
    end
  end