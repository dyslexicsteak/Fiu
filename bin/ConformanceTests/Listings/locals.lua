--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (f):
   34:   local c,d = a,b
MOVE R1 R0
MOVE R2 R0
   35:   if (d == b) then
JUMPIFNOTEQ R2 R0 L3
   36:     local x = 'q'
LOADK R3 K0 ['q']
   37:     x = b
MOVE R3 R0
REMARK builtin assert/1
   38:     assert(x == 2)
JUMPXEQKN R3 K1 L0 [2]
LOADB R5 0 +1
L0: LOADB R5 1
L1: FASTCALL1 1 R5 L2
GETIMPORT R4 3 [assert]
CALL R4 1 0
L2: JUMP L4
REMARK builtin assert/1
   40:     assert(nil)
L3: LOADNIL R4
FASTCALL1 1 R4 L4
GETIMPORT R3 3 [assert]
CALL R3 1 0
REMARK builtin assert/1
   42:   assert(x == 3)
L4: LOADB R4 1
FASTCALL1 1 R4 L5
GETIMPORT R3 3 [assert]
CALL R3 1 0
   44: end
L5: RETURN R0 0

Function 1 (??):
   60:   for i=1,10 do f[i] = function (x) A=A+1; return A, _G.getfenv(x) end end
GETGLOBAL R2 K1 ['A']
ADDK R1 R2 K0 [1]
SETGLOBAL R1 K1 ['A']
GETGLOBAL R1 K1 ['A']
GETUPVAL R3 0
GETTABLEKS R2 R3 K2 ['getfenv']
MOVE R3 R0
CALL R2 1 -1
RETURN R1 -1

Function 2 (f):
REMARK builtin assert/1
   69:   local function f () assert(setfenv(2, {a='10'}) == g) end
GETIMPORT R2 1 [setfenv]
LOADN R3 2
REMARK allocation: table template 1
DUPTABLE R4 3
LOADK R5 K4 ['10']
SETTABLEKS R5 R4 K2 ['a']
CALL R2 2 1
GETUPVAL R3 0
JUMPIFEQ R2 R3 L0
LOADB R1 0 +1
L0: LOADB R1 1
L1: FASTCALL1 1 R1 L2
GETIMPORT R0 6 [assert]
CALL R0 1 0
L2: RETURN R0 0

Function 3 (??):
   70:   g = function () f(); _G.assert(_G.getfenv(1).a == '10') end
GETUPVAL R0 0
CALL R0 0 0
GETUPVAL R1 1
GETTABLEKS R0 R1 K0 ['assert']
GETUPVAL R4 1
GETTABLEKS R3 R4 K1 ['getfenv']
LOADN R4 1
CALL R3 1 1
GETTABLEKS R2 R3 K2 ['a']
JUMPXEQKS R2 K3 L0 ['10']
LOADB R1 0 +1
L0: LOADB R1 1
L1: CALL R0 1 0
RETURN R0 0

Function 4 (foo):
   76:   return loadstring(s)
GETIMPORT R1 1 [loadstring]
MOVE R2 R0
CALL R1 1 -1
RETURN R1 -1

Function 5 (??):
    3: print('testing local variables plus some extra stuff')
GETIMPORT R0 1 [print]
LOADK R1 K2 ['testing local variables plus som'...]
CALL R0 1 0
REMARK builtin assert/1
    7:   do local i = 100; assert(i==100) end
LOADB R1 1
FASTCALL1 1 R1 L0
GETIMPORT R0 4 [assert]
CALL R0 1 0
REMARK builtin assert/1
    8:   do local i = 1000; assert(i==1000) end
L0: LOADB R1 1
FASTCALL1 1 R1 L1
GETIMPORT R0 4 [assert]
CALL R0 1 0
REMARK builtin assert/1
    9:   assert(i == 10)
L1: LOADB R1 1
FASTCALL1 1 R1 L2
GETIMPORT R0 4 [assert]
CALL R0 1 0
REMARK builtin assert/1
   14:     assert(i == 30)
L2: LOADB R1 1
FASTCALL1 1 R1 L3
GETIMPORT R0 4 [assert]
CALL R0 1 0
   20: f = nil
