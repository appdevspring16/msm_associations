class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.string :dob
      t.text :bio
      t.string :image_url

      t.timestamps

    end
  end
end
