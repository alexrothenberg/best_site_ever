require 'spec_helper'

describe InvitesController do
  describe 'PUT #update' do
    let(:invite) { mock(:email => 'someone@someco.com', :save => true) } 
    let(:invite_mailer) { mock }
    before do
      InviteMailer.should_receive(:invite_requested).with(invite).and_return(invite_mailer)
      invite_mailer.should_receive(:deliver)
      Invite.should_receive(:new).with('email' => 'someone@someco.com').and_return(invite)
      post :create, :invite => { :email => 'someone@someco.com' } 
    end
    it { should redirect_to root_url }
    it { should set_the_flash.to("Thanks for your interest someone@someco.com.  You will hear from us soon.") }
  end
end



# describe InvitesController do
#   describe 'PUT #update' do
#     before do
#       Invite.should_receive(:new).with('email' => 'someone@someco.com').and_return(invite)
#       post :create, :invite => { :email => 'someone@someco.com' } 
#     end
#     describe 'successfully' do
#       let(:invite) { mock(:email => 'someone@someco.com', :save => true) } 
#       it { should redirect_to root_url }
#       it { should set_the_flash.to("Thanks for your interest someone@someco.com.  You will hear from us soon.") }
#     end
#     describe 'unsuccessfully' do
#       let(:invite) { mock(:email => 'someone@someco.com', :save => false) } 
#       it { should render_template :new }
#     end
#   end
# end
