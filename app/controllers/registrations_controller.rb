class RegistrationsController < Devise::RegistrationsController
  def create
    # refacto params
    interior_regulations_accepted_at =
      user_params[:interior_regulations_accepted_at] == "true" ? DateTime.now : nil
    statutes_accepted_at =
      user_params[:statutes_accepted_at] == "true" ? DateTime.now : nil
    personal_data_policy_accepted_at =
      user_params[:personal_data_policy_accepted_at] == "true" ? DateTime.now : nil
    publication_picture_accepted_at =
      user_params[:publication_picture_accepted_at] == "true" ? DateTime.now : nil
    priority_contact = 1

    # merge refacto params
    user_hash = user_params.merge(
      {
        interior_regulations_accepted_at: interior_regulations_accepted_at,
        statutes_accepted_at: statutes_accepted_at,
        personal_data_policy_accepted_at: personal_data_policy_accepted_at,
        publication_picture_accepted_at: publication_picture_accepted_at,
        priority_contact: priority_contact
      }
    )
    @user = User.new(user_hash)
    respond_to do |format|
      if @user.save
        flash[:notice] = "New user added"
        format.html { redirect_to root_url }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user)
          .permit(:first_name,
                  :last_name,
                  :address_line1,
                  :address_line2,
                  :postal_code,
                  :mobile_phone_number,
                  :fixed_line_phone_number,
                  :date_of_birth,
                  :date_of_birth,
                  :date_of_birth,
                  :email,
                  :password,
                  :password_confirmation,
                  :priority_contact,
                  :interior_regulations_accepted_at,
                  :statutes_accepted_at,
                  :personal_data_policy_accepted_at,
                  :publication_picture_accepted_at)
  end
end
