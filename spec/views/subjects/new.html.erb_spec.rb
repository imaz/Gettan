require 'spec_helper'

describe "subjects/new.html.erb" do
  before(:each) do
    assign(:subject, stub_model(Subject,
      :name => "MyString",
      :credits => 1,
      :attendance => 1
    ).as_new_record)
  end

  it "renders new subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subjects_path, :method => "post" do
      assert_select "input#subject_name", :name => "subject[name]"
      assert_select "input#subject_credits", :name => "subject[credits]"
      assert_select "input#subject_attendance", :name => "subject[attendance]"
    end
  end
end
