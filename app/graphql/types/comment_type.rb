Types::CommentType = GraphQL::ObjectType.define do
  name "Comment"
  field :text, !types.String
  field :author, !Types::PersonType
end
