TestControllerNoRender::App.controllers :action do
  get :index do
    render 'action/index'
  end
end
