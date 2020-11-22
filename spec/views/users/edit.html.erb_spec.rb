require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :account_name => "MyString",
      :email => "MyString",
      :is_admin => false,
      :balance => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[account_name]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[is_admin]"

      assert_select "input[name=?]", "user[balance]"
    end
  end
end
