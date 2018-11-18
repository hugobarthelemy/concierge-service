class AddDemandesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :demandes, id: :uuid do |t|
      t.timestamps                null: false
      t.uuid :applicant_id,       null: false
      t.uuid :heading_id,         null: false
      t.text :title,              null: false
      t.text :description,        null: false
      t.text :status,             null: false
      t.text :volunteer_ids, :text, array: true, default: []
    end
  end
end
