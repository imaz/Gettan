require 'spec_helper'

describe "subjects/index.html.erb" do
  before(:each) do
    assign(:subjects, [
      stub_model(Subject,
        :name => "Name",
        :credits => 1,
        :attendance => 1
      ),
      stub_model(Subject,
        :name => "Name",
        :credits => 1,
        :attendance => 1
      )
    ])
  end

  it "renders a list of subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
