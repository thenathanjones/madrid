class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def edit
    @property = Property.find_by_id(params[:id])
  end

  def show
    @property = Property.find_by_id(params[:id])
  end

  def create
    @property = Property.new(params[:property])

    if @property.save
      redirect_to properties_path, notice: "Property successfully created"
    else
      flash[:error] = 'Property not created. Please check errors.'
      render action: 'new'
    end
  end

  def update
    @property = Property.find_by_id(params[:id])

    if @property.update_attributes(params[:property])
      redirect_to properties_path, notice: "Property successfully updated"
    else
      flash[:error] = 'Property not updated. Please check errors.'
      render action: 'edit'
    end
  end

 def destroy
    @property = Property.find(params[:id])  
    
    @property.destroy
    redirect_to properties_path, notice: "Property has been deleted."
  end
end