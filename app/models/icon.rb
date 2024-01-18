class Icon < ActiveHash::Base
  self.data = [
    { id: 0, image: 'icon_noselect.png' },
    { id: 1, image: 'icon_walk.png' },
    { id: 2, image: 'icon_hiking.png' },
    { id: 3, image: 'icon_car.png' },
    { id: 4, image: 'icon_taxi.png' },
    { id: 5, image: 'icon_bus.png' },
    { id: 6, image: 'icon_train.png' },
    { id: 7, image: 'icon_express.png' },
    { id: 8, image: 'icon_airplane.png' },
    { id: 9, image: 'icon_ferry.png' },
    { id: 10, image: 'icon_meal.png' },
    { id: 11, image: 'icon_cafe.png' },
    { id: 12, image: 'icon_shopping.png' },
    { id: 13, image: 'icon_attire.png' },
    { id: 14, image: 'icon_locker.png' },
    { id: 15, image: 'icon_reception.png' },
    { id: 16, image: 'icon_lodging.png' },
    { id: 17, image: 'icon_spa.png' },
    { id: 18, image: 'icon_cinema.png' },
    { id: 19, image: 'icon_sightseeing.png' },
    { id: 20, image: 'icon_heart.png' },
    { id: 21, image: 'icon_star.png' },
    { id: 22, image: 'icon_note.png' },
    { id: 23, image: 'icon_exclamation.png' }
  ]

  include ActiveHash::Associations
  has_many :schedules
  has_many :locations

end

