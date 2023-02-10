--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (checkerror):
    3: 	local s, err = pcall(f, ...)
GETIMPORT R2 1 [pcall]
MOVE R3 R1
GETVARARGS R4 -1
CALL R2 -1 2
REMARK builtin assert/1
    4: 	assert(not s and string.find(err, msg))
NOT R5 R2
JUMPIFNOT R5 L0
GETIMPORT R5 4 [string.find]
MOVE R6 R3
MOVE R7 R0
CALL R5 2 1
L0: FASTCALL1 1 R5 L1
GETIMPORT R4 6 [assert]
CALL R4 1 0
    5: end
L1: RETURN R0 0

Function 1 (generateClearedTable):
REMARK allocation: table hash 0
    8: 	local tb = {}
NEWTABLE R2 0 0
    9: 	for i = 1, arraySize do
LOADN R5 1
MOVE R3 R0
LOADN R4 1
FORNPREP R3 L1
   10: 		tb[i] = i
L0: SETTABLE R5 R2 R5
    9: 	for i = 1, arraySize do
FORNLOOP R3 L0
   12: 	for i = 1, hashSize do
L1: LOADN R5 1
MOVE R3 R1
LOADN R4 1
FORNPREP R3 L3
   13: 		tb[tostring(i)] = i
L2: GETIMPORT R6 1 [tostring]
MOVE R7 R5
CALL R6 1 1
SETTABLE R5 R2 R6
   12: 	for i = 1, hashSize do
FORNLOOP R3 L2
   15: 	table.clear(tb)
L3: GETIMPORT R3 4 [table.clear]
MOVE R4 R2
CALL R3 1 0
   16: 	return tb
RETURN R2 1

Function 2 (??):
    2: local function checkerror(msg, f, ...)
DUPCLOSURE R0 K0 ['checkerror']
    7: local function generateClearedTable(arraySize, hashSize)
DUPCLOSURE R1 K1 ['generateClearedTable']
   20: 	checkerror("table expected", table.clear)
MOVE R2 R0
LOADK R3 K2 ['table expected']
GETIMPORT R4 5 [table.clear]
CALL R2 2 0
   21: 	checkerror("table expected", table.clear, 1, 2)
