class PagesController < ApplicationController
  def home
  end

  def about
    @members = ['Pat', 'Angelita']
  end
end
