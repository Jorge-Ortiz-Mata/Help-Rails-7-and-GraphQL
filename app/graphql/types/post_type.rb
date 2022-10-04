class Types::PostType < Types::BaseObject

  description "Getting post's attributes."

  field :id, ID, null: false
  field :body, String, null: false
  field :user_id, Integer, null: false
  field :user, Types::UserType, null: false
end
