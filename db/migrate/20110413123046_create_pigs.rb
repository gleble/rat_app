class CreatePigs < ActiveRecord::Migration
  def self.up
    create_table :pigs do |t|
      t.string :cat
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :pigs
  end
end
