require 'spec_helper' #this set all environment(medio) conteniendo el level(nivel) de app, conf items load files sopport and more


describe ContentController do
  
  describe "GET index" do
    
    it "should be success" do
      get :index
      response.should be_success
    end
    
  end
  
end
