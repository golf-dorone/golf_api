module Queries
    class Inquiries < Queries::BaseQuery
  
      type [ObjectTypes::Inquiry], null: false
  
      def resolve
        ::Inquiry.all.order(:id)
      end
    end
  end