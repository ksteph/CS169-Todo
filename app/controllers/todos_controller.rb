class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  private
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def todo_params
    params.require(:todo).permit(:description)
  end
end
