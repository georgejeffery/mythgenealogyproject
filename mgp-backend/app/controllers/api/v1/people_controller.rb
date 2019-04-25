class Api::V1::PeopleController < API::V1::BaseController
  
  def index
    people = Person.all
    render json: people, each_serializer: PersonSerializer
  end

end
