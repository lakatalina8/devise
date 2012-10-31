class JoinTochkaTcategoriesController < ApplicationController
  # GET /join_tochka_tcategories
  # GET /join_tochka_tcategories.json
  def index
    @join_tochka_tcategories = JoinTochkaTcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @join_tochka_tcategories }
    end
  end

  # GET /join_tochka_tcategories/1
  # GET /join_tochka_tcategories/1.json
  def show
    @join_tochka_tcategory = JoinTochkaTcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @join_tochka_tcategory }
    end
  end

  # GET /join_tochka_tcategories/new
  # GET /join_tochka_tcategories/new.json
  def new
    @join_tochka_tcategory = JoinTochkaTcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @join_tochka_tcategory }
    end
  end

  # GET /join_tochka_tcategories/1/edit
  def edit
    @join_tochka_tcategory = JoinTochkaTcategory.find(params[:id])
  end

  # POST /join_tochka_tcategories
  # POST /join_tochka_tcategories.json
  def create
    @join_tochka_tcategory = JoinTochkaTcategory.new(params[:join_tochka_tcategory])

    respond_to do |format|
      if @join_tochka_tcategory.save
        format.html { redirect_to @join_tochka_tcategory, notice: 'Join tochka tcategory was successfully created.' }
        format.json { render json: @join_tochka_tcategory, status: :created, location: @join_tochka_tcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @join_tochka_tcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /join_tochka_tcategories/1
  # PUT /join_tochka_tcategories/1.json
  def update
    @join_tochka_tcategory = JoinTochkaTcategory.find(params[:id])

    respond_to do |format|
      if @join_tochka_tcategory.update_attributes(params[:join_tochka_tcategory])
        format.html { redirect_to @join_tochka_tcategory, notice: 'Join tochka tcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @join_tochka_tcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_tochka_tcategories/1
  # DELETE /join_tochka_tcategories/1.json
  def destroy
    @join_tochka_tcategory = JoinTochkaTcategory.find(params[:id])
    @join_tochka_tcategory.destroy

    respond_to do |format|
      format.html { redirect_to join_tochka_tcategories_url }
      format.json { head :no_content }
    end
  end
end
