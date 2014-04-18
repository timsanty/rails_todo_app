class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    # binding.pry
    Todo.create(title: params[:todo][:title], description: params[:todo][:description], done: false)
    @todos = Todo.all
    render :index
  end

  def show
    # binding.pry
    @todo = Todo.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
