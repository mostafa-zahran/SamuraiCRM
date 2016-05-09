module Samurai
  module Tasks
    class TasksController < ApplicationController
      before_action :set_task, only: [:show, :edit, :update, :destroy]

      # GET /tasks
      def index
        @tasks = current_user.tasks
      end

      # GET /tasks/1
      def show
      end

      # GET /tasks/new
      def new
        @task = Samurai::Tasks::Task.new
      end

      # GET /tasks/1/edit
      def edit
      end

      # POST /tasks
      def create
        @task = Samurai::Tasks::Task.new(task_params)

        if @task.save
          redirect_to [samurai, @task], notice: 'Task was successfully created.'
        else
          render :new
        end
      end

      # PATCH/PUT /tasks/1
      def update
        if @task.update(task_params)
          redirect_to [samurai, @task], notice: 'Task was successfully updated.'
        else
          render :edit
        end
      end

      # DELETE /tasks/1
      def destroy
        @task.destroy
        redirect_to samurai.tasks_url, notice: 'Task was successfully destroyed.'
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = Samurai::Tasks::Task.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def task_params
        params.require(:task).permit(:title,	:content,	:user_id,	:contact_id)
      end
    end
  end
end
