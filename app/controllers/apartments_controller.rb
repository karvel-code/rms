class ApartmentsController < ApplicationController
  before_action :set_apartment, only: %i[show edit update destroy]

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    
    respond_to do |format|
      if @apartment.save
        flash[:notice] = 'Apartment was successfully created.'
        format.html { redirect_to apartment_path(@apartment) }
        format.turbo_stream
      else 
        flash[:alert] = 'Apartment was not created.'
        render :new
      end
    end
  end

  def show; end 

  def edit; end

  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        flash[:notice] = 'Apartment was successfully updated.'
        format.html { redirect_to apartment_path(@apartment) }
        format.turbo_stream
      else 
        flash[:alert] = 'Apartment was not updated.'
        render :edit
      end
    end
  end

  def destroy
    respond_to do |format|
      if @apartment.delete
        flash[:notice] = 'Apartment was successfully deleted.'
        format.html { redirect_to apartments_path }
        format.turbo_stream
      end
    end
  end

  private

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end

  def apartment_params
    params.require(:apartment).permit(:name, :contact_person, :location, :lat, :long)
  end
end
