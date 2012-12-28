class Api::NewItemsController < ApplicationController
  # GET /new_items
  # GET /new_items.json
  def index
    @new_items = NewItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_items }
    end
  end

  # GET /new_items/1
  # GET /new_items/1.json
  def show
    @new_item = NewItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_item }
    end
  end

  # GET /new_items/new
  # GET /new_items/new.json
  def new
    @new_item = NewItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_item }
    end
  end

  # GET /new_items/1/edit
  def edit
    @new_item = NewItem.find(params[:id])
  end

  # POST /new_items
  # POST /new_items.json
  def create
    @new_item = NewItem.new(params[:new_item])

    respond_to do |format|
      if @new_item.save
        format.html { redirect_to @new_item, notice: 'New_item was successfully created.' }
        format.json { render json: @new_item, status: :created, location: @new_item }
      else
        #format.html { render action: "new" }
        #format.json { render json: @new_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_items/1
  # PUT /new_items/1.json
  def update
    @new_item = NewItem.find(params[:id])

    respond_to do |format|
      if @new_item.update_attributes(params[:new_item])
        format.html { redirect_to @new_item, notice: 'New item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_items/1
  # DELETE /new_items/1.json
  def destroy
    @new_item = NewItem.find(params[:id])
    @new_item.destroy

    respond_to do |format|
      format.html { redirect_to new_items_url }
      format.json { head :no_content }
    end
  end
end
