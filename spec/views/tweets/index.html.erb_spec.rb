require 'rails_helper'

RSpec.describe "tweets/index", type: :view do
  before(:each) do
    assign(:tweets, [
      Tweet.create!(
        title: "Title",
        content: "MyText"
      ),
      Tweet.create!(
        title: "Title",
        content: "MyText"
      )
    ])
  end

  it "renders a list of tweets" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
