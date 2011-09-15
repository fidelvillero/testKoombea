class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.string :title
      t.text :content
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :contents
  end
end
