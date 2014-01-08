TestControllerNoRender::App.controllers :action2 do
  get :index do
    render 'action2/index'
  end
end
