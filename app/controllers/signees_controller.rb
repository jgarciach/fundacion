class SigneesController < ApplicationController
  # GET /signees
  # GET /signees.json
  def index
    @signees = Signee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @signees }
    end
  end

  # GET /signees/1
  # GET /signees/1.json
  def show
    @signee = Signee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @signee }
    end
  end

  # GET /signees/new
  # GET /signees/new.json
  def new
    @signee = Signee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @signee }
    end
  end

  # GET /signees/1/edit
  def edit
    @signee = Signee.find(params[:id])
  end

  # POST /signees
  # POST /signees.json
  def create
    @signee = Signee.new(params[:signee])

    respond_to do |format|
      if @signee.save
        format.html { redirect_to @signee, notice: 'Signee was successfully created.' }
        format.json { render json: @signee, status: :created, location: @signee }
      else
        format.html { render action: "new" }
        format.json { render json: @signee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /signees/1
  # PUT /signees/1.json
  def update
    @signee = Signee.find(params[:id])

    respond_to do |format|
      if @signee.update_attributes(params[:signee])
        format.html { redirect_to @signee, notice: 'Signee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @signee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signees/1
  # DELETE /signees/1.json
  def destroy
    @signee = Signee.find(params[:id])
    @signee.destroy

    respond_to do |format|
      format.html { redirect_to signees_url }
      format.json { head :no_content }
    end
  end
end
