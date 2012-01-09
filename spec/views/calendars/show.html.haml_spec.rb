require 'spec_helper'

describe "calendars/show.html.haml" do
  before(:each) do
    @calendar = assign(:calendar, stub_model(Calendar))
  end

  it "renders attributes in <p>" do
    render
  end
end
