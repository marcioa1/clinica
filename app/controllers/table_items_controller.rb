class TableItemsController < ApplicationController

  def new
  end

  def create
    @table_item           = TableItem.new(params[:table_item])
    
    respond_to do |format|
      if @table_item.save
        format.html { redirect_to table_items_path, notice: 'Table item was successfully created.' }
        format.json { render json: @table_item, status: :created, location: @table_item }
      else
        format.html { render action: "new" }
        format.json { render json: @table_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

end
