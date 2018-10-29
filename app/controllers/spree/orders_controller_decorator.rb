Spree::OrdersController.class_eval do
  def show
    @order = Spree::Order.find_by!(number: params[:id])
    authorize! :read, @order, cookies.signed[:guest_token]
    respond_to do |format|
      format.html
      format.pdf {render template: 'spree/shared/order_details', pdf: 'order'}
    end
  end
end