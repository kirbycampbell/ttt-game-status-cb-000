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
  WIN_COMBINATIONS.any?{|i| i = ["X", "X", "X"]}
    return true
  WIN_COMBINATIONS.any?{|i| i = ["O", "O", "O"]}
    return true
  WIN_COMBINATIONS.none?{|i| i = ["X", "X", "X"]}
    return false
  WIN_COMBINATIONS.none?{|i| i = ["O", "O", "O"]}
    return false
end
