class ImagesController < ApplicationController
  def create
  #@encoding = Base64.strict_encode64(params[:images].path)
  @encoding= Base64.strict_encode64(File.open(params[:stream].tempfile).read)
  @description = params[:description]
  @extension = params[:stream].content_type
  if params[:private].present?
    @private = true
  else
    @private= false
  end

  puts @private
 
  @image = Image.create(stream: @encoding, private: @private, extension: @extension, description: @description, user:current_user)
  @private 
  end

  def new
    @user = current_user
  end

  def index
    @images = Image.all
  end

end
