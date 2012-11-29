class NewCategoriesController < ApplicationController
  # GET /new_categories
  # GET /new_categories.json
  def index
    @new_categories = NewCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_categories }
    end
  end

  # GET /new_categories/1
  # GET /new_categories/1.json
  def show
    @new_category = NewCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_category }
    end
  end

  # GET /new_categories/new
  # GET /new_categories/new.json
  def new
    @new_category = NewCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_category }
    end
  end

  # GET /new_categories/1/edit
  def edit
    @new_category = NewCategory.find(params[:id])
  end

  # POST /new_categories
  # POST /new_categories.json
  def create
    @new_category = NewCategory.new(params[:new_category])

    respond_to do |format|
      if @new_category.save
        format.html { redirect_to @new_category, notice: 'NewCategory was successfully created.' }
        format.json { render json: @new_category, status: :created, location: @new_category }
      else
        format.html { render action: "new" }
        format.json { render json: @new_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_categories/1
  # PUT /new_categories/1.json
  def update
    @new_category = NewCategory.find(params[:id])

    respond_to do |format|
      if @new_category.update_attributes(params[:new_category])
        format.html { redirect_to @new_category, notice: 'NewCategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_categories/1
  # DELETE /new_categories/1.json
  def destroy
    @new_category = NewCategory.find(params[:id])
    @new_category.destroy

    respond_to do |format|
      format.html { redirect_to new_categories_url }
      format.json { head :no_content }
    end
  end
end
