require 'spec_helper'

describe "calendars/index.html.haml" do
  before(:each) do
    assign(:calendars, [
      stub_model(Calendar),
      stub_model(Calendar)
    ])
  end

  it "renders a list of calendars" do
    render
  end
end
