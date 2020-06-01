class CommentsController < ApplicationController
  before_action :set_image, only: [:create, :destroy, :edit]
 
  def index
  end

  def show
  end

  def edit
  end

  def create
    @comment = Comment.create(description: params[:description], image:@image, user: current_user)
    redirect_to image_path(@image)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to image_path(@image)
  end

  def new
  end
  private

  def set_image
    @image = Image.find(params[:image_id])
  end
end
