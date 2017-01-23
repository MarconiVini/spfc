class Admin::PostsController < Admin::BaseAdminController

  def index
    @posts = Post.page params[:page]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    binding.pry
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
    params.require(:post).permit(:body)
  end
end


