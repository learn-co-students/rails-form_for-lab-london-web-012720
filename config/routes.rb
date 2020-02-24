Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  resources :school_classes
end


class Species < ApplicationRecord
  has_many :pets, dependent: :destroy
end