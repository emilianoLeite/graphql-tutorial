Types::PersonType = GraphQL::ObjectType.define do
  name "Person"
  field :name, !types.String
end
