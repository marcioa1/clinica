class TablePricesController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /table_prices
  # GET /table_prices.json
  def index
    @table_prices = TablePrice.from_client(@client).order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @table_prices }
    end
  end

  # GET /table_prices/1
  # GET /table_prices/1.json
  def show
    @table_price = TablePrice.find(params[:id])
    @table_item  = TableItem.new(:table_price_id => @table_price.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @table_price }
    end
  end

  # GET /table_prices/new
  # GET /table_prices/new.json
  def new
    @table_price = TablePrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @table_price }
    end
  end

  # GET /table_prices/1/edit
  def edit
    @table_price = TablePrice.find(params[:id])
  end

  # POST /table_prices
  # POST /table_prices.json
  def create
    @table_price           = TablePrice.new(params[:table_price])
    @table_price.client_id = @client.id
    
    respond_to do |format|
      if @table_price.save
        format.html { redirect_to table_prices_path, notice: 'Table price was successfully created.' }
        format.json { render json: @table_price, status: :created, location: @table_price }
      else
        format.html { render action: "new" }
        format.json { render json: @table_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /table_prices/1
  # PUT /table_prices/1.json
  def update
    @table_price = TablePrice.find(params[:id])

    respond_to do |format|
      if @table_price.update_attributes(params[:table_price])
        format.html { redirect_to table_prices_path, notice: 'Table price was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @table_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_prices/1
  # DELETE /table_prices/1.json
  def destroy
    @table_price = TablePrice.find(params[:id])
    @table_price.destroy

    respond_to do |format|
      format.html { redirect_to table_prices_url }
      format.json { head :ok }
    end
  end
end
