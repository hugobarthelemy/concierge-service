class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Custom sign up parameters.
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:first_name,
             :last_name,
             :address_line1,
             :address_line2,
             :postal_code,
             :mobile_phone_number,
             :fixed_line_phone_number,
             :date_of_birth,
             :date_of_birth,
             :date_of_birth,
             # :email,
             # :password,
             # :password_confirmation,
             :priority_contact,
             :interior_regulations_accepted_at,
             :statutes_accepted_at,
             :personal_data_policy_accepted_at,
             :publication_picture_accepted_at])
  end
end
