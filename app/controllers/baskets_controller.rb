class BasketsController < ApplicationController
 # include CurrentCart 
  before_action :set_basket, only: %i[ show edit update destroy ]
  before_action :set_cart, only: [:create]
  # GET /baskets or /baskets.json
  def index
    @baskets = Basket.all
  end

  # GET /basket_artciles/1
  def show
  end

  # GET /Basket/new
  def new
    @basket = Basket.new
  end

  # GET /Basket/1/edit
  def edit
  end

  # POST /Basket
  def create
    article = Article.find(params[:article_id])
    @basket = @cart.add_article(article)

    respond_to do |format|
      if @basket.save
        format.html { redirect_to @basket.cart, notice: 'Article added to cart.' }
        format.json { render :show, status: :created, location: @basket }
      else
        format.html { render :new }
        format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basket/1
  def update
    respond_to do |format|
      if @basket.update(basket_params)
        format.html { redirect_to @basket, notice: 'Basket article was successfully updated.' }
      #  format.json { render :show, status: :ok, location: @basket }
      else
        format.html { render :edit }
     #   format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Basket/1
  def destroy
    @cart = Cart.find(session[:cart_id])
    @basket.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Basket successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basket
      @basket = Basket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basket_params
      params.require(:basket).permit(:basket)
    end
end
