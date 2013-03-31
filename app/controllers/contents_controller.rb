class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.find_or_create_by(title: params[:content][:title], description: params[:content][:description])
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
    @content.update_attributes(title: params[:content][:title], description: params[:content][:description])
    redirect_to content_path(@content)
  end
end
