class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title_en
      t.string :title_fr
      t.string :body_en
      t.string :body_fr
      t.boolean :active

      t.timestamps
    end
  end
end
