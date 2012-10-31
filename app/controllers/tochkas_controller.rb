class TochkasController < ApplicationController
  # GET /tochkas
  # GET /tochkas.json
  def index
    @tochkas = Tochka.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tochkas }
    end
  end

  # GET /tochkas/1
  # GET /tochkas/1.json
  def show
    @tochka = Tochka.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tochka }
    end
  end

  # GET /tochkas/new
  # GET /tochkas/new.json
  def new
    @tochka = Tochka.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tochka }
    end
  end

  # GET /tochkas/1/edit
  def edit
    @tochka = Tochka.find(params[:id])
  end

  # POST /tochkas
  # POST /tochkas.json
  def create
    @tochka = Tochka.new(params[:tochka])

    respond_to do |format|
      if @tochka.save
        format.html { redirect_to @tochka, notice: 'Tochka was successfully created.' }
        format.json { render json: @tochka, status: :created, location: @tochka }
      else
        format.html { render action: "new" }
        format.json { render json: @tochka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tochkas/1
  # PUT /tochkas/1.json
  def update
    @tochka = Tochka.find(params[:id])

    respond_to do |format|
      if @tochka.update_attributes(params[:tochka])
        format.html { redirect_to @tochka, notice: 'Tochka was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tochka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tochkas/1
  # DELETE /tochkas/1.json
  def destroy
    @tochka = Tochka.find(params[:id])
    @tochka.destroy

    respond_to do |format|
      format.html { redirect_to tochkas_url }
      format.json { head :no_content }
    end
  end
end
