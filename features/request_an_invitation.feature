Feature: Build excitement for this vaporware
  In order to drum up interest
  As a user
  I will receive an exciting email

  Scenario: Someone requests an invitation and receives an email
    Given I am on the home page
     When I request an invitation for "gullible@lemmings.com"
     Then "gullible@lemmings.com" should receive 1 email
      And they open the email
      And they should see the email delivered from "alex@awesome-startup.com"
      And they should see "Invitation request for Awesome New Startup received" in the email subject
      And they should see "Dear gullible@lemmings.com," in the email body
      And they should see "We have received your request" in the email body
      And they should see "Please check back at http://awesome-site-staging.heroku.com" in the email body
