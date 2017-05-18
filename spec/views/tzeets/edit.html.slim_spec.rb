require 'rails_helper'

RSpec.describe "tzeets/edit", type: :view do
  before(:each) do
    @tzeet = assign(:tzeet, Tzeet.create!(
      :text => "MyString",
      :user => nil
    ))
  end

  it "renders the edit tzeet form" do
    render

    assert_select "form[action=?][method=?]", tzeet_path(@tzeet), "post" do

      assert_select "input#tzeet_text[name=?]", "tzeet[text]"

      assert_select "input#tzeet_user_id[name=?]", "tzeet[user_id]"
    end
  end
end
