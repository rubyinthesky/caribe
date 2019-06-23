class HashtsController < ApplicationController
  before_action :set_hasht, only: [:show, :edit, :update, :destroy]

  # GET /hashts
  # GET /hashts.json
  def index
    @hashts = Hasht.all
  end

  # GET /hashts/1
  # GET /hashts/1.json
  def show
  end

  # GET /hashts/new
  def new
    @hasht = Hasht.new
  end

  # GET /hashts/1/edit
  def edit
  end

  # POST /hashts
  # POST /hashts.json
  def create
    @hasht = Hasht.new(hasht_params)

    respond_to do |format|
      if @hasht.save
        format.html { redirect_to @hasht, notice: 'Hasht was successfully created.' }
        format.json { render :show, status: :created, location: @hasht }
      else
        format.html { render :new }
        format.json { render json: @hasht.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hashts/1
  # PATCH/PUT /hashts/1.json
  def update
    respond_to do |format|
      if @hasht.update(hasht_params)
        format.html { redirect_to @hasht, notice: 'Hasht was successfully updated.' }
        format.json { render :show, status: :ok, location: @hasht }
      else
        format.html { render :edit }
        format.json { render json: @hasht.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hashts/1
  # DELETE /hashts/1.json
  def destroy
    @hasht.destroy
    respond_to do |format|
      format.html { redirect_to hashts_url, notice: 'Hasht was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hasht
      @hasht = Hasht.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hasht_params
      params.require(:hasht).permit(:nombre)
    end
end
