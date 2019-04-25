class CreatePersonTags < ActiveRecord::Migration[5.2]
  def change
    create_table :people_tags, id:false do |t|
      t.belongs_to :tag, index:true
      t.belongs_to :person, index:true

      t.timestamps
    end
  end
end
