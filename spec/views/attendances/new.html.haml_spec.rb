require 'spec_helper'

describe "attendances/new.html.haml" do
  before(:each) do
    assign(:attendance, stub_model(Attendance,
      :school_day => nil,
      :period => 1,
      :subject => nil
    ).as_new_record)
  end

  it "renders new attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendances_path, :method => "post" do
      assert_select "input#attendance_school_day", :name => "attendance[school_day]"
      assert_select "input#attendance_period", :name => "attendance[period]"
      assert_select "input#attendance_subject", :name => "attendance[subject]"
    end
  end
end
