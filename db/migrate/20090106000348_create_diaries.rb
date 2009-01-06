class CreateDiaries < ActiveRecord::Migration
  def self.up
    create_table :diaries do |t|
      t.string :title
      t.text :body
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :diaries
  end
end