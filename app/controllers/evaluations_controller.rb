class EvaluationsController < ApplicationController
  def index
    @evaluations = Evaluation.all
  end
  
  def show
    @evaluation = Evaluation.find(params[:id])
  end
  
  def new
    @evaluation = Evaluation.new
    1.times do
      topic = @evaluation.topics.build
      2.times do
          subtopic = topic.subtopics.build
          1.times { subtopic.ratings.build }
       end
    end
  end
  
  def create
    @evaluation = Evaluation.new(params[:evaluation])
    if @evaluation.save
      flash[:notice] = "Successfully created evaluation."
      redirect_to @evaluation
    else
      render :action => 'new'
    end
  end
  
  def edit
    @evaluation = Evaluation.find(params[:id])
  end
  
  def update
    @evaluation = Evaluation.find(params[:id])
    if @evaluation.update_attributes(params[:evaluation])
      flash[:notice] = "Successfully updated evaluation."
      redirect_to @evaluation
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @evaluation = Evaluation.find(params[:id])
    @evaluation.destroy
    flash[:notice] = "Successfully destroyed evaluation."
    redirect_to evaluations_url
  end
end
