class Api::ContextElementsController < ApplicationController
  # GET /context_elements
  # GET /context_elements.json
  def index
    #@context_elements = ContextElement.where(:point_id => params[:point_id])
    @context_elements = ContextElement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @context_elements }
    end
  end

  # GET /context_elements/1
  # GET /context_elements/1.json
  def show
    @context_element = ContextElement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @context_element }
    end
  end

  # GET /context_elements/new
  # GET /context_elements/new.json
  def new
    @context_element = ContextElement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @context_element }
    end
  end

  # GET /context_elements/1/edit
  def edit
    @context_element = ContextElement.find(params[:id])
  end

  # POST /context_elements
  # POST /context_elements.json
  def create
    @context_element = ContextElement.new(params[:context_element])
    #@context_element.point_id = params[:point_id]

    respond_to do |format|
      if @context_element.save
        format.html { redirect_to @context_element, notice: 'Context element was successfully created.' }
        format.json { render json: @context_element, status: :created, location: @context_element }
      else
        format.html { render action: "new" }
        format.json { render json: @context_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /context_elements/1
  # PUT /context_elements/1.json
  def update
    @context_element = ContextElement.find(params[:id])

    respond_to do |format|
      if @context_element.update_attributes(params[:context_element])
        format.html { redirect_to @context_element, notice: 'Context element was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @context_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /context_elements/1
  # DELETE /context_elements/1.json
  def destroy
    @context_element = ContextElement.find(params[:id])
    @context_element.destroy

    respond_to do |format|
      format.html { redirect_to context_elements_url }
      format.json { head :no_content }
    end
  end
end