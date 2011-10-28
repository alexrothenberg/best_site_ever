require 'spec_helper'

describe InviteMailer do
  include EmailSpec::Helpers
  include EmailSpec::Matchers

  describe '.invite_requested' do
    let(:invite) { Factory.build :invite, :email => 'someone@someco.com' }

    describe 'one email to one user' do
      subject { InviteMailer.invite_requested(invite) }
      it { should deliver_to     invite.email                                                  }
      it { should deliver_from   'alex@awesome-startup.com'                                    }
      it { should have_subject   "Invitation request for Awesome New Startup received"         }
      it { should have_body_text "Dear someone@someco.com,"                                    }
      it { should have_body_text "We have received your request"                               }
      it { should have_body_text "Please check back at http://awesome-site-staging.heroku.com" }
    end
  end
end
