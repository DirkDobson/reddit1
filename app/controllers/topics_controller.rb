class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, except: [:index, :new, :create]
  def index
    @topics = @sub.topics
  end

  def show
  end

  def new
    @topic = @sub.topics.new 
    #Topic.new(name: "Sharks", body: "yada ydad", sub_id: 1)
    render partial "form"
  end

  def create
  end
  
  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_sub
    @sub = Sub.find(params[:sub_id])
  end

  def set_topoic
    @topic = Topic.find(params[:id])
  end
end
