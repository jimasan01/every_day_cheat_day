class Volume < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '🍚' },
    { id: 3, name: '🍚🍚' },
    { id: 4, name: '🍚🍚🍚' },
    { id: 5, name: '🍚🍚🍚🍚' },
    { id: 6, name: '🍚🍚🍚🍚🍚' },
  ]

  include ActiveHash::Associations
  has_many :cheats
  
end
