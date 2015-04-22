class UserholidaysController < ApplicationController
  before_action :set_userholiday, only: [:show, :edit, :update, :destroy]

  # GET /userholidays
  # GET /userholidays.json
  def index
    @userholidays = Userholiday.all
  end

  # GET /userholidays/1
  # GET /userholidays/1.json
  def show
  end

  # GET /userholidays/new
  def new
    @userholiday = Userholiday.new
  end

  # GET /userholidays/1/edit
  def edit
  end

  # POST /userholidays
  # POST /userholidays.json
  def create
    @userholiday = Userholiday.new(userholiday_params)

    respond_to do |format|
      if @userholiday.save
        format.html { redirect_to @userholiday, notice: 'Userholiday was successfully created.' }
        format.json { render :show, status: :created, location: @userholiday }
      else
        format.html { render :new }
        format.json { render json: @userholiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userholidays/1
  # PATCH/PUT /userholidays/1.json
  def update
    respond_to do |format|
      if @userholiday.update(userholiday_params)
        format.html { redirect_to @userholiday, notice: 'Userholiday was successfully updated.' }
        format.json { render :show, status: :ok, location: @userholiday }
      else
        format.html { render :edit }
        format.json { render json: @userholiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userholidays/1
  # DELETE /userholidays/1.json
  def destroy
    @userholiday.destroy
    respond_to do |format|
      format.html { redirect_to userholidays_url, notice: 'Userholiday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userholiday
      @userholiday = Userholiday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userholiday_params
      params.require(:userholiday).permit(:username, :start, :end, :managersName, :duration)
    end
end
