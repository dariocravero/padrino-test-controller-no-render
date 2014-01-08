require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "ActionController" do
  before do
    no_render!

    get '/action'
  end

  it "shouldn't render" do
    assert_equal '', last_response.body
  end
end
