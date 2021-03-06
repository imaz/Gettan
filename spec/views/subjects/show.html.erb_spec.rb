require 'spec_helper'

describe "subjects/show.html.erb" do
  before(:each) do
    @subject = assign(:subject, stub_model(Subject,
      :name => "Name",
      :credits => 1,
      :attendance => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
