class CouponsController < ApplicationController
    def index 
        @coupons = Coupon.all 
    end 

    def show 
        @coupon = Coupon.find(params[:id])
    end 

    def new
        Coupon.new 
    end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end

    # def new 
    #   Coupon.new 
    # end 

    # def create 
    #    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    #    redirect_to coupon_path(@coupon)
    # end 

    # def edit 
    #     @coupon = Coupon.find(params[:id])
    #     render :new 
    # end 

    # def update 
    #     @coupon = Coupon.find(params[:id])
    #     @coupon.update(params)
    #     redirect_to coupons_path 
    # end 
end
