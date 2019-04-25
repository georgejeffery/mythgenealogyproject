class TagSerializer < ActiveModel::Serializer
  attributes(*Tag.attribute_names.map(&:to_sym))

  has_many :people, serializer: PersonSerializer
end