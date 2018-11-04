class AddUsersHeadingsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users_headings, id: :uuid do |t|
      t.uuid :user_id,      null: false
      t.uuid :heading_id,   null: false
    end
  end
end
