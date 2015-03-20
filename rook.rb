require_relative "piece.rb"

class Rook < Piece
	def left(move)
		if @place.last[1].to_i == 1
		return false

	elsif move[1].to_i < @place.last[1].to_i && move[0] == @place.last[0]
		return true
	else
		return false
	end
end

	def right(move)
		if @place.last[1].to_i == 8
		false
	elsif move[1].to_i > @place.last[1].to_i && move[0] == @place.last[0]
		return true
	else
		return false
	end
end

def up(move)
		if @place.last[0] == "a"
		return false

	elsif move[0] < @place.last[0] && move[1].to_i == @place.last[1].to_i
		return true
	else
		return false
	end
end

def down(move)
		if @place.last[0] == "h"
		return false

	elsif move[0] > @place.last[0] && move[1].to_i == @place.last[1].to_i
		return true
	else
		return false
	end
end

	def movement(move)
		if down(move) == true || up(move) == true || right(move) == true || left(move) == true
			@place << move
			return "valid"
		else
			return "invalid"
		end
	end
end


rook = Rook.new("black", "c4")

p rook.movement("b4")








