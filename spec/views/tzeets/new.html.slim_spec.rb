require 'rails_helper'

RSpec.describe "tzeets/new", type: :view do
  before(:each) do
    assign(:tzeet, Tzeet.new(
      :text => "MyString",
      :user => nil
    ))
  end

  it "renders new tzeet form" do
    render

    assert_select "form[action=?][method=?]", tzeets_path, "post" do

      assert_select "input#tzeet_text[name=?]", "tzeet[text]"

      assert_select "input#tzeet_user_id[name=?]", "tzeet[user_id]"
    end
  end
end