L3: LOADNIL R0
SETGLOBAL R0 K5 ['f']
   22: local f
LOADNIL R0
   23: x = 1
LOADN R1 1
SETGLOBAL R1 K6 ['x']
   25: a = nil
LOADNIL R1
SETGLOBAL R1 K7 ['a']
   26: loadstring('local a = {}')()
GETIMPORT R1 9 [loadstring]
LOADK R2 K10 ['local a = {}']
CALL R1 1 1
CALL R1 0 0
REMARK builtin assert/1
REMARK builtin type/1
   27: assert(type(a) ~= 'table')
GETGLOBAL R4 K7 ['a']
FASTCALL1 40 R4 L4
GETIMPORT R3 12 [type]
CALL R3 1 1
L4: JUMPXEQKS R3 K13 L5 NOT ['table']
LOADB R2 0 +1
L5: LOADB R2 1
L6: FASTCALL1 1 R2 L7
GETIMPORT R1 4 [assert]
CALL R1 1 0
REMARK allocation: closure with 0 upvalues
   29: function f (a)
L7: NEWCLOSURE R0 P0
   47: local a; repeat local b; a,b=1,2; assert(a+1==b); until a+b==3
LOADNIL R1
L8: LOADNIL R2
LOADN R1 1
LOADN R2 2
REMARK builtin assert/1
ADDK R5 R1 K14 [1]
JUMPIFEQ R5 R2 L9
LOADB R4 0 +1
L9: LOADB R4 1
L10: FASTCALL1 1 R4 L11
GETIMPORT R3 4 [assert]
CALL R3 1 0
L11: ADD R3 R1 R2
JUMPXEQKN R3 K15 L12 [3]
JUMPBACK L8
REMARK builtin assert/1
   50: assert(x == 1)
L12: GETGLOBAL R4 K6 ['x']
JUMPXEQKN R4 K14 L13 [1]
LOADB R3 0 +1
L13: LOADB R3 1
L14: FASTCALL1 1 R3 L15
GETIMPORT R2 4 [assert]
CALL R2 1 0
   52: f(2)
L15: MOVE R2 R0
LOADN R3 2
CALL R2 1 0
REMARK builtin assert/1
REMARK builtin type/1
   53: assert(type(f) == 'function')
FASTCALL1 40 R0 L16
MOVE R5 R0
GETIMPORT R4 12 [type]
CALL R4 1 1
L16: JUMPXEQKS R4 K16 L17 ['function']
LOADB R3 0 +1
L17: LOADB R3 1
L18: FASTCALL1 1 R3 L19
GETIMPORT R2 4 [assert]
CALL R2 1 0
REMARK allocation: table hash 0
   58:   local f = {}
L19: NEWTABLE R2 0 10
   59:   local _G = getfenv()
GETIMPORT R3 18 [getfenv]
CALL R3 0 1
   60:   for i=1,10 do f[i] = function (x) A=A+1; return A, _G.getfenv(x) end end
LOADN R6 1
LOADN R4 10
LOADN R5 1
FORNPREP R4 L21
REMARK allocation: closure with 1 upvalues
L20: NEWCLOSURE R7 P1
CAPTURE VAL R3
SETTABLE R7 R2 R6
FORNLOOP R4 L20
   61:   A=10; assert(f[1]() == 11)
L21: LOADN R4 10
SETGLOBAL R4 K19 ['A']
REMARK builtin assert/1
GETTABLEN R6 R2 1
CALL R6 0 1
JUMPXEQKN R6 K20 L22 [11]
LOADB R5 0 +1
L22: LOADB R5 1
L23: FASTCALL1 1 R5 L24
GETIMPORT R4 4 [assert]
CALL R4 1 0
   62:   for i=1,10 do assert(setfenv(f[i], {A=i}) == f[i]) end
