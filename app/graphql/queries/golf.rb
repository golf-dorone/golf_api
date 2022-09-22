module Queries
    class Golf < Queries::BaseQuery
    # class Golf < Queries::AuthQuery
      argument :id, ID, required: true
  
      type ObjectTypes::Golf, null: false
  
      def resolve(id:)
        ::Golf.find(id)
        # user = context[:current_user] # context[:current_user] でログイン済みユーザ情報を取得できる
        # golfs.find(id)
      end
    end
  end