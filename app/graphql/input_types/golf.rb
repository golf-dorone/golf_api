class InputTypes::Golf < Types::BaseInputObject
    graphql_name 'GolfAttributes' # ObjectTypes::Golfと名前がバッティングしないようにする
  
    argument :title, String, required: false
    argument :description, String, required: false
  end