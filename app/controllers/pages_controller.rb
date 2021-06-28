


class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    cause = Struct.new(:name, :description, :image, :image_alt);
    @causes = [
      cause.new("LGBTQIA+", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
      cause.new("Gênero", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
      cause.new("Etnia", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.")
    ]

    brand = Struct.new(:name, :image, :image_alt);
    @brands = (1..9).map { |i| brand.new("Marca #{i}") };
  end

  def about
    @members = ['Pat', 'Angelita']
  end
end