require 'spec_helper'

describe "attendances/index.html.haml" do
  before(:each) do
    assign(:attendances, [
      stub_model(Attendance,
        :schedule => nil,
        :period => 1,
        :subject => nil
      ),
      stub_model(Attendance,
        :schedule => nil,
        :period => 1,
        :subject => nil
      )
    ])
  end

  it "renders a list of attendances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