L24: LOADN R6 1
LOADN R4 10
LOADN R5 1
FORNPREP R4 L29
REMARK builtin assert/1
L25: GETIMPORT R9 22 [setfenv]
GETTABLE R10 R2 R6
REMARK allocation: table template 1
DUPTABLE R11 23
SETTABLEKS R6 R11 K19 ['A']
CALL R9 2 1
GETTABLE R10 R2 R6
JUMPIFEQ R9 R10 L26
LOADB R8 0 +1
L26: LOADB R8 1
L27: FASTCALL1 1 R8 L28
GETIMPORT R7 4 [assert]
CALL R7 1 0
L28: FORNLOOP R4 L25
REMARK builtin assert/1
   63:   assert(f[3]() == 4 and A == 11)
L29: LOADB R5 0
GETTABLEN R6 R2 3
CALL R6 0 1
JUMPXEQKN R6 K24 L31 NOT [4]
GETGLOBAL R6 K19 ['A']
JUMPXEQKN R6 K20 L30 [11]
LOADB R5 0 +1
L30: LOADB R5 1
L31: FASTCALL1 1 R5 L32
GETIMPORT R4 4 [assert]
CALL R4 1 0
   64:   local a,b = f[8](1)
L32: GETTABLEN R4 R2 8
LOADN R5 1
CALL R4 1 2
REMARK builtin assert/1
   65:   assert(b.A == 9)
GETTABLEKS R8 R5 K19 ['A']
JUMPXEQKN R8 K25 L33 [9]
LOADB R7 0 +1
L33: LOADB R7 1
L34: FASTCALL1 1 R7 L35
GETIMPORT R6 4 [assert]
CALL R6 1 0
   66:   a,b = f[8](0)
