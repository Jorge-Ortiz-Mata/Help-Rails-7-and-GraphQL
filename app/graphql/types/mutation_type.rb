module Types
  class MutationType < Types::BaseObject

    field :create_user, Types::UserType, mutation: Mutations::CreateUser  # Create User
    field :update_user, GraphQL::Types::Boolean, null: false, mutation: Mutations::UpdateUser # Update User



  end
end
