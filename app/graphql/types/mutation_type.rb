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

  field :updatePost, Types::PostType do
    description "Updates a post"
    argument :id, !types.ID
    argument :title, types.String
    argument :rating, types.Int

    resolve ->(obj, args, ctx) do
      post = Post.find(args[:id])
      post.update(args.to_h)
      post
    end
  end

  field :deletePost, types.Boolean do
    description "Deletes a post"
    argument :id, !types.ID

    resolve ->(obj, args, ctx) do
      Post.find(args[:id]).destroy
    end
  end
end
