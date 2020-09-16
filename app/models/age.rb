class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10〜20代' },
    { id: 3, name: '20〜30代' },
    { id: 4, name: '30〜40代' },
    { id: 5, name: '40〜50代' },
    { id: 6, name: '50〜60代' },
    { id: 7, name: '60〜70代' }
  ]
end