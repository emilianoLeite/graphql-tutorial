Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :posts, !types[Types::PostType] do
    resolve -> (obj, args, ctx) { Post.all }
  end
  field :people, !types[Types::PersonType] do
    resolve -> (obj, args, ctx) { Person.all }
  end
  field :comments, !types[Types::CommentType] do
    resolve -> (obj, args, ctx) { Comment.all }
  end
end
