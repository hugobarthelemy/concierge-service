require 'spec_helper'

describe User do
  subject { build(:user) }

  it "should validate uniqueness of email" do
    create(:user, email: "mail@test.com")
    expect {
      create(:user, email: "mail@test.com")
    }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
