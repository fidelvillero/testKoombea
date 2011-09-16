require 'spec_helper'

describe PostsController do
  
  it "deberia retornar estado 200" do
    get 'index'
    #response.code.should == "200"
    response.should be_success
  end
  
  it "deberia renderizar la vista respectiva" do
    get 'index'
    should render_template 'posts/index'
  end
  
  it "deberia asignar un arreglo de todos los posts" do
    get 'index'
    assigns( :posts ).should eq( Post.all )
    # :posts => @posts
  end
  
  describe "GET show" do
    # p se agrega para imprimir el texto posterior
    it "should add appropriate Post" do
      post = Post.create( :title => "title", :content => "content", :url => "ascdadcasdca", :slug => "jhkbhjbhjn" )
      get 'show', :id => post.id
      assigns( :post ).should eq( post )
     end

     it "should to render to post" do
       render_template 'posts/show'
     end
  end
  
  
end
