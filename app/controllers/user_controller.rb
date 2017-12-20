class UserController < ApplicationController
  def index
    @post = Post.all

  end

  def createuser
  end

  def configuser
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    pwdconfig = params[:pwdconfig]
    idsame=false

#아이디 중복 확인
    User.all.each do |u|
      if u.email == user.email
        redirect_to'/user/idfail' and return
      else
        break
      end
    end

 #패스워드 확인
    if user.password == pwdconfig
      user.save
      redirect_to'/user/information'

    else
      redirect_to'/user/pwdfail'
    end
  end

  def idfail

  end

  def information
    @user = User.all
  end

  def delete
    User.find(params[:id]).destroy
    redirect_to '/user/information'
  end

  def new
  end

  def create
      post = Post.new
      post.username = params[:username]
      post.title = params[:title]
      post.content = params[:content]
      post.save
      redirect_to '/'

  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.all
  end

  def update

    @post = Post.find(params[:id]).update
    @post.save

    redirect_to '/'
  end

  def edit

  end

  def destroy
      Post.find(params[:id]).destroy
      redirect_to '/'
  end

  def add_comments
    
    Comment.create(content: params[:comments], post_id: params[:id])

    redirect_to :back
  end



end
