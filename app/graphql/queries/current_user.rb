module Queries
    class CurrentUser < Queries::BaseQuery
      type ObjectTypes::User, null: false
  
      def resolve
        context[:current_user]
      end
    end
  end