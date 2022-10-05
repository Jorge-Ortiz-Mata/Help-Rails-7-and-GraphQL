class Types::ErrorType < Types::BaseObject

  description "It displays the erros from the User model."

  field :field_name, String, null: false
  field :errors, [String], null: false
end
