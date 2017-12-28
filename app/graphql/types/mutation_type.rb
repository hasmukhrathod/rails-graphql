Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end
  
  field :createAuthor, Types::AuthorType do
    description "Create Author"
    argument :first_name, types.String
    argument :last_name, types.String
    argument :dob, types.String
    resolve ->(obj,args,ctx) do
      Author.create(args.to_h)
    end
  end
end
