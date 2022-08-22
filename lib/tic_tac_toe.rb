class TicTacToe
    attr_accessor :board

    def initialize
        # @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        @board = Array.new(9," ")
    end

    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [6,4,2]
    ]

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(user_input)
        user_input.to_i - 1
    end

    def move(user_index,token = 'X')
        @board[user_index] = token
    end

    def position_taken?(user_index)
        @board[user_index] != " " ? true : false
    end

    def valid_move?(user_index)
        @board[user_index] == " " && user_index.between?(0,8) 
    end

    def turn_count
        count = 0
        @board.each do |token|
            if token == "X" || token == "O"
                count += 1
            end
        end
        count
    end

    def current_player
        turn_count % 2 == 0 ? "X" : "O"
    end
end