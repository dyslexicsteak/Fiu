--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (f):
   12: function f() return 10, 11, 12 end
LOADN R0 10
LOADN R1 11
LOADN R2 12
RETURN R0 3

Function 1 (??):
REMARK allocation: table hash 0
   19:   local f = function (n) local x = {}; for i=1,n do x[i]=i end;
NEWTABLE R1 0 0
LOADN R4 1
MOVE R2 R0
LOADN R3 1
FORNPREP R2 L1
L0: SETTABLE R4 R1 R4
FORNLOOP R2 L0
REMARK builtin table.unpack/1
   20:                          return unpack(x) end;
L1: FASTCALL1 53 R1 L2
MOVE R3 R1
GETUPVAL R2 0
CALL R2 1 -1
L2: RETURN R2 -1

Function 2 (f):
   68: function f(a) return a end
RETURN R0 1

Function 3 (??):
    3: print("testing assignments, logical operators, and constructors")
GETIMPORT R0 1 [print]
LOADK R1 K2 ['testing assignments, logical ope'...]
CALL R0 1 0
    5: local unpack = table.unpack
GETIMPORT R0 5 [table.unpack]
    9: a, b = 1, 2+3
LOADN R1 1
LOADN R2 5
SETGLOBAL R1 K6 ['a']
SETGLOBAL R2 K7 ['b']
REMARK builtin assert/1
   10: assert(a==1 and b==5)
LOADB R2 0
GETGLOBAL R3 K6 ['a']
JUMPXEQKN R3 K8 L1 NOT [1]
GETGLOBAL R3 K7 ['b']
JUMPXEQKN R3 K9 L0 [5]
LOADB R2 0 +1
L0: LOADB R2 1
L1: FASTCALL1 1 R2 L2
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK allocation: table hash 0
   11: a={}
L2: NEWTABLE R1 0 0
SETGLOBAL R1 K6 ['a']
   12: function f() return 10, 11, 12 end
DUPCLOSURE R1 K12 ['f']
SETGLOBAL R1 K13 ['f']
   13: a.x, b, a[1] = 1, 2, f()
GETGLOBAL R1 K6 ['a']
GETGLOBAL R2 K6 ['a']
LOADN R3 1
LOADN R4 2
GETGLOBAL R5 K13 ['f']
CALL R5 0 1
SETTABLEKS R3 R1 K14 ['x']
SETGLOBAL R4 K7 ['b']
SETTABLEN R5 R2 1
REMARK builtin assert/1
   14: assert(a.x==1 and b==2 and a[1]==10)
LOADB R2 0
GETGLOBAL R4 K6 ['a']
GETTABLEKS R3 R4 K14 ['x']
JUMPXEQKN R3 K8 L4 NOT [1]
LOADB R2 0
GETGLOBAL R3 K7 ['b']
JUMPXEQKN R3 K15 L4 NOT [2]
GETGLOBAL R4 K6 ['a']
GETTABLEN R3 R4 1
JUMPXEQKN R3 K16 L3 [10]
LOADB R2 0 +1
L3: LOADB R2 1
L4: FASTCALL1 1 R2 L5
GETIMPORT R1 11 [assert]
CALL R1 1 0
   15: a[f()], b, a[f()+3] = f(), a, 'x'
L5: GETGLOBAL R1 K6 ['a']
GETGLOBAL R2 K13 ['f']
CALL R2 0 1
GETGLOBAL R3 K6 ['a']
GETGLOBAL R5 K13 ['f']
CALL R5 0 1
ADDK R4 R5 K17 [3]
GETGLOBAL R5 K13 ['f']
CALL R5 0 1
GETGLOBAL R6 K6 ['a']
LOADK R7 K14 ['x']
SETTABLE R5 R1 R2
SETGLOBAL R6 K7 ['b']
SETTABLE R7 R3 R4
REMARK builtin assert/1
   16: assert(a[10] == 10 and b == a and a[13] == 'x')
LOADB R2 0
GETGLOBAL R4 K6 ['a']
GETTABLEN R3 R4 10
JUMPXEQKN R3 K16 L7 NOT [10]
LOADB R2 0
GETGLOBAL R3 K7 ['b']
GETGLOBAL R4 K6 ['a']
JUMPIFNOTEQ R3 R4 L7
GETGLOBAL R4 K6 ['a']
GETTABLEN R3 R4 13
JUMPXEQKS R3 K14 L6 ['x']
LOADB R2 0 +1
L6: LOADB R2 1
L7: FASTCALL1 1 R2 L8
GETIMPORT R1 11 [assert]
CALL R1 1 0
   19:   local f = function (n) local x = {}; for i=1,n do x[i]=i end;
