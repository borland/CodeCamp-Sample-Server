# this is a resource controller. Json is how we roll
class PersonController < ApplicationController
  def index
    render :json => Person.all(:select => 'id, first_name, last_name').map(&:attributes)
  end
  
  def show
    render :json => Person.find(params[:id]).attributes
  end
  
  def create
    Person.create params[:person]
    render :nothing, :status => :created
  end
  
  def update
    Person.update params[:id], params[:person]
    render :nothing, :status => :ok
  end
  
  def destroy
    Person.destroy params[:id]
    render :nothing, :status => :ok
  end
end