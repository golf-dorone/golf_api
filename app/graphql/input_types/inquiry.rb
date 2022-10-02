class InputTypes::Inquiry < Types::BaseInputObject
    graphql_name 'InquiryAttributes'
  
    argument :title, String, required: true
    argument :description, String, required: true
    argument :name, String, required: true
    argument :contact, String, required: true 
  end