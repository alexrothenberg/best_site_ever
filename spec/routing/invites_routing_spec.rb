require "spec_helper"

describe "routing for external users" do
  it "recognizes and generates #index as root_path" do
    get("/").should route_to('invites#new')
  end

  it "recognizes and generates #create" do
    post("/invites").should route_to('invites#create')
  end

  it 'recognizes and generates #new' do
    get('/invites/new').should route_to('invites#new')
  end
end