L8: DUPCLOSURE R1 K18 []
CAPTURE VAL R0
   21:   local a,b,c
LOADNIL R2
LOADNIL R3
LOADNIL R4
   22:   a,b = 0, f(1)
LOADN R2 0
MOVE R5 R1
LOADN R6 1
CALL R5 1 1
MOVE R3 R5
REMARK builtin assert/1
   23:   assert(a == 0 and b == 1)
LOADB R6 0
JUMPXEQKN R2 K19 L10 NOT [0]
JUMPXEQKN R3 K8 L9 [1]
LOADB R6 0 +1
L9: LOADB R6 1
L10: FASTCALL1 1 R6 L11
GETIMPORT R5 11 [assert]
CALL R5 1 0
   24:   A,b = 0, f(1)
L11: LOADN R5 0
MOVE R6 R1
LOADN R7 1
CALL R6 1 1
MOVE R3 R6
SETGLOBAL R5 K20 ['A']
REMARK builtin assert/1
   25:   assert(A == 0 and b == 1)
LOADB R6 0
GETGLOBAL R7 K20 ['A']
JUMPXEQKN R7 K19 L13 NOT [0]
JUMPXEQKN R3 K8 L12 [1]
LOADB R6 0 +1
L12: LOADB R6 1
L13: FASTCALL1 1 R6 L14
GETIMPORT R5 11 [assert]
CALL R5 1 0
   26:   a,b,c = 0,5,f(4)
L14: LOADN R2 0
LOADN R3 5
MOVE R5 R1
LOADN R6 4
CALL R5 1 1
MOVE R4 R5
REMARK builtin assert/1
   27:   assert(a==0 and b==5 and c==1)
LOADB R6 0
JUMPXEQKN R2 K19 L16 NOT [0]
LOADB R6 0
JUMPXEQKN R3 K9 L16 NOT [5]
JUMPXEQKN R4 K8 L15 [1]
LOADB R6 0 +1
L15: LOADB R6 1
L16: FASTCALL1 1 R6 L17
GETIMPORT R5 11 [assert]
CALL R5 1 0
   28:   a,b,c = 0,5,f(0)
L17: LOADN R2 0
LOADN R3 5
MOVE R5 R1
LOADN R6 0
CALL R5 1 1
MOVE R4 R5
REMARK builtin assert/1
   29:   assert(a==0 and b==5 and c==nil)
LOADB R6 0
JUMPXEQKN R2 K19 L19 NOT [0]
LOADB R6 0
JUMPXEQKN R3 K9 L19 NOT [5]
JUMPXEQKNIL R4 L18
LOADB R6 0 +1
L18: LOADB R6 1
L19: FASTCALL1 1 R6 L20
GETIMPORT R5 11 [assert]
CALL R5 1 0
   33: a, b, c, d = 1 and nil, 1 or nil, (1 and (nil or 1)), 6
L20: LOADNIL R1
LOADN R2 1
LOADN R3 1
LOADN R4 6
SETGLOBAL R1 K6 ['a']
SETGLOBAL R2 K7 ['b']
SETGLOBAL R3 K21 ['c']
SETGLOBAL R4 K22 ['d']
REMARK builtin assert/1
   34: assert(not a and b and c and d==6)
GETGLOBAL R3 K6 ['a']
NOT R2 R3
JUMPIFNOT R2 L22
GETGLOBAL R2 K7 ['b']
JUMPIFNOT R2 L22
GETGLOBAL R2 K21 ['c']
JUMPIFNOT R2 L22
GETGLOBAL R3 K22 ['d']
JUMPXEQKN R3 K23 L21 [6]
LOADB R2 0 +1
L21: LOADB R2 1
L22: FASTCALL1 1 R2 L23
GETIMPORT R1 11 [assert]
CALL R1 1 0
   36: d = 20
L23: LOADN R1 20
SETGLOBAL R1 K22 ['d']
   37: a, b, c, d = f()
GETGLOBAL R1 K13 ['f']
CALL R1 0 4
SETGLOBAL R1 K6 ['a']
SETGLOBAL R2 K7 ['b']
SETGLOBAL R3 K21 ['c']
SETGLOBAL R4 K22 ['d']
REMARK builtin assert/1
   38: assert(a==10 and b==11 and c==12 and d==nil)
