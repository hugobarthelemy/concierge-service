section "Creating Users" do
  def create_user(email)
    password = '12345678'
    date_time = (
      Time.now - rand(0.seconds..2.years) + rand(0.seconds..2.years)
    ).to_date
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      address_line1: Faker::Address.street_address,
      address_line2: [Faker::Address.secondary_address, nil].sample,
      city: Faker::Address.city,
      postal_code: Faker::Address.zip_code,
      mobile_phone_number: Faker::PhoneNumber.cell_phone,
      fixed_line_phone_number: [Faker::PhoneNumber.phone_number, nil].sample,
      email: email,
      password: password,
      password_confirmation: password,
      date_of_birth: rand((Time.current - 80.years)..(Time.current - 16.years)).to_date,
      priority_contact: ["Téléphone portable", "Téléphone fixe", "Email"].sample,
      interior_regulations_accepted_at: date_time,
      statutes_accepted_at: date_time,
      personal_data_policy_accepted_at: date_time,
      publication_picture_accepted_at: date_time
    )
    user.headings = Heading.all.sample(rand(0..Heading.all.count))
  end

  def create_admin
    create_user("dev@dev.com")
  end

  10.times { create_user(Faker::Internet.email) }
  create_admin
end
