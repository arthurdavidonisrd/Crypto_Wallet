class CoinsController < ApplicationController
  layout "adm"
  before_action :set_coin, only: %i[ show edit update destroy ]
  before_action :set_mining_type_options, only: [ :new, :edit, :update, :create ]

  def index
    @coins = Coin.all
  end

  def show
  end

  def new
    @coin = Coin.new
  end

  def edit
  end

  def create
    @coin = Coin.new(coin_params)
    if @coin.save
      redirect_to @coin, notice: "Coin was successfully created."
    else
        render :new, status: :unprocessable_entity
    end
  end

  def update
    if @coin.update(coin_params)
      redirect_to @coin, notice: "Coin was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @coin.destroy!
    redirect_to coins_path, status: :see_other, notice: "Coin was successfully destroyed."
  end

  private

    def set_mining_type_options
      @mining_type_options = MiningType.all
    end

    def set_coin
      @coin = Coin.find(params.expect(:id))
    end

    def coin_params
      params.expect(coin: [ :description, :acronym, :url_image, :mining_type_id ])
    end
end
