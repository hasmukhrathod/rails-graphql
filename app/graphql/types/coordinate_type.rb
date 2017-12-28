Types::CoordinateType = GraphQL::ObjectType.define do
  name "Coordinates"
  field :latitude, types.Float do 
    resolve ->(obj,_,_) {obj.first}  
  end
  field :longitude, types.Float do
    resolve ->(obj,_,_) {obj.last}  
  end
end