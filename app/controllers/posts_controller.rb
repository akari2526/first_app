class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all #1番目のレコードを＠post1に代入
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end