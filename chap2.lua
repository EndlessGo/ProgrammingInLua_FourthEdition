--[[
file = io.open("queue.txt", "w+") --清空
file = io.open("queue.txt","a")
io.output(file)

N = 8
count = 0
-- 检查位置
-- a=board,n=row,c=col
function isplaceok(a, n, c)
	for i = 1, n-1 do
		if a[i] == c or
			n-i == c-a[i] or
			n-i == a[i]-c then 
			return false
		end
	end
	return true
end

-- 打印棋盘
function printsolution(a)
	count = count + 1
	io.write(count.."\n")
	for i = 1, N do
		for j = 1, N do 
			io.write(a[i] == j and "X" or "-", " ")
		end
		io.write("\n")
	end
	io.write("\n")
end

--把从第n行到N的皇后放在棋盘a上
function addqueen(a,n)
	if count == 1 then
		return
	end
	if n>N then
		printsolution(a)
	else
		for c = 1,N do
			if isplaceok(a,n,c) then
				a[n]=c
				addqueen(a,n+1)
			end
		end
	end
end
addqueen({},1)

io.close(file)
--]]


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
