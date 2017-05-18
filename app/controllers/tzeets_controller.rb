class TzeetsController < ApplicationController
  before_action :set_tzeet, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!

  # GET /tzeets
  # GET /tzeets.json
  def index
    @tzeets = Tzeet.all.recent
    @tzeet = Tzeet.new
  end

  # GET /tzeets/1
  # GET /tzeets/1.json
  def show
  end

  # GET /tzeets/new
  def new
    @tzeet = Tzeet.new
  end

  # GET /tzeets/1/edit
  def edit
  end

  # POST /tzeets
  # POST /tzeets.json
  def create
    @tzeet = Tzeet.new(tzeet_params)
    @tzeet.user = current_user
    pp @tzeet
    pp current_user
    respond_to do |format|
      if @tzeet.save
        format.html { redirect_to root_path, notice: 'Tzeet was successfully created.' }
        format.json { render :show, status: :created, location: @tzeet }
      else
        format.html { render :new }
        format.json { render json: @tzeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tzeets/1
  # PATCH/PUT /tzeets/1.json
  def update
    respond_to do |format|
      if @tzeet.update(tzeet_params)
        format.html { redirect_to @tzeet, notice: 'Tzeet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tzeet }
      else
        format.html { render :edit }
        format.json { render json: @tzeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tzeets/1
  # DELETE /tzeets/1.json
  def destroy
    @tzeet.destroy
    respond_to do |format|
      format.html { redirect_to tzeets_url, notice: 'Tzeet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tzeet
      @tzeet = Tzeet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tzeet_params
      params.require(:tzeet).permit(:text, :user_id)
    end
end
