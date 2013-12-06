module Api
  module V1
    class TodosController < ApplicationController
      respond_to :json

      def index
        respond_with Todo.all
      end

      def show
        @todo = Todo.find(params[:id])
        respond_with @todo
      end

      def create
        respond_with Todo.create(todo_params), location: nil
      end

      def update
        @todo = Todo.find(params[:id])
        respond_with @todo.update(todo_params), location: nil
      end

      def destroy
        @todo = Todo.find(params[:id])
        respond_with @todo.destroy, location: nil
      end

    private

      def todo_params
        params.require(:todo).permit(:title, :is_completed)
      end
    end
  end
end
