# Quick example on how to skip rendering views on Padrino tests

Trying to answer @fj's [question on twitter](https://twitter.com/superninjarobot/status/420693222038310912).

A helper like this should do:

```
# test/test_config.rb

def no_render!
  Padrino.mounted_apps.each do |app|
    app.app_obj.class_eval do
      def render(engine, data=nil, options={}, locals={}, &block); end
    end
  end
end
```

And in a controller test:

```
describe "ActionController" do
  before do
    no_render!
    get '/action'
  end

  it "shouldn't render" do
    assert_equal '', last_response.body
  end
end
```

Thoughts?
