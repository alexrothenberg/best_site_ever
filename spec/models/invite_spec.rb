require 'spec_helper'

describe Invite do
  it 'should be able to store an email' do
    FactoryGirl.create(:invite, :email => 'someone@someco.com')
    Invite.first.email.should == 'someone@someco.com'
  end
end
