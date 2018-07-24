class AmountsController < ApplicationController
  before_action :set_amount, only: [:show, :update]
  def index
    @amounts = Amount.order(:created_at)
    json_response(@amounts)
  end

  def create
    @amount = Amount.create!(amount_params)
    json_response(@amount, :created)
  end

  def show
    json_response(@amount)
  end

  def update
    @amount.update(amount_params)
    head :no_content
  end

  private
  def amount_params
    params.permit(:monthly_contribution, :group_id)
  end

  def set_amount
    @amount = Amount.find(params[:amount_id])
  end
end
