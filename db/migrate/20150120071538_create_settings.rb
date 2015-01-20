class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.boolean :default_private_link
      t.string  :page_title
      t.string  :time_zone

      t.timestamps null: false
    end
  end
end