MOVE R2 R0
LOADK R3 K2 ['table expected']
GETIMPORT R4 5 [table.clear]
LOADN R5 1
LOADN R6 2
CALL R2 4 0
REMARK builtin assert/2
   23: 	assert(#generateClearedTable(0, 0) == 0, "table array part should stay empty")
MOVE R5 R1
LOADN R6 0
LOADN R7 0
CALL R5 2 1
LENGTH R4 R5
JUMPXEQKN R4 K6 L0 [0]
LOADB R3 0 +1
L0: LOADB R3 1
L1: FASTCALL2K 1 R3 K7 L2 ['table array part should stay emp'...]
LOADK R4 K7 ['table array part should stay emp'...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
REMARK builtin assert/2
   24: 	assert(#generateClearedTable(10, 0) == 0, "table array part should be empty (had array)")
L2: MOVE R5 R1
LOADN R6 10
LOADN R7 0
CALL R5 2 1
LENGTH R4 R5
JUMPXEQKN R4 K6 L3 [0]
LOADB R3 0 +1
L3: LOADB R3 1
L4: FASTCALL2K 1 R3 K10 L5 ['table array part should be empty'...]
LOADK R4 K10 ['table array part should be empty'...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
REMARK builtin assert/2
   25: 	assert(#generateClearedTable(0, 10) == 0, "table array part should be empty (had hash)")
L5: MOVE R5 R1
LOADN R6 0
LOADN R7 10
CALL R5 2 1
LENGTH R4 R5
JUMPXEQKN R4 K6 L6 [0]
LOADB R3 0 +1
L6: LOADB R3 1
L7: FASTCALL2K 1 R3 K11 L8 ['table array part should be empty'...]
LOADK R4 K11 ['table array part should be empty'...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
REMARK builtin assert/2
   26: 	assert(#generateClearedTable(10, 10) == 0, "table array part should be empty (had both)")
L8: MOVE R5 R1
LOADN R6 10
LOADN R7 10
CALL R5 2 1
LENGTH R4 R5
JUMPXEQKN R4 K6 L9 [0]
LOADB R3 0 +1
L9: LOADB R3 1
L10: FASTCALL2K 1 R3 K12 L11 ['table array part should be empty'...]
LOADK R4 K12 ['table array part should be empty'...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
REMARK builtin assert/2
   28: 	assert(next(generateClearedTable(0, 0)) == nil, "table hash part should stay empty")
L11: GETIMPORT R4 14 [next]
MOVE R5 R1
LOADN R6 0
LOADN R7 0
CALL R5 2 -1
CALL R4 -1 1
JUMPXEQKNIL R4 L12
LOADB R3 0 +1
L12: LOADB R3 1
L13: FASTCALL2K 1 R3 K15 L14 ['table hash part should stay empt'...]
LOADK R4 K15 ['table hash part should stay empt'...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
REMARK builtin assert/2
   29: 	assert(next(generateClearedTable(10, 0)) == nil, "table hash part should be empty (had array)")
L14: GETIMPORT R4 14 [next]
MOVE R5 R1
LOADN R6 10
LOADN R7 0
CALL R5 2 -1
CALL R4 -1 1
JUMPXEQKNIL R4 L15
LOADB R3 0 +1
L15: LOADB R3 1
L16: FASTCALL2K 1 R3 K16 L17 ['table hash part should be empty '...]
LOADK R4 K16 ['table hash part should be empty '...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
REMARK builtin assert/2
   30: 	assert(next(generateClearedTable(0, 10)) == nil, "table hash part should be empty (had hash)")
L17: GETIMPORT R4 14 [next]
MOVE R5 R1
LOADN R6 0
LOADN R7 10
CALL R5 2 -1
CALL R4 -1 1
JUMPXEQKNIL R4 L18
LOADB R3 0 +1
L18: LOADB R3 1
L19: FASTCALL2K 1 R3 K17 L20 ['table hash part should be empty '...]
LOADK R4 K17 ['table hash part should be empty '...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
REMARK builtin assert/2
   31: 	assert(next(generateClearedTable(10, 10)) == nil, "table hash part should be empty (had both)")
L20: GETIMPORT R4 14 [next]
MOVE R5 R1
LOADN R6 10
LOADN R7 10
CALL R5 2 -1
CALL R4 -1 1
JUMPXEQKNIL R4 L21
LOADB R3 0 +1
L21: LOADB R3 1
L22: FASTCALL2K 1 R3 K18 L23 ['table hash part should be empty '...]
LOADK R4 K18 ['table hash part should be empty '...]
GETIMPORT R2 9 [assert]
CALL R2 2 0
   34: 	for i = 1, 16 do
L23: LOADN R4 1
LOADN R2 16
LOADN R3 1
FORNPREP R2 L28
   35: 		local t1 = generateClearedTable(16, 0)
L24: MOVE R5 R1
LOADN R6 16
LOADN R7 0
CALL R5 2 1
   36: 		local t2 = table.create(16)
GETIMPORT R6 20 [table.create]
LOADN R7 16
CALL R6 1 1
   37: 		t1[i] = true
LOADB R7 1
SETTABLE R7 R5 R4
   38: 		t2[i] = true
LOADB R7 1
SETTABLE R7 R6 R4
REMARK builtin assert/2
   39: 		assert(#t1 == #t2, "table length mismatch with i=" .. i .. "(" .. #t1 .. " vs " .. #t2 .. ")")
LENGTH R9 R5
LENGTH R10 R6
JUMPIFEQ R9 R10 L25
LOADB R8 0 +1
L25: LOADB R8 1
L26: LOADK R10 K21 ['table length mismatch with i=']
MOVE R11 R4
LOADK R12 K22 ['(']
LENGTH R13 R5
LOADK R14 K23 [' vs ']
LENGTH R15 R6
LOADK R16 K24 [')']
CONCAT R9 R10 R16
FASTCALL2 1 R8 R9 L27
GETIMPORT R7 9 [assert]
CALL R7 2 0
   34: 	for i = 1, 16 do
L27: FORNLOOP R2 L24
REMARK allocation: table array 11
   43: 		local things = {"foo", "bar", "baz", "foobar", "a", "b", "c", "d", "e", "f", "g"}
L28: NEWTABLE R2 0 11
LOADK R3 K25 ['foo']
LOADK R4 K26 ['bar']
LOADK R5 K27 ['baz']
LOADK R6 K28 ['foobar']
LOADK R7 K29 ['a']
LOADK R8 K30 ['b']
LOADK R9 K31 ['c']
LOADK R10 K32 ['d']
LOADK R11 K33 ['e']
LOADK R12 K34 ['f']
LOADK R13 K35 ['g']
SETLIST R2 R3 11 [1]
   44: 		local tb = generateClearedTable(0, 20)
MOVE R3 R1
LOADN R4 0
LOADN R5 20
CALL R3 2 1
REMARK allocation: table hash 0
   45: 		local containsAll = {}
NEWTABLE R4 0 0
   46: 		for _, v in ipairs(things) do
GETIMPORT R5 37 [ipairs]
MOVE R6 R2
CALL R5 1 3
FORGPREP_INEXT R5 L30
   47: 			tb[v] = true
L29: LOADB R10 1
SETTABLE R10 R3 R9
   46: 		for _, v in ipairs(things) do
L30: FORGLOOP R5 L29 2 [inext]
   49: 		for k, _ in pairs(tb) do
GETIMPORT R5 39 [pairs]
MOVE R6 R3
CALL R5 1 3
FORGPREP_NEXT R5 L32
   50: 			containsAll[k] = true
L31: LOADB R10 1
SETTABLE R10 R4 R8
   49: 		for k, _ in pairs(tb) do
L32: FORGLOOP R5 L31 2
   52: 		for _, v in ipairs(things) do
GETIMPORT R5 37 [ipairs]
MOVE R6 R2
CALL R5 1 3
FORGPREP_INEXT R5 L35
REMARK builtin assert/2
   53: 			assert(tb[v], "key `" .. v .. "` doesn't show up in index")
L33: GETTABLE R11 R3 R9
LOADK R13 K40 ['key `']
MOVE R14 R9
LOADK R15 K41 ['` doesn't show up in index']
CONCAT R12 R13 R15
FASTCALL2 1 R11 R12 L34
GETIMPORT R10 9 [assert]
CALL R10 2 0
REMARK builtin assert/2
   54: 			assert(containsAll[v], "key `" .. v .. "` didn't show up in iteration")
L34: GETTABLE R11 R4 R9
LOADK R13 K40 ['key `']
MOVE R14 R9
LOADK R15 K42 ['` didn't show up in iteration']
CONCAT R12 R13 R15
FASTCALL2 1 R11 R12 L35
GETIMPORT R10 9 [assert]
CALL R10 2 0
   52: 		for _, v in ipairs(things) do
L35: FORGLOOP R5 L33 2 [inext]
   59: 		local tb = generateClearedTable(10, 0)
MOVE R2 R1
LOADN R3 10
LOADN R4 0
CALL R2 2 1
   60: 		for i = 1, 40 do
LOADN R5 1
LOADN R3 40
LOADN R4 1
FORNPREP R3 L37
   61: 			tb[i] = i
L36: SETTABLE R5 R2 R5
   60: 		for i = 1, 40 do
FORNLOOP R3 L36
REMARK builtin assert/2
   63: 		assert(#tb == 40, "wrong array part size after expand")
L37: LENGTH R5 R2
JUMPXEQKN R5 K43 L38 [40]
LOADB R4 0 +1
L38: LOADB R4 1
L39: FASTCALL2K 1 R4 K44 L40 ['wrong array part size after expa'...]
LOADK R5 K44 ['wrong array part size after expa'...]
GETIMPORT R3 9 [assert]
CALL R3 2 0
   67: 		local tb = generateClearedTable(0, 10)
L40: MOVE R2 R1
LOADN R3 0
LOADN R4 10
CALL R2 2 1
   68: 		for i = 1, 40 do
LOADN R5 1
LOADN R3 40
LOADN R4 1
FORNPREP R3 L42
   69: 			tb[tostring(i)] = i
L41: GETIMPORT R6 46 [tostring]
MOVE R7 R5
CALL R6 1 1
SETTABLE R5 R2 R6
   68: 		for i = 1, 40 do
FORNLOOP R3 L41
   71: 		local count = 0
L42: LOADN R3 0
   72: 		for _ in pairs(tb) do
GETIMPORT R4 39 [pairs]
MOVE R5 R2
CALL R4 1 3
FORGPREP_NEXT R4 L44
   73: 			count = count + 1
L43: ADDK R3 R3 K47 [1]
   72: 		for _ in pairs(tb) do
L44: FORGLOOP R4 L43 1
REMARK builtin assert/2
   75: 		assert(count == 40, "wrong hash part size after expand")
JUMPXEQKN R3 K43 L45 [40]
LOADB R5 0 +1
L45: LOADB R5 1
L46: FASTCALL2K 1 R5 K48 L47 ['wrong hash part size after expan'...]
LOADK R6 K48 ['wrong hash part size after expan'...]
GETIMPORT R4 9 [assert]
CALL R4 2 0
   79: print "OK"
L47: GETIMPORT R2 50 [print]
LOADK R3 K51 ['OK']
CALL R2 1 0
   80: 
RETURN R0 0

]]
end