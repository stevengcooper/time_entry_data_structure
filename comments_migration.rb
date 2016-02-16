require './activerecord'

class CommentsMigration < ActiveRecord : Migration
  def change
    create_table :comments do |t|
      t.integer :client_id
      t.integer :user_id
      t.integer :project_id
      t.string :comments
      t. string :group_assignment_id
      t. string :user_input
      t.integer :industry_id
    end
  end
end
