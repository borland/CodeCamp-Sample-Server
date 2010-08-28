class PictureAdminController < ApplicationController
  before_filter :set_person

  def index
    @pictures = @person.pictures.find :all
  end

  def new
    @picture = @person.pictures.new
  end

  def create
    file = params[:picture][:image]
    params[:picture][:mime_type] = file.content_type
    params[:picture][:image] = file.read
    @person.pictures.create params[:picture] 
    redirect_to :action => 'index'
  end

  def show
    @picture = @person.pictures.find params[:id]
  end

  def destroy
    @person.pictures.destroy params[:id]
    redirect_to :action => 'index'
  end
  
private
  def set_person
    @person = Person.find params[:person_admin_id]
  end
end