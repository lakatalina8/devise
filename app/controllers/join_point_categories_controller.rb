class JoinPointCategoriesController < ApplicationController
  # GET /join_point_categories
  # GET /join_point_categories.json
  def index
    @join_point_categories = JoinPointCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @join_point_categories }
    end
  end

  # GET /join_point_categories/1
  # GET /join_point_categories/1.json
  def show
    @join_point_category = JoinPointCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @join_point_category }
    end
  end

  # GET /join_point_categories/new
  # GET /join_point_categories/new.json
  def new
    @join_point_category = JoinPointCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @join_point_category }
    end
  end

  # GET /join_point_categories/1/edit
  def edit
    @join_point_category = JoinPointCategory.find(params[:id])
  end

  # POST /join_point_categories
  # POST /join_point_categories.json
  def create
    @join_point_category = JoinPointCategory.new(params[:join_point_category])

    respond_to do |format|
      if @join_point_category.save
        format.html { redirect_to @join_point_category, notice: 'Join point category was successfully created.' }
        format.json { render json: @join_point_category, status: :created, location: @join_point_category }
      else
        format.html { render action: "new" }
        format.json { render json: @join_point_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /join_point_categories/1
  # PUT /join_point_categories/1.json
  def update
    @join_point_category = JoinPointCategory.find(params[:id])

    respond_to do |format|
      if @join_point_category.update_attributes(params[:join_point_category])
        format.html { redirect_to @join_point_category, notice: 'Join point category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @join_point_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_point_categories/1
  # DELETE /join_point_categories/1.json
  def destroy
    @join_point_category = JoinPointCategory.find(params[:id])
    @join_point_category.destroy

    respond_to do |format|
      format.html { redirect_to join_point_categories_url }
      format.json { head :no_content }
    end
  end
end
