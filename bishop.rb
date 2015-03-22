require_relative 'piece'
class Bishop < Piece

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

	def movement(move)
		if ne(move) == true || nw(move) == true || se(move) == true || sw(move) == true
			@place << move
			return "valid"
		else
			return "invalid"
		end
	end
end

bishop = Bishop.new("black", "d4")

puts bishop.movement("f2")
