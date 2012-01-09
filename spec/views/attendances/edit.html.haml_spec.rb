require 'spec_helper'

describe "attendances/edit.html.haml" do
  before(:each) do
    @attendance = assign(:attendance, stub_model(Attendance,
      :calendar => nil,
      :period => 1,
      :subject => nil
    ))
  end

  it "renders the edit attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendances_path(@attendance), :method => "post" do
      assert_select "input#attendance_calendar", :name => "attendance[calendar]"
      assert_select "input#attendance_period", :name => "attendance[period]"
      assert_select "input#attendance_subject", :name => "attendance[subject]"
    end
  end
end
