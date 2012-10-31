class TcategoriesController < ApplicationController
  # GET /tcategories
  # GET /tcategories.json
  def index
    @tcategories = Tcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tcategories }
    end
  end

  # GET /tcategories/1
  # GET /tcategories/1.json
  def show
    @tcategory = Tcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tcategory }
    end
  end

  # GET /tcategories/new
  # GET /tcategories/new.json
  def new
    @tcategory = Tcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tcategory }
    end
  end

  # GET /tcategories/1/edit
  def edit
    @tcategory = Tcategory.find(params[:id])
  end

  # POST /tcategories
  # POST /tcategories.json
  def create
    @tcategory = Tcategory.new(params[:tcategory])

    respond_to do |format|
      if @tcategory.save
        format.html { redirect_to @tcategory, notice: 'Tcategory was successfully created.' }
        format.json { render json: @tcategory, status: :created, location: @tcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @tcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tcategories/1
  # PUT /tcategories/1.json
  def update
    @tcategory = Tcategory.find(params[:id])

    respond_to do |format|
      if @tcategory.update_attributes(params[:tcategory])
        format.html { redirect_to @tcategory, notice: 'Tcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcategories/1
  # DELETE /tcategories/1.json
  def destroy
    @tcategory = Tcategory.find(params[:id])
    @tcategory.destroy

    respond_to do |format|
      format.html { redirect_to tcategories_url }
      format.json { head :no_content }
    end
  end
end
