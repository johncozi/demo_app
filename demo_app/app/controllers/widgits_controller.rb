class WidgitsController < ApplicationController
  before_action :set_widgit, only: [:show, :edit, :update, :destroy]

  # GET /widgits
  # GET /widgits.json
  def index
    @widgits = Widgit.all
  end

  # GET /widgits/1
  # GET /widgits/1.json
  def show
  end

  # GET /widgits/new
  def new
    @widgit = Widgit.new
  end

  # GET /widgits/1/edit
  def edit
  end

  # POST /widgits
  # POST /widgits.json
  def create
    @widgit = Widgit.new(widgit_params)

    respond_to do |format|
      if @widgit.save
        format.html { redirect_to @widgit, notice: 'Widgit was successfully created.' }
        format.json { render :show, status: :created, location: @widgit }
      else
        format.html { render :new }
        format.json { render json: @widgit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /widgits/1
  # PATCH/PUT /widgits/1.json
  def update
    respond_to do |format|
      if @widgit.update(widgit_params)
        format.html { redirect_to @widgit, notice: 'Widgit was successfully updated.' }
        format.json { render :show, status: :ok, location: @widgit }
      else
        format.html { render :edit }
        format.json { render json: @widgit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /widgits/1
  # DELETE /widgits/1.json
  def destroy
    @widgit.destroy
    respond_to do |format|
      format.html { redirect_to widgits_url, notice: 'Widgit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widgit
      @widgit = Widgit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def widgit_params
      params.require(:widgit).permit(:name, :description)
    end
end
