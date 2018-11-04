class AddDemandesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :demandes, id: :uuid do |t|
      t.timestamps null: false
      t.uuid :user_id,      null: false
      t.uuid :heading_id,   null: false
      t.text :title,        null: false
      t.text :description,  null: false
    end
  end
end
