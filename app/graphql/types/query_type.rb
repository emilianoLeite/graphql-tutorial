Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :posts, !types[Types::PostType] do
    resolve -> (obj, args, ctx) { Post.all }
  end
end