L35: GETTABLEN R6 R2 8
LOADN R7 0
CALL R6 1 2
MOVE R4 R6
MOVE R5 R7
REMARK builtin assert/1
   67:   assert(b.A == 11)   -- `real' global
GETTABLEKS R8 R5 K19 ['A']
JUMPXEQKN R8 K20 L36 [11]
LOADB R7 0 +1
L36: LOADB R7 1
L37: FASTCALL1 1 R7 L38
GETIMPORT R6 4 [assert]
CALL R6 1 0
   68:   local g
L38: LOADNIL R6
REMARK allocation: closure with 1 upvalues
   69:   local function f () assert(setfenv(2, {a='10'}) == g) end
NEWCLOSURE R7 P2
CAPTURE REF R6
REMARK allocation: closure with 2 upvalues
   70:   g = function () f(); _G.assert(_G.getfenv(1).a == '10') end
NEWCLOSURE R6 P3
CAPTURE VAL R7
CAPTURE VAL R3
   71:   g(); assert(getfenv(g).a == '10')
MOVE R8 R6
CALL R8 0 0
REMARK builtin assert/1
GETIMPORT R11 18 [getfenv]
MOVE R12 R6
CALL R11 1 1
GETTABLEKS R10 R11 K7 ['a']
JUMPXEQKS R10 K26 L39 ['10']
LOADB R9 0 +1
L39: LOADB R9 1
L40: FASTCALL1 1 R9 L41
GETIMPORT R8 4 [assert]
CALL R8 1 0
L41: CLOSEUPVALS R6
REMARK allocation: closure with 0 upvalues
   75: local function foo (s)
NEWCLOSURE R2 P4
REMARK builtin assert/1
   79: assert(getfenv(foo("")) == getfenv())
GETIMPORT R5 18 [getfenv]
MOVE R6 R2
LOADK R7 K27 ['']
CALL R6 1 -1
CALL R5 -1 1
GETIMPORT R6 18 [getfenv]
CALL R6 0 1
JUMPIFEQ R5 R6 L42
LOADB R4 0 +1
L42: LOADB R4 1
L43: FASTCALL1 1 R4 L44
GETIMPORT R3 4 [assert]
CALL R3 1 0
REMARK allocation: table template 1
   80: local a = {loadstring = loadstring} 
L44: DUPTABLE R3 28
GETIMPORT R4 9 [loadstring]
SETTABLEKS R4 R3 K8 ['loadstring']
   81: setfenv(foo, a)
GETIMPORT R4 22 [setfenv]
MOVE R5 R2
MOVE R6 R3
CALL R4 2 0
REMARK builtin assert/1
   82: assert(getfenv(foo("")) == getfenv())
GETIMPORT R6 18 [getfenv]
MOVE R7 R2
LOADK R8 K27 ['']
CALL R7 1 -1
CALL R6 -1 1
GETIMPORT R7 18 [getfenv]
CALL R7 0 1
JUMPIFEQ R6 R7 L45
LOADB R5 0 +1
L45: LOADB R5 1
L46: FASTCALL1 1 R5 L47
GETIMPORT R4 4 [assert]
CALL R4 1 0
   83: setfenv(0, a)  -- change global environment
L47: GETIMPORT R4 22 [setfenv]
LOADN R5 0
MOVE R6 R3
CALL R4 2 0
REMARK builtin assert/1
   84: assert(getfenv(foo("")) == a)
GETIMPORT R6 18 [getfenv]
MOVE R7 R2
LOADK R8 K27 ['']
CALL R7 1 -1
CALL R6 -1 1
JUMPIFEQ R6 R3 L48
LOADB R5 0 +1
L48: LOADB R5 1
L49: FASTCALL1 1 R5 L50
GETIMPORT R4 4 [assert]
CALL R4 1 0
   85: setfenv(0, getfenv())
L50: GETIMPORT R4 22 [setfenv]
LOADN R5 0
GETIMPORT R6 18 [getfenv]
CALL R6 0 -1
CALL R4 -1 0
   91: local p = 4
LOADN R4 4
   92: for i=2,31 do
LOADN R7 2
LOADN R5 31
LOADN R6 1
FORNPREP R5 L57
   93:   for j=-3,3 do
L51: LOADN R10 -3
LOADN R8 3
LOADN R9 1
FORNPREP R8 L56
REMARK builtin assert/1+
   94:     assert(loadstring(string.format([[local a=%s;a=a+
L52: GETIMPORT R12 9 [loadstring]
GETIMPORT R13 31 [string.format]
LOADK R14 K32 []
   97:                                       ==2^%s)]], j, p-j, i))) ()
MOVE R15 R10
SUB R16 R4 R10
MOVE R17 R7
   94:     assert(loadstring(string.format([[local a=%s;a=a+
CALL R13 4 -1
CALL R12 -1 -1
FASTCALL 1 L53
GETIMPORT R11 4 [assert]
CALL R11 -1 1
   97:                                       ==2^%s)]], j, p-j, i))) ()
L53: CALL R11 0 0
REMARK builtin assert/1+
   98:     assert(loadstring(string.format([[local a=%s;
GETIMPORT R12 9 [loadstring]
GETIMPORT R13 31 [string.format]
LOADK R14 K33 []
  100:                                       assert(a==-2^%s)]], -j, p-j, i))) ()
MINUS R15 R10
SUB R16 R4 R10
MOVE R17 R7
   98:     assert(loadstring(string.format([[local a=%s;
CALL R13 4 -1
CALL R12 -1 -1
FASTCALL 1 L54
GETIMPORT R11 4 [assert]
CALL R11 -1 1
  100:                                       assert(a==-2^%s)]], -j, p-j, i))) ()
L54: CALL R11 0 0
REMARK builtin assert/1+
  101:     assert(loadstring(string.format([[local a,b=0,%s;
GETIMPORT R12 9 [loadstring]
GETIMPORT R13 31 [string.format]
LOADK R14 K34 []
  103:                                       assert(a==-2^%s)]], -j, p-j, i))) ()
MINUS R15 R10
SUB R16 R4 R10
MOVE R17 R7
  101:     assert(loadstring(string.format([[local a,b=0,%s;
CALL R13 4 -1
CALL R12 -1 -1
FASTCALL 1 L55
GETIMPORT R11 4 [assert]
CALL R11 -1 1
  103:                                       assert(a==-2^%s)]], -j, p-j, i))) ()
L55: CALL R11 0 0
   93:   for j=-3,3 do
FORNLOOP R8 L52
  105:   p =2*p
L56: LOADN R8 2
MUL R4 R8 R4
   92: for i=2,31 do
FORNLOOP R5 L51
  108: print'+'
L57: GETIMPORT R5 1 [print]
LOADK R6 K35 ['+']
CALL R5 1 0
  110: return('OK')
LOADK R5 K36 ['OK']
RETURN R5 1

]]
end