class Parent < ApplicationRecord

  belongs_to :child, foreign_key: "child_id", class_name: "Person"
  belongs_to :parent, foreign_key: "parent_id", class_name: "Person"

end
