class KifuResult < ActiveHash::Base
  self.data = [
    { id: 1,  name: '--' },
    { id: 2,  name: '先手勝ち' },
    { id: 3,  name: '後手勝ち' },
    { id: 4,  name: '千日手' },
    { id: 5, name: '持将棋' }
  ]
end
