class InviteMailer < ActionMailer::Base
  def invite_requested(invite)
    @invite = invite
    mail :to => invite.email, :from => 'alex@awesome-startup.com', :subject => 'Invitation request for Awesome New Startup received'
  end
end