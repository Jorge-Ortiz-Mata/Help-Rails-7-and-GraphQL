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
