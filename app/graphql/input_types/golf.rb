class InputTypes::Golf < Types::BaseInputObject
    graphql_name 'GolfAttributes'
  
    argument :title, String, required: false
    argument :description, String, required: false
  end