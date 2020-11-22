require 'rails_helper'

RSpec.describe "send_histories/new", type: :view do
  before(:each) do
    assign(:send_history, SendHistory.new(
      :from_user_id => 1,
      :to_user_id => 1,
      :amount => 1,
      :send_type => 1
    ))
  end

  it "renders new send_history form" do
    render

    assert_select "form[action=?][method=?]", send_histories_path, "post" do

      assert_select "input[name=?]", "send_history[from_user_id]"

      assert_select "input[name=?]", "send_history[to_user_id]"

      assert_select "input[name=?]", "send_history[amount]"

      assert_select "input[name=?]", "send_history[send_type]"
    end
  end
end
