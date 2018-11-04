class CreateHeadings < ActiveRecord::Migration[5.2]
  def change
    create_table :headings, id: :uuid do |t|
      t.timestamps null: false
      t.text  :human_id
      t.text  :title, null: false
    end
  end
end
