Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    argument :name, types.String, "Enter your name"
    resolve ->(obj, args, ctx) {
      "Hello #{args[:name]}"
    }
  end
  
  field :author, Types::AuthorType do
    description "Author Type"
    argument :id, types.ID, "ID of an author record"
    resolve ->(obj, args, ctx) {
      Author.find_by(id: args[:id])
    }
  end
  
  field :all_authors, types[Types::AuthorType] do
    description "All authors"
    resolve ->(_,_,_) {
      Author.all
    }
  end
end
