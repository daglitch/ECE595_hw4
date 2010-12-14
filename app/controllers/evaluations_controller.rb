class EvaluationsController < ApplicationController
  def index
    @evaluations = Evaluation.all
  end
  
  def show
    @evaluation = Evaluation.find(params[:id])
  end
  
  def new
    @evaluation = Evaluation.new
    @evaluation.topics.build
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
