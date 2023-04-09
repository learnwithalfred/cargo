require 'rails_helper'

RSpec.describe "gps/new", type: :view do
  before(:each) do
    assign(:gp, Gp.new(
      container_no: "MyString",
      weight: 1.5,
      vehicle_reg: "MyString",
      hauller: "MyString",
      is_approved: false,
      customer: "MyString",
      line: "MyString",
      size: "MyString",
      depot: "MyString",
      sheet: "MyString"
    ))
  end

  it "renders new gp form" do
    render

    assert_select "form[action=?][method=?]", gps_path, "post" do

      assert_select "input[name=?]", "gp[container_no]"

      assert_select "input[name=?]", "gp[weight]"

      assert_select "input[name=?]", "gp[vehicle_reg]"

      assert_select "input[name=?]", "gp[hauller]"

      assert_select "input[name=?]", "gp[is_approved]"

      assert_select "input[name=?]", "gp[customer]"

      assert_select "input[name=?]", "gp[line]"

      assert_select "input[name=?]", "gp[size]"

      assert_select "input[name=?]", "gp[depot]"

      assert_select "input[name=?]", "gp[sheet]"
    end
  end
end
