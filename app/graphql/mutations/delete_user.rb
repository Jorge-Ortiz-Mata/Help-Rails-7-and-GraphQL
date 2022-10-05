class Mutations::DeleteUser < GraphQL::Schema::Mutation

  null true
  argument :id, ID, required: true

  def resolve(id:)
    User.find(id).destroy
    true
  end
end
