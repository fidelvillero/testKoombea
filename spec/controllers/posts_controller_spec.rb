require 'spec_helper'

describe PostsController do
  
  describe "GET show" do
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
  
  describe "edit" do
     
     it  "should be all success" do
       verfPost = Post.create(:title => "fidel", :content => "title test", :url => "https://mail.google.com/mail/?shva=1#inbox/1326de4ee6eaf19a", :slug => "bla bla bla")
       get 'edit', :id => verfPost.id
       response.should be_success # == response.code.should == "200"
     end
     it "should add appropiated Post" do
       verfPost = Post.create(:title => "fidel", :content => "title test", :url => "https://mail.google.com/mail/?shva=1#inbox/1326de4ee6eaf19a", :slug => "bla bla bla")
       verfPost.id
       get 'edit', :id => verfPost.id
       assigns( :post ).should eq( verfPost )
     end
     
     it "should render 'edit'" do
       savePost = Post.create(:title => "fidel", :content => "title test", :url => "https://mail.google.com/mail/?shva=1#inbox/1326de4ee6eaf19a", :slug => "bla bla bla")
       get 'edit', :id => savePost.id
       response.should render_template 'posts/edit'
     end
     
   end
  
end
