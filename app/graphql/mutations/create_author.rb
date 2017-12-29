class Mutations::CreateAuthor < GraphQL::Function
  
  argument :first_name, types.String
  argument :last_name, types.String
  argument :dob, types.String
  
  #return type
  type Types::AuthorType
  
  ##method call to create author
  def call(obj, args, ctx)
    Author.create (args.to_h)
  end
end