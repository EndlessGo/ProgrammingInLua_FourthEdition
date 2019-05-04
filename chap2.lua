-- 全排列算法
-- 产生一个1~8的全排列

count = 0
function printResult(a)
	count = count+1
	io.write(count, ": ")
	for i = 1, #a do
		io.write(a[i], " ")
	end
	io.write("\n")
end

function Permute(a, k)
	local len = #a
	if (len == k) then
		printResult(a)
	else
		for i = k, len do
			a[k], a[i] = a[i], a[k]
			Permute(a, k+1)
			a[k], a[i] = a[i], a[k]
		end
	end
end

arr = {1,2,3,4,5,6,7,8}
Permute(arr,1)
