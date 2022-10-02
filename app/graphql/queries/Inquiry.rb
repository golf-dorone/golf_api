module Queries
    class Inquiry < Queries::BaseQuery
      argument :id, ID, required: true
  
      type ObjectTypes::Inquiry, null: false
  
      def resolve(id:)
        ::Inquiry.find(id)
      end
    end
  end