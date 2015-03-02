class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :image_name
      t.binary :image

      t.timestamps
    end
  end
end
