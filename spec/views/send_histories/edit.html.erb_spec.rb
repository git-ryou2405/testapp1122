require 'rails_helper'

RSpec.describe "send_histories/edit", type: :view do
  before(:each) do
    @send_history = assign(:send_history, SendHistory.create!(
      :from_user_id => 1,
      :to_user_id => 1,
      :amount => 1,
      :send_type => 1
    ))
  end

  it "renders the edit send_history form" do
    render

    assert_select "form[action=?][method=?]", send_history_path(@send_history), "post" do

      assert_select "input[name=?]", "send_history[from_user_id]"

      assert_select "input[name=?]", "send_history[to_user_id]"

      assert_select "input[name=?]", "send_history[amount]"

      assert_select "input[name=?]", "send_history[send_type]"
    end
  end
end
