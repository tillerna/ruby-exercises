array_of_hash_objects = [
    { name: 'Ruby', is_my_favorite?: true },
    { name: 'JavaScript', is_my_favorite?: false },
    { name: 'HTML', is_my_favorite?: false }
  ]


p array_of_hash_objects.collect { |name, fave| name }