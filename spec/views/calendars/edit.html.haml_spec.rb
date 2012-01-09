require 'spec_helper'

describe "calendars/edit.html.haml" do
  before(:each) do
    @calendar = assign(:calendar, stub_model(Calendar))
  end

  it "renders the edit calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calendars_path(@calendar), :method => "post" do
    end
  end
end
