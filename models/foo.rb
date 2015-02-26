class Foo
  include Mongoid::Document
  include CRUDModel

  field :name, type:String
end