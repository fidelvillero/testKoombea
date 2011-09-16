class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :link do |t|
      t.string :link
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :link
  end
end
