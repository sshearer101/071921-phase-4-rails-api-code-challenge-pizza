class RestaurantPizzasController < ApplicationController
    def create
        restaurant_pizza = RestaurantPizza.create(params.permit(:price, :pizza_id, :restaurant_id))
        if restaurant_pizza.valid?
            render json: restaurant_pizza.pizza, status: :created
        else
            render json: { errors: ["validation errors"] }, status: :unprocessable_entity
        end
    end
end
