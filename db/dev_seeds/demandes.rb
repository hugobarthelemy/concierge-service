section "Creating Demandes" do
  def create_demande
    user_applicant = User.all.sample
    user_volunteer = [User.all.sample(rand(2..3)), nil].sample
    volunteer_ids = if user_volunteer.nil?
      []
    elsif user_volunteer.size == 1
      [user_volunteer.id]
    else
      user_volunteer.map { |d| d.id }
    end
    heading = Heading.all.sample
    Demande.create(
      applicant_id: user_applicant.id,
      volunteer_ids: volunteer_ids,
      heading_id: heading.id,
      title: "J'ai besoin de #{heading.title}",
      description: Faker::Lorem.paragraph(2),
      status: %w(pending, accepted, done).sample
    )
  end

  20.times { create_demande }
end
