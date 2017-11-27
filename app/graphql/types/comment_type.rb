Types::CommentType = GraphQL::ObjectType.define do
  name "Comment"
  field :id, !types.ID
  field :text, !types.String
  field :author, !Types::PersonType
end
