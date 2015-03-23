require_relative 'piece'

class Queen < Piece

	def ne(move)
		if @place.last[0] == move[0]
			return false
		elsif @place.last[0] > move[0] && @place[1].to_i < move[1].to_i && ((move[0].ord - @place.last[0].ord) + move[1].to_i == @place.last[1].to_i)
			return true
		else
			return false
		end
	end

	def nw(move)
		if @place.last[0] == move[0] 
			return false
		elsif @place.last[0] > move[0] && @place.last[1].to_i > move[1].to_i && ((@place.last[0].ord - move[0].ord) + move[1].to_i == @place.last[1].to_i)
			return true
		else
			return false
		end
	end

	def se(move)
		if @place.last[0] == move[0] 
			return false
		elsif @place.last[0] < move[0] && @place.last[1].to_i < move[1].to_i && ((@place.last[0].ord - move[0].ord) + move[1].to_i == @place.last[1].to_i)
			return true
		else
			return false
		end
	end

	def sw(move)
		if @place.last[0] == move[0] 
			return false
		elsif @place.last[0] < move[0] && @place.last[1].to_i > move[1].to_i && ((move[0].ord - @place.last[0].ord) + move[1].to_i == @place.last[1].to_i)
			return true
		else
			return false
		end
	end

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
		if ne(move) == true || nw(move) == true || se(move) == true || sw(move) == true || down(move) == true || up(move) == true || right(move) == true || left(move) == true
			@place << move
			return "valid"
		else
			return "invalid"
		end
	end
end

queen = Queen.new("black", "d4")

puts queen.movement("h4")