class StairwalksController < ApplicationController
  before_action :set_stairwalk, only: [:show, :edit, :update, :destroy]

  # GET /stairwalks
  # GET /stairwalks.json
  def index
    @stairwalks = current_user.stairwalks.order(date: :desc)
  end

  # GET /stairwalks/1
  # GET /stairwalks/1.json
  def show
  end

  # GET /stairwalks/new
  def new
    @stairwalk = Stairwalk.new
  end

  # GET /stairwalks/1/edit
  def edit
  end

  # POST /stairwalks
  # POST /stairwalks.json
  def create
    @stairwalk = Stairwalk.new(stairwalk_params)

    respond_to do |format|
      if @stairwalk.save
        format.html { redirect_to root_path, notice: 'Whooa, hyvä sä! :D.' }
        # format.json { render :show, status: :created, location: @stairwalk }
      else
        format.html { render :back }
        # format.json { render json: @stairwalk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stairwalks/1
  # PATCH/PUT /stairwalks/1.json
  def update
    respond_to do |format|
      if @stairwalk.update(stairwalk_params)
        format.html { redirect_to @stairwalk, notice: 'Stairwalk was successfully updated.' }
        format.json { render :show, status: :ok, location: @stairwalk }
      else
        format.html { render :edit }
        format.json { render json: @stairwalk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stairwalks/1
  # DELETE /stairwalks/1.json
  def destroy
    @stairwalk.destroy
    respond_to do |format|
      format.html { redirect_to stairwalks_url, notice: 'Stairwalk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stairwalk
      @stairwalk = Stairwalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stairwalk_params
      params.require(:stairwalk).permit(:date, :user_id)
    end
end
