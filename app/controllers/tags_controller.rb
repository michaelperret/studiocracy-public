class TagsController < ApplicationController

  def new
    @tag = Tag.new
  end

  def create
    @tag = tag.create(tag_params)
  end

  private
  def tag_params
    params.require().permit(:tag_name, :user_id)
  end

end
