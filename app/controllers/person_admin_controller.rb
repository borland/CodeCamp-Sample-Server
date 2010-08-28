class PersonAdminController < ApplicationController
  def index
    @people = Person.find :all
  end
  
  def new
    @person = Person.new
  end
  
  def create
    Person.create params[:person]
    redirect_to :action => 'index'
  end
  
  def show
    @person = Person.find params[:id]
  end
  
  def edit
    @person = Person.find params[:id]
  end
  
  def update
    Person.update params[:id], params[:person]
    redirect_to :action => 'index'
  end
  
  def destroy
    Person.destroy params[:id]
    redirect_to :action => 'index'
  end
end
