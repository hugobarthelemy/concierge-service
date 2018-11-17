if Rails.env.test? || Rails.env.development?
  Faker::Config.locale = 'fr'
end
