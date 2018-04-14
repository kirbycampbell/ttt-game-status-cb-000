# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.any?{|i| i = ["X", "X", "X"]}
    return true
    win_combination.any?{|i| i = ["O", "O", "O"]}
    return true
    win_combination.none?{|i| i = ["X", "X", "X"]}
    return false
    win_combination.none?{|i| i = ["O", "O", "O"]}
    return false
  end
end
