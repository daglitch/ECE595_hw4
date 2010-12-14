class CreateSubtopics < ActiveRecord::Migration
  def self.up
    create_table :subtopics do |t|
      t.integer :topic_id
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :subtopics
  end
end
