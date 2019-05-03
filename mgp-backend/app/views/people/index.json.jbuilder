json.nodes do
  json.array! @people, partial: "people/person", as: :person
end

json.links do
  @parents = Parent.all
  json.array! @parents, partial: "people/link", as: :link
end
