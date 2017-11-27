Types::PersonType = GraphQL::ObjectType.define do
  name "Person"
  description 'A person could be the author of a post or a comment.'
  field :id, !types.ID
  field :name, !types.String
end
