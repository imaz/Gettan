require 'spec_helper'

describe "calendars/new.html.haml" do
  before(:each) do
    assign(:calendar, stub_model(Calendar).as_new_record)
  end

  it "renders new calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calendars_path, :method => "post" do
    end
  end
end
