class PagesController < ApplicationController
  def home
    @massages = Massage.all
  end
end
