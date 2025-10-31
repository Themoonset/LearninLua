BoardSize = 8
function checkPlacement(positionArray, r, c)
	for i = 1, r - 1 do
		if (positionArray[i] == c) or (positionArray[i] - 1 == c - r) or (positionArray[i] + i == c + r) then
			return false
		end
	end
	return true
end

function solution(array)
	for i = 1, BoardSize do
		for j = 1, BoardSize do
			io.write(array[i] == j and "X" or "-", " ")
		end
		io.write("\n")
	end
	io.write("\n")
end

function addqueen(array, n)
	if n > BoardSize then
		solution(array)
	end
	for c = 1, BoardSize do
		if checkPlacement(array, n, c) then
			array[n] = c
			addqueen(array, n + 1)
		end
	end
end

addqueen({}, 1)
