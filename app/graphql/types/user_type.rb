class Types::UserType < Types::BaseObject

  description "Getting just one user"

  field :id, ID, null: false
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :street, String, null: true
  field :number, Int, null: true
  field :city, String, null: true
  field :postcode, Int, null: true
  field :country, String, null: true
  field :full_address, String, null: true
  field :posts, [Types::PostType], null: true


  def full_address
    "Street: #{object.street}; Number: #{object.number}; Post Code: #{object.postcode}; City: #{object.city}"
  end
end

class Types::UserInputType < GraphQL::Schema::InputObject
  graphql_name "UserInputType"
  description "Adding the arguments in this section (params) C/U."

  argument :first_name, String, required: false
  argument :last_name, String, required: false
  argument :street, String, required: false
  argument :number, Int, required: false
  argument :city, String, required: false
  argument :postcode, Int, required: false
  argument :country, String, required: false
end
