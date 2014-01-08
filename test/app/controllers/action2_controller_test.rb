require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "Action2Controller" do
  before do
    get '/action2'
  end

  it "should render" do
    assert_equal "<h1>I'm action2.index</h1>", last_response.body
  end

  describe "this doesn't render" do
    before do
      no_render!
      get '/action2'
    end

    it "shouldn't render" do
      assert_equal '', last_response.body
    end
  end
end
