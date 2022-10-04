class Mutations::CreateUser < GraphQL::Schema::Mutation

  null true

  argument :first_name, String, required: true
  argument :last_name, String, required: false
  argument :street, String, required: false
  argument :number, Int, required: false
  argument :city, String, required: false
  argument :postcode, Int, required: false
  argument :country, String, required: false

  def resolve(first_name:, last_name:, street:, number:, city:, postcode:, country:)
    User.create(
                first_name: first_name, last_name: last_name, street: street,
                number: number, city: city, postcode: postcode, country: country
      )
  end

end
