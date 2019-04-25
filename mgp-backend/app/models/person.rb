class Person < ApplicationRecord

  has_and_belongs_to_many :tags

    # source: :follower matches with the belong_to :follower identification in the Follow model 
  
  # follower_follows "names" the Follow join table for accessing through the follower association
  has_many :children_parents, foreign_key: :parent_id, class_name: "Parent"
  has_many :children, through: :children_parents, source: :child

  # source: :followee matches with the belong_to :followee identification in the Follow model 	
  
  # followee_follows "names" the Follow join table for accessing through the followee association
  has_many :parent_children, foreign_key: :child_id, class_name: "Parent"
  has_many :parents, through: :parent_children, source: :parent

  def fathers
    self.parents.select{|parent| parent.gender == "M"}
  end

  def mothers
    self.parents.select{|parent| parent.gender == "F"}
  end

  def daughters
    self.children.select{|child| child.gender == "F"}
  end

  def sons
    self.children.select{|child| child.gender == "M"}
  end

  def add_parent(person)
    Parent.create(parent: person, child: self)
  end

  def add_child(person)
    Parent.create(parent:self, child:person)
  end

  def relationships
    r = self.children
    relations = []
    r.each do |child|
      p = child.parents.select{|parent| parent != self}
      relations.push(p)
    end
    relations
  end

  

end
