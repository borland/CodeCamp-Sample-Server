# this is a resource controller. Json is how we roll
class PictureController < ApplicationController
  before_filter :set_person
  
  def index
    render :json => @person.pictures.all(:select => 'id, caption').map(&:attributes)
  end

  def create
    file = params[:picture][:image]
    params[:picture][:mime_type] = file.content_type
    params[:picture][:image] = file.read
    @person.pictures.create params[:picture] 
    
    render :nothing => :true, :status => :created
  end

  def show
    picture = @person.pictures.find params[:id]
    render :content_type => picture.mime_type, :text => picture.image
  end

  def destroy
    @person.pictures.destroy params[:id]
    render :nothing => :true, :status => :ok
  end

private
  def set_person
    @person = Person.find params[:person_id]
  end
end