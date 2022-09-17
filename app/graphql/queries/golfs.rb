module Queries
    class Golfs < Queries::BaseQuery
  
      type [ObjectTypes::Golf], null: false
  
      def resolve
        ::Golf.all.order(:id)
      end
    end
  end