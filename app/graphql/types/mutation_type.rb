Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  field :createPost, Types::PostType do
    description "Creates a post"
    argument :title, !types.String
    argument :author_id, !types.ID

    resolve ->(obj, args, ctx) do
      Post.create(title: args[:title], author_id: args[:author_id])
    end
  end
end
