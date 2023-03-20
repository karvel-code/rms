class UnitsController < ApplicationController
  before_action :set_apartment, only: %i[index new create]
  before_action :set_unit, except: %i[index new create]

  def index
    # all units for an apartment
    @units = @apartment.units
  end

  def new
    @unit = @apartment.units.new
  end

  def create
    @unit = @apartment.units.build(unit_params)

    respond_to do |format|
      if @unit.save
        flash[:notice] = 'Unit was successfully created.'
        format.html { redirect_to apartment_units_path }
      else
        flash[:alert] = 'Could not create unit.'
        render :new
      end
    end
  end

  def show; end

  def edit; end

  def update
    respond_to do |format|

      if @unit.update(unit_params)
        flash[:notice] = 'Unit was successfully updated.'
        format.html { redirect_to unit_path(@unit) }
      else
        flash[:alert] = 'Could not update unit.'
        render :edit
      end
      end
  end

  def destroy
    if @unit.delete
      
      respond_to do |format|
        flash[:notice] = 'Unit deleted successfully.'
        format.html { redirect_to apartment_units_path }
      end
    end
  end

  private

  def set_apartment
    @apartment = Apartment.find(params[:apartment_id])
  end

  def unit_params
    params.require(:unit).permit(:floor, :house_no)
  end

  def set_unit
    @unit = Unit.find(params[:id])
  end
end
