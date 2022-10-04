module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # --------- Getting Just One User ---------
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
    # -----------------------------------------
    # --------- Getting all users. -----------
    field :users, [Types::UserType], null: true

    def users
      User.all
    end
  end
end
