class RubiesController < ApplicationController
  # GET /rubies
  # GET /rubies.json
  def index
    @rubies = Ruby.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rubies }
    end
  end

  # GET /rubies/1
  # GET /rubies/1.json
  def show
    @ruby = Ruby.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ruby }
    end
  end

  # GET /rubies/new
  # GET /rubies/new.json
  def new
    @ruby = Ruby.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ruby }
    end
  end

  # GET /rubies/1/edit
  def edit
    @ruby = Ruby.find(params[:id])
  end

  # POST /rubies
  # POST /rubies.json
  def create
    @ruby = Ruby.new(params[:ruby])

    respond_to do |format|
      if @ruby.save
        format.html { redirect_to @ruby, notice: 'Ruby was successfully created.' }
        format.json { render json: @ruby, status: :created, location: @ruby }
      else
        format.html { render action: "new" }
        format.json { render json: @ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rubies/1
  # PUT /rubies/1.json
  def update
    @ruby = Ruby.find(params[:id])

    respond_to do |format|
      if @ruby.update_attributes(params[:ruby])
        format.html { redirect_to @ruby, notice: 'Ruby was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubies/1
  # DELETE /rubies/1.json
  def destroy
    @ruby = Ruby.find(params[:id])
    @ruby.destroy

    respond_to do |format|
      format.html { redirect_to rubies_url }
      format.json { head :no_content }
    end
  end
end
