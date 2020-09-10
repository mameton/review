class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'CARE' },
    { id: 3, name: 'COLOR' },
    { id: 4, name: 'PERM' },
    { id: 5, name: 'STYLING' },
    { id: 6, name: 'COSME' },
    { id: 7, name: 'NAIL' },
    { id: 8, name: 'OTHER' },
    { id: 9, name: 'BOOK' }
  ]
end