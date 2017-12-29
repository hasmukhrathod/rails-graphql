class Mutations::UpdateAuthor < GraphQL::Function
    
    #arguments
    argument :first_name, types.String
    argument :last_name, types.String
    argument :dob, types.String
    argument :id, types.ID
    
    #return type
    type Types::AuthorType
    
    ##
    def call(obj, args, ctx)
        author = Author.find_by(id: args[:id])
        author.update(args.to_h) if author
        author
    end
end