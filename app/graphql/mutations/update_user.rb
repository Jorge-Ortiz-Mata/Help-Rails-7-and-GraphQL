class Mutations::UpdateUser < GraphQL::Schema::Mutation

  null true
  argument :user, Types::UserInputType, required: true
  def resolve(user:)
    existing = User.find(user[:id])
    existing&.update(user.to_h)
  end
end
