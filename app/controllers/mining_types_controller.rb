class MiningTypesController < ApplicationController
  before_action :set_mining_type, only: %i[ show edit update destroy ]

  def index
    @mining_types = MiningType.all
  end

  def show
  end

  def new
    @mining_type = MiningType.new
  end

  def edit
  end

  def create
    @mining_type = MiningType.new(mining_type_params)
    if @mining_type.save
      redirect_to @mining_type, notice: "Mining type was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @mining_type.update(mining_type_params)
      redirect_to @mining_type, notice: "Mining type was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @mining_type.destroy!
    redirect_to mining_types_path, status: :see_other, notice: "Mining type was successfully destroyed."
  end

  private
    def set_mining_type
      @mining_type = MiningType.find(params.expect(:id))
    end


    def mining_type_params
      params.expect(mining_type: [ :description, :acronym ])
    end
end
