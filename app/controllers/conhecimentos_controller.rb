class ConhecimentosController < ApplicationController
  def index
    @conhecimentos = Conhecimento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conhecimentos }
    end
  end

  def show
    @conhecimento = Conhecimento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conhecimento }
    end
  end

  def new
    @conhecimento = Conhecimento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conhecimento }
    end
  end

  def edit
    @conhecimento = Conhecimento.find(params[:id])
  end

  def create
    @conhecimento = Conhecimento.new(params[:conhecimento])

    respond_to do |format|
      if @conhecimento.save
        format.html { redirect_to @conhecimento, notice: 'Conhecimento was successfully created.' }
        format.json { render json: @conhecimento, status: :created, location: @conhecimento }
      else
        format.html { render action: "new" }
        format.json { render json: @conhecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @conhecimento = Conhecimento.find(params[:id])

    respond_to do |format|
      if @conhecimento.update_attributes(params[:conhecimento])
        format.html { redirect_to @conhecimento, notice: 'Conhecimento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conhecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @conhecimento = Conhecimento.find(params[:id])
    @conhecimento.destroy

    respond_to do |format|
      format.html { redirect_to conhecimentos_url }
      format.json { head :no_content }
    end
  end
end