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
    # --------- Getting all Users. -----------
    field :users, [Types::UserType], null: true

    def users
      User.all
    end
    # ----------------------------------------
    # --------- Getting all Posts -------------
    field :posts, [Types::PostType], null: true

    def posts
      Post.all
    end
  end
end
