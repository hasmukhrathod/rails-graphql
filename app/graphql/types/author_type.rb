Types::AuthorType = GraphQL::ObjectType.define do
    
  name "AuthorType"
  field :first_name, types.String
  field :last_name, types.String
  field :dob, types.String
  field :id, !types.ID
  field :full_name, types.String
  field :coordinates, Types::CoordinateType do
    description "Author's coordinates"
  end
end