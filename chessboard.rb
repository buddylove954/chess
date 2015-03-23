require_relative "rook.rb"
class Board
	attr_reader :board
	def initialize
		@board = {
			:a1=> nil, :a2=> nil, :a3=> nil, :a4=> nil, :a5=> nil, :a6=> nil, :a7=> nil, :a8=> nil,
            :b1=> nil, :b2=> nil, :b3=> nil, :b4=> nil, :b5=> nil, :b6=> nil, :b7=> nil, :b8=> nil,
            :c1=> nil, :c2=> nil, :c3=> nil, :c4=> nil, :c5=> nil, :c6=> nil, :c7=> nil, :c8=> nil,
            :d1=> nil, :d2=> nil, :d3=> nil, :d4=> nil, :d5=> nil, :d6=> nil, :d7=> nil, :d8=> nil,
            :e1=> nil, :e2=> nil, :e3=> nil, :e4=> nil, :e5=> nil, :e6=> nil, :e7=> nil, :e8=> nil,
            :f1=> nil, :f2=> nil, :f3=> nil, :f4=> nil, :f5=> nil, :f6=> nil, :f7=> nil, :f8=> nil,
            :g1=> nil, :g2=> nil, :g3=> nil, :g4=> nil, :g5=> nil, :g6=> nil, :g7=> nil, :g8=> nil,
            :h1=> nil, :h2=> nil, :h3=> nil, :h4=> nil, :h5=> nil, :h6=> nil, :h7=> nil, :h8=> nil,}
      end

	
end

now = Board.new

rook = Rook.new("white", "c4")

rook.movement("b4")

p rook



  
