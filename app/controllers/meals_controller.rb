class MealsController < ApplicationController

  def index
      @meals = Meal.find(:all, :order => 'login ASC')
  end

end