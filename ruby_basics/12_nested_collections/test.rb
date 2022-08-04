 languages = {
    ruby: { facts: ['fact 0', 'fact 1'],
            initial_release: 'December 25, 1996',
            is_beautiful?: true },

    javascript: { facts: ['fact 0', 'fact 1'],
                  initial_release: 'December 4, 1995',
                  is_beautiful?: false }
  }


  array = languages[:ruby][:facts]
  p array.fetch(1)