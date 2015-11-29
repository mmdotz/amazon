class LineitemsController < ApplicationController
  def index
    @lineitems = Lineitem.all
  end

  def new #skip this page rendering form and go to create
  end

  def show
  end

  def create
    @lineitem = Lineitem.new(lineitem_params)

    respond_to do |format|
      if @lineitem.save
        @lineitem.item.inv_qty - 1
        format.html { redirect_to items_path, notice: 'Item was added to pending order.' }
        format.json { render :show, status: :created, location: @lineitem }
      else
        format.html { render :new }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @lineitem.update(lineitem_params)
        format.html { redirect_to @lineitem, notice: 'Pending order was updated.' }
        format.json { render :show, status: :ok, location: @lineitem }
      else
        format.html { render :edit }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lineitem.destroy
    respond_to do |format|
      format.html { redirect_to current_user.current_order, notice: 'Lineitem was removed from your order.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineitem
      @lineitem = lineitems.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lineitem_params
      params.require(:lineitem).permit(:qty, :order_id, :item_id)
    end

end
