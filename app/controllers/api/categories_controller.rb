class Api::CategoriesController < ApplicationController

  def index
    render json: Category.all
  end

  def new_game
    categories = Category.limit(2).order('Random()')
    # categories_data = categories.map do |cat|
    #   {
    #     category: cat.name,
    #     category_id: cat.id,
    #     cards: cat.cards
    #   }
    # end
    # render json: { data: categories_data }
    render json: categories.to_json(include: [:cards])   # this is a simpler way to do what I commented out above
    # we could also serialize the data here
  end

  def create_category_with_cards
    name = params[:name]
    question1 = params[:question1]
    question2 = params[:question2]
    question3 = params[:question3]

    new_category = Category.create(name: name)
    card1 = new_category.cards.create(question:question1)
    card2 = new_category.cards.create(question:question2)
    card3 = new_category.cards.create(question:question3)

    render json: { data: new_category.to_json(include: [:cards]) }
  end
end
