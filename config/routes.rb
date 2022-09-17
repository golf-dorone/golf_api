Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # ヘルスチェック
  get '/health_check', to: 'health_checks#index'
  # 記事一覧
  get '/blogs', to: 'blogs#index'
  # 記事詳細  
  get '/blogs/:id', to: 'blogs#show'
  # 記事作成
  post '/blogs', to: 'blogs#create'
  # mount_devise_token_auth_for 'User', at: 'auth',
  # controllers: {
  #     registrations: 'auth/registrations'
  #   }
  #   # ログインユーザー取得のルーティング
  #   namespace :auth do
  #     resources :sessions, only: %i[index]
  #   end
  namespace :api do
    namespace :v1 do
      resources :test, only: %i[index]

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: %i[index]
      end
    end
  end

    if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
end