LOADB R2 0
GETGLOBAL R3 K6 ['a']
JUMPXEQKN R3 K16 L25 NOT [10]
LOADB R2 0
GETGLOBAL R3 K7 ['b']
JUMPXEQKN R3 K24 L25 NOT [11]
LOADB R2 0
GETGLOBAL R3 K21 ['c']
JUMPXEQKN R3 K25 L25 NOT [12]
GETGLOBAL R3 K22 ['d']
JUMPXEQKNIL R3 L24
LOADB R2 0 +1
L24: LOADB R2 1
L25: FASTCALL1 1 R2 L26
GETIMPORT R1 11 [assert]
CALL R1 1 0
   39: a,b = f(), 1, 2, 3, f()
L26: GETGLOBAL R1 K13 ['f']
CALL R1 0 1
LOADN R2 1
LOADN R3 2
LOADN R3 3
GETGLOBAL R3 K13 ['f']
CALL R3 0 1
SETGLOBAL R1 K6 ['a']
SETGLOBAL R2 K7 ['b']
REMARK builtin assert/1
   40: assert(a==10 and b==1)
LOADB R2 0
GETGLOBAL R3 K6 ['a']
JUMPXEQKN R3 K16 L28 NOT [10]
GETGLOBAL R3 K7 ['b']
JUMPXEQKN R3 K8 L27 [1]
LOADB R2 0 +1
L27: LOADB R2 1
L28: FASTCALL1 1 R2 L29
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   42: assert(a<b == false and a>b == true)
L29: LOADB R2 0
GETGLOBAL R4 K6 ['a']
GETGLOBAL R5 K7 ['b']
JUMPIFLT R4 R5 L30
LOADB R3 0 +1
L30: LOADB R3 1
L31: JUMPXEQKB R3 0 L35 NOT
GETGLOBAL R4 K6 ['a']
GETGLOBAL R5 K7 ['b']
JUMPIFLT R5 R4 L32
LOADB R3 0 +1
L32: LOADB R3 1
L33: JUMPXEQKB R3 1 L34
LOADB R2 0 +1
L34: LOADB R2 1
L35: FASTCALL1 1 R2 L36
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   43: assert((10 and 2) == 2)
L36: LOADB R2 1
FASTCALL1 1 R2 L37
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   44: assert((10 or 2) == 10)
L37: LOADB R2 1
FASTCALL1 1 R2 L38
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   45: assert((10 or assert(nil)) == 10)
L38: LOADB R2 1
FASTCALL1 1 R2 L39
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   46: assert(not (nil and assert(nil)))
L39: LOADB R2 1
FASTCALL1 1 R2 L40
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   47: assert((nil or "alo") == "alo")
L40: LOADB R2 1
FASTCALL1 1 R2 L41
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   48: assert((nil and 10) == nil)
L41: LOADB R2 1
FASTCALL1 1 R2 L42
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   49: assert((false and 10) == false)
L42: LOADB R2 1
FASTCALL1 1 R2 L43
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   50: assert((true or 10) == true)
L43: LOADB R2 1
FASTCALL1 1 R2 L44
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   51: assert((false or 10) == 10)
L44: LOADB R2 1
FASTCALL1 1 R2 L45
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   52: assert(false ~= nil)
L45: LOADB R2 1
FASTCALL1 1 R2 L46
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   53: assert(nil ~= false)
L46: LOADB R2 1
FASTCALL1 1 R2 L47
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   54: assert(not nil == true)
L47: LOADB R2 1
FASTCALL1 1 R2 L48
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   55: assert(not not nil == false)
L48: LOADB R2 1
FASTCALL1 1 R2 L49
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   56: assert(not not 1 == true)
L49: LOADB R2 1
FASTCALL1 1 R2 L50
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   57: assert(not not a == true)
L50: GETGLOBAL R5 K6 ['a']
NOT R4 R5
NOT R3 R4
JUMPXEQKB R3 1 L51
LOADB R2 0 +1
L51: LOADB R2 1
L52: FASTCALL1 1 R2 L53
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   58: assert(not not (6 or nil) == true)
L53: LOADB R2 1
FASTCALL1 1 R2 L54
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   59: assert(not not (nil and 56) == false)
L54: LOADB R2 1
FASTCALL1 1 R2 L55
GETIMPORT R1 11 [assert]
CALL R1 1 0
REMARK builtin assert/1
   60: assert(not not (nil and true) == false)
L55: LOADB R2 1
FASTCALL1 1 R2 L56
GETIMPORT R1 11 [assert]
CALL R1 1 0
   61: print('---')
