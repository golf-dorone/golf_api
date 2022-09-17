module Queries
    class Golf < Queries::BaseQuery
      argument :id, ID, required: true
  
      type ObjectTypes::Golf, null: false
  
      def resolve(id:)
        ::Golf.find(id)
      end
    end
  end