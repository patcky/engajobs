


class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    keyValue = Struct.new(:name, :description, :image, :image_alt);
    @keyValues = [
      keyValue.new("LGBTQIA+", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", "https://via.placeholder.com/148x115"),
      keyValue.new("Gênero", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", "https://via.placeholder.com/148x115"),
      keyValue.new("Etnia", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", "https://via.placeholder.com/148x115")
    ]

    brand = Struct.new(:name, :image, :image_alt);
    @brands = (1..9).map { |i| brand.new("Marca #{i}", "https://via.placeholder.com/90x90", "") };
  end

  def about
    @members = ['Pat', 'Angelita']
  end
end