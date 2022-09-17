Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
    # ヘルスチェック
    get '/health_check', to: 'health_checks#index'
    # 記事一覧
    get '/blogs', to: 'blogs#index'
    # 記事詳細  
    get '/blogs/:id', to: 'blogs#show'
    # 記事作成
    post '/blogs', to: 'blogs#create'
end
