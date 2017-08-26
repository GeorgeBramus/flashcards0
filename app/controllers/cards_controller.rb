class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
  end

  def new
    @card = Card.new
  end

  def create
    record_card = Card.create(card_params)
    if record_card.errors.empty?
      @rec = record_card
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def card_params
    params.require(:card).permit(:original_text, :translated_text, :review_date)
  end
end
