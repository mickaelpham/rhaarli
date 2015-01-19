class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :links_tags, id: false do |t|
      t.belongs_to :link, index: true
      t.belongs_to :tag,  index: true
    end
  end
end
