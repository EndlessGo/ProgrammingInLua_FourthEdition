--[[
function fact (n)
	if n == 0 then
		return 1
	else
		return n*fact(n-1)
	end
end


print("enter a number:")
a = io.read("*n")
print(fact(a))
--]]

--[[
--one-step =1
--until? =1
--end = 1
___=1
_end = 1
End = 1
NULL = 1
print(type(nil) == nil)
--]]

--function is_boolean(v) return v == true or v == false end

num = 123
str = "str"
bool = true

function is_boolean(v) 
	if v == true then
		print("v==true")
	else
		print("v==false")
	end
end
print(is_boolean(num))
print("is_boolean(123)   --> " .. (is_boolean(num) and "true" or "false"))
print("is_boolean('str') --> " .. (is_boolean(str) and "true" or "false"))
print("is_boolean(true)  --> " .. (is_boolean(bool) and "true" or "false"))
a = "str"
print(a==true or a==false)

print(arg[0])