L56: GETIMPORT R1 1 [print]
LOADK R2 K26 ['---']
CALL R1 1 0
REMARK allocation: table hash 0
   63: a = {}
NEWTABLE R1 0 0
SETGLOBAL R1 K6 ['a']
   64: a[true] = 20
GETGLOBAL R1 K6 ['a']
LOADB R2 1
LOADN R3 20
SETTABLE R3 R1 R2
   65: a[false] = 10
GETGLOBAL R1 K6 ['a']
LOADB R2 0
LOADN R3 10
SETTABLE R3 R1 R2
REMARK builtin assert/1
   66: assert(a[1<2] == 20 and a[1>2] == 10)
LOADB R2 0
GETGLOBAL R4 K6 ['a']
LOADB R5 1
GETTABLE R3 R4 R5
JUMPXEQKN R3 K27 L58 NOT [20]
GETGLOBAL R4 K6 ['a']
LOADB R5 0
GETTABLE R3 R4 R5
JUMPXEQKN R3 K16 L57 [10]
LOADB R2 0 +1
L57: LOADB R2 1
L58: FASTCALL1 1 R2 L59
GETIMPORT R1 11 [assert]
CALL R1 1 0
   68: function f(a) return a end
L59: DUPCLOSURE R1 K28 ['f']
SETGLOBAL R1 K13 ['f']
REMARK allocation: table hash 2
   70: local a = {}
NEWTABLE R1 2 1
   71: for i=3000,-3000,-1 do a[i] = i; end
LOADN R4 3000
LOADN R2 -3000
LOADN R3 -1
FORNPREP R2 L61
L60: SETTABLE R4 R1 R4
FORNLOOP R2 L60
   72: a[10e30] = "alo"; a[true] = 10; a[false] = 20
L61: LOADK R2 K29 [9.9999999999999996e+30]
LOADK R3 K30 ['alo']
SETTABLE R3 R1 R2
LOADB R2 1
LOADN R3 10
SETTABLE R3 R1 R2
LOADB R2 0
LOADN R3 20
SETTABLE R3 R1 R2
REMARK builtin assert/1
   73: assert(a[10e30] == 'alo' and a[not 1] == 20 and a[10<20] == 10)
LOADB R3 0
LOADK R5 K29 [9.9999999999999996e+30]
GETTABLE R4 R1 R5
JUMPXEQKS R4 K30 L63 NOT ['alo']
LOADB R3 0
LOADB R5 0
GETTABLE R4 R1 R5
JUMPXEQKN R4 K27 L63 NOT [20]
LOADB R5 1
GETTABLE R4 R1 R5
JUMPXEQKN R4 K16 L62 [10]
LOADB R3 0 +1
L62: LOADB R3 1
L63: FASTCALL1 1 R3 L64
GETIMPORT R2 11 [assert]
CALL R2 1 0
   74: for i=3000,-3000,-1 do assert(a[i] == i); end
L64: LOADN R4 3000
LOADN R2 -3000
LOADN R3 -1
FORNPREP R2 L69
REMARK builtin assert/1
L65: GETTABLE R7 R1 R4
JUMPIFEQ R7 R4 L66
LOADB R6 0 +1
L66: LOADB R6 1
L67: FASTCALL1 1 R6 L68
GETIMPORT R5 11 [assert]
CALL R5 1 0
L68: FORNLOOP R2 L65
   75: a[print] = assert
L69: GETIMPORT R2 1 [print]
GETIMPORT R3 11 [assert]
SETTABLE R3 R1 R2
   76: a[f] = print
GETGLOBAL R2 K13 ['f']
GETIMPORT R3 1 [print]
SETTABLE R3 R1 R2
   77: a[a] = a
SETTABLE R1 R1 R1
REMARK builtin assert/1
   78: assert(a[a][a][a][a][print] == assert)
GETTABLE R8 R1 R1
GETTABLE R7 R8 R1
GETTABLE R6 R7 R1
GETTABLE R5 R6 R1
GETIMPORT R6 1 [print]
GETTABLE R4 R5 R6
GETIMPORT R5 11 [assert]
JUMPIFEQ R4 R5 L70
LOADB R3 0 +1
L70: LOADB R3 1
L71: FASTCALL1 1 R3 L72
GETIMPORT R2 11 [assert]
CALL R2 1 0
   79: a[print](a[a[f]] == a[print])
L72: GETIMPORT R3 1 [print]
GETTABLE R2 R1 R3
GETGLOBAL R6 K13 ['f']
GETTABLE R5 R1 R6
GETTABLE R4 R1 R5
GETIMPORT R6 1 [print]
GETTABLE R5 R1 R6
JUMPIFEQ R4 R5 L73
LOADB R3 0 +1
L73: LOADB R3 1
L74: CALL R2 1 0
   80: a = nil
LOADNIL R1
REMARK allocation: table hash 4 array 9
   82: a = {10,9,8,7,6,5,4,3,2; [-3]='a', [f]=print, a='a', b='ab'}
NEWTABLE R2 4 9
LOADN R3 10
LOADN R4 9
LOADN R5 8
LOADN R6 7
LOADN R7 6
LOADN R8 5
LOADN R9 4
LOADN R10 3
LOADN R11 2
SETLIST R2 R3 9 [1]
LOADN R12 -3
LOADK R13 K6 ['a']
SETTABLE R13 R2 R12
GETGLOBAL R12 K13 ['f']
GETIMPORT R13 1 [print]
SETTABLE R13 R2 R12
LOADK R12 K6 ['a']
SETTABLEKS R12 R2 K6 ['a']
LOADK R12 K31 ['ab']
SETTABLEKS R12 R2 K7 ['b']
MOVE R1 R2
   83: a, a.x, a.y = a, a[-3]
MOVE R2 R1
LOADN R5 -3
GETTABLE R3 R1 R5
LOADNIL R4
SETTABLEKS R3 R1 K14 ['x']
SETTABLEKS R4 R1 K32 ['y']
MOVE R1 R2
REMARK builtin assert/1
   84: assert(a[1]==10 and a[-3]==a.a and a[f]==print and a.x=='a' and not a.y)
LOADB R3 0
GETTABLEN R4 R1 1
JUMPXEQKN R4 K16 L75 NOT [10]
LOADB R3 0
LOADN R5 -3
GETTABLE R4 R1 R5
GETTABLEKS R5 R1 K6 ['a']
JUMPIFNOTEQ R4 R5 L75
LOADB R3 0
GETGLOBAL R5 K13 ['f']
GETTABLE R4 R1 R5
GETIMPORT R5 1 [print]
JUMPIFNOTEQ R4 R5 L75
LOADB R3 0
GETTABLEKS R4 R1 K14 ['x']
JUMPXEQKS R4 K6 L75 NOT ['a']
GETTABLEKS R4 R1 K32 ['y']
NOT R3 R4
L75: FASTCALL1 1 R3 L76
GETIMPORT R2 11 [assert]
CALL R2 1 0
   85: a[1], f(a)[2], b, c = {['alo']=assert}, 10, a[1], a[f], 6, 10, 23, f(a), 2
L76: GETGLOBAL R2 K13 ['f']
MOVE R3 R1
CALL R2 1 1
REMARK allocation: table hash 1
NEWTABLE R3 1 0
GETIMPORT R4 11 [assert]
SETTABLEKS R4 R3 K30 ['alo']
LOADN R4 10
GETTABLEN R5 R1 1
GETGLOBAL R7 K13 ['f']
GETTABLE R6 R1 R7
LOADN R7 6
LOADN R7 10
LOADN R7 23
GETGLOBAL R7 K13 ['f']
MOVE R8 R1
CALL R7 1 1
LOADN R7 2
SETTABLEN R3 R1 1
SETTABLEN R4 R2 2
SETGLOBAL R5 K7 ['b']
SETGLOBAL R6 K21 ['c']
   86: a[1].alo(a[2]==10 and b==10 and c==print)
GETTABLEN R3 R1 1
GETTABLEKS R2 R3 K30 ['alo']
LOADB R3 0
GETTABLEN R4 R1 2
JUMPXEQKN R4 K16 L78 NOT [10]
LOADB R3 0
GETGLOBAL R4 K7 ['b']
JUMPXEQKN R4 K16 L78 NOT [10]
GETGLOBAL R4 K21 ['c']
GETIMPORT R5 1 [print]
JUMPIFEQ R4 R5 L77
LOADB R3 0 +1
L77: LOADB R3 1
L78: CALL R2 1 0
   88: a[2^31] = 10; a[2^31+1] = 11; a[-2^31] = 12;
LOADK R2 K33 [2147483648]
LOADN R3 10
SETTABLE R3 R1 R2
LOADK R2 K34 [2147483649]
LOADN R3 11
SETTABLE R3 R1 R2
LOADK R2 K35 [-2147483648]
LOADN R3 12
SETTABLE R3 R1 R2
   89: a[2^32] = 13; a[-2^32] = 14; a[2^32+1] = 15; a[10^33] = 16;
