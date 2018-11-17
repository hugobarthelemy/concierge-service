class ImproveUserInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name,                       :text, null: false
    add_column :users, :last_name,                        :text, null: false
    add_column :users, :address_line1,                    :text, null: false
    add_column :users, :address_line2,                    :text
    add_column :users, :city,                             :text, null: false
    add_column :users, :postal_code,                      :text, null: false
    add_column :users, :mobile_phone_number,              :text
    add_column :users, :fixed_line_phone_number,          :text
    add_column :users, :date_of_birth,                    :date
    add_column :users, :priority_contact,                 :integer
    add_column :users, :interior_regulations_accepted_at, :datetime, null: false
    add_column :users, :statutes_accepted_at,             :datetime, null: false
    add_column :users, :personal_data_policy_accepted_at, :datetime, null: false
    add_column :users, :publication_picture_accepted_at,  :datetime
    add_column :users, :admin_accepted_at,                :datetime
  end
end
