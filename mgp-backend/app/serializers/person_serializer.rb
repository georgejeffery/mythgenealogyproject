class PersonSerializer < ActiveModel::Serializer
  attributes(*Person.attribute_names.map(&:to_sym))

  has_many :children
end
