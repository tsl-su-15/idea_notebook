class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :contents
      t.integer :idea_id

      t.timestamps

    end
  end
end
