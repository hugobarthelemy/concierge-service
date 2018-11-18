class Demande < ApplicationRecord
  belongs_to :applicant, class_name: "User"
  belongs_to :heading, class_name: "Heading"

  def initialize(*args)
    super(*args)
    self.status = "pending"
  end
end
