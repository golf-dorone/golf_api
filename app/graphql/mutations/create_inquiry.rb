module Mutations
    class CreateInquiry < Mutations::BaseMutation
      argument :params, InputTypes::Inquiry, required: true
  
      field :inquiry, ObjectTypes::Inquiry, null: false
  
      def resolve(params:)
      inquiry = Inquiry.create!(params.to_h)
  
        { inquiry: inquiry }
      rescue => e
        GraphQL::ExecutionError.new(e.message)
      end
    end
  end