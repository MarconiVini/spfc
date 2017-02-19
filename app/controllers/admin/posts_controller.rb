class Admin::PostsController < Admin::BaseAdminController

  def index
    @posts = Post.page params[:page]
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:notice] = "O post foi editado com sucesso !"
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end

  def create
    @post = Post.new(post_params)
    @post.adm_owner = current_admin
    if @post.save
      flash[:notice] = "O Post foi criado com sucesso !"
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def set_header
    @header = "Posts"
  end

  def post_params
    params.require(:post).permit(:body, :title)
  end
end


