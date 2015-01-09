require "spec_helper"

describe Account do
  it "returns too short for short strings" do
    account = Account.new(swift_string: "123")
    account.valid?.should eq false
    account.errors.full_messages.should eq ["Swift string is not a valid SWIFT code: too_short"]
  end

  it "accepts valid strings" do
    account = Account.new(swift_string: "DEUTDEFF")
    account.valid?.should eq true
  end

  it "doesnt allow nil-values since they should be done with allow_blank" do
    account = Account.new
    account.valid?.should eq false
  end
end
