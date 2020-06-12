class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    choices = Bookgroup.where(group_id: params[:id]).pluck(:choice_id)
    @books = Book.where(id: choices)
  end
end
