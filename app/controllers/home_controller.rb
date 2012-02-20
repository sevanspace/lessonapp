class HomeController < ApplicationController
  def index
    @lessons = Lesson.all
    @topics = Topic.all
  end
end
