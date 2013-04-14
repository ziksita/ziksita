class ContentsController < ApplicationController

  def index
    @contents = Content.all.order_by(:updated_at => :desc).limit(100)
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.find_or_create_by(title: params[:content][:title], description: params[:content][:description], tags_array: params[:content][:tags])
    #@content = Content.new
    #@content.title = params[:content][:title]
    #@content.description = params[:content][:description]
    #@content.save

    redirect_to content_path(@content)
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    @content.update_attributes(title: params[:content][:title], description: params[:content][:description], tags_array: params[:content][:tags])
    redirect_to content_path(@content)
  end

  def destroy
    @content = Content.find(params[:id])
    @content.delete
    redirect_to contents_path
  end
end