LOADK R2 K36 [4294967296]
LOADN R3 13
SETTABLE R3 R1 R2
LOADK R2 K37 [-4294967296]
LOADN R3 14
SETTABLE R3 R1 R2
LOADK R2 K38 [4294967297]
LOADN R3 15
SETTABLE R3 R1 R2
LOADK R2 K39 [9.9999999999999995e+32]
LOADN R3 16
SETTABLE R3 R1 R2
REMARK builtin assert/1
   91: assert(a[2^31] == 10 and a[2^31+1] == 11 and a[-2^31] == 12 and
LOADB R3 0
LOADK R5 K33 [2147483648]
GETTABLE R4 R1 R5
JUMPXEQKN R4 K16 L80 NOT [10]
LOADB R3 0
LOADK R5 K34 [2147483649]
GETTABLE R4 R1 R5
JUMPXEQKN R4 K24 L80 NOT [11]
LOADB R3 0
LOADK R5 K35 [-2147483648]
GETTABLE R4 R1 R5
JUMPXEQKN R4 K25 L80 NOT [12]
LOADB R3 0
   92:        a[2^32] == 13 and a[-2^32] == 14 and a[2^32+1] == 15 and
LOADK R5 K36 [4294967296]
GETTABLE R4 R1 R5
JUMPXEQKN R4 K40 L80 NOT [13]
LOADB R3 0
LOADK R5 K37 [-4294967296]
GETTABLE R4 R1 R5
JUMPXEQKN R4 K41 L80 NOT [14]
LOADB R3 0
LOADK R5 K38 [4294967297]
GETTABLE R4 R1 R5
JUMPXEQKN R4 K42 L80 NOT [15]
   93:        a[10^33] == 16)
LOADK R5 K39 [9.9999999999999995e+32]
GETTABLE R4 R1 R5
JUMPXEQKN R4 K43 L79 [16]
LOADB R3 0 +1
L79: LOADB R3 1
L80: FASTCALL1 1 R3 L81
   91: assert(a[2^31] == 10 and a[2^31+1] == 11 and a[-2^31] == 12 and
GETIMPORT R2 11 [assert]
CALL R2 1 0
   95: a = nil
L81: LOADNIL R1
   99:   local a,i,j,b
LOADNIL R2
LOADNIL R3
LOADNIL R4
LOADNIL R5
REMARK allocation: table array 2
  100:   a = {'a', 'b'}; i=1; j=2; b=a
NEWTABLE R6 0 2
LOADK R7 K6 ['a']
LOADK R8 K7 ['b']
SETLIST R6 R7 2 [1]
MOVE R2 R6
LOADN R3 1
LOADN R4 2
MOVE R5 R2
  101:   i, a[i], a, j, a[j], a[i+j] = j, i, i, b, j, i
ADD R6 R3 R4
MOVE R7 R4
MOVE R8 R3
MOVE R9 R5
SETTABLE R3 R2 R3
SETTABLE R4 R2 R4
SETTABLE R3 R2 R6
MOVE R3 R7
MOVE R2 R8
MOVE R4 R9
REMARK builtin assert/1
  102:   assert(i == 2 and b[1] == 1 and a == 1 and j == b and b[2] == 2 and
LOADB R7 0
JUMPXEQKN R3 K15 L83 NOT [2]
LOADB R7 0
GETTABLEN R8 R5 1
JUMPXEQKN R8 K8 L83 NOT [1]
LOADB R7 0
JUMPXEQKN R2 K8 L83 NOT [1]
LOADB R7 0
JUMPIFNOTEQ R4 R5 L83
LOADB R7 0
GETTABLEN R8 R5 2
JUMPXEQKN R8 K15 L83 NOT [2]
  103:          b[3] == 1)
GETTABLEN R8 R5 3
JUMPXEQKN R8 K8 L82 [1]
LOADB R7 0 +1
L82: LOADB R7 1
L83: FASTCALL1 1 R7 L84
  102:   assert(i == 2 and b[1] == 1 and a == 1 and j == b and b[2] == 2 and
GETIMPORT R6 11 [assert]
CALL R6 1 0
  106: print('OK')
L84: GETIMPORT R2 1 [print]
LOADK R3 K44 ['OK']
CALL R2 1 0
  107: 
RETURN R0 0

]]
end