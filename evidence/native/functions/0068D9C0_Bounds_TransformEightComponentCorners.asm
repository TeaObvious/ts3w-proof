# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe, complete actual Ghidra-owned Listing.
; Analyst-assigned name: Bounds_TransformEightComponentCorners
; entry=0068d9c0 name="Bounds_TransformEightComponentCorners" source=USER_DEFINED signatureSource=ANALYSIS prototype="undefined __thiscall Bounds_TransformEightComponentCorners(float * param_1, float * param_2)" cc="__thiscall" custom=false purge=8 return=/undefined returnStorage=<UNASSIGNED> inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[0068d9c0, 0068d9e9] [0068d9f0, 0068da3b]] bodyAddressCount=118
; PARAM 0 "this" type=/void * storage=ECX:4 (auto) source=ANALYSIS firstUse=0 auto=true
; PARAM 1 "param_1" type=/float * storage=Stack[0x4]:4 source=DEFAULT firstUse=0 auto=false
; PARAM 2 "param_2" type=/float * storage=Stack[0x8]:4 source=DEFAULT firstUse=0 auto=false
; LOCAL "local_90" type=/undefined storage=Stack[-0x90]:1 source=DEFAULT firstUse=0
; 
; Actual entry PLATE: PC1.67, complete39instructions/118ownedbytes in two existing ranges; six-byte68D9EA..68D9EF gap is not owned. ECX component bounds plus two incoming stack DWORDs: transform pointer and eight outputfloat4 records; physical RET8. Calls0068C440 for actual ordered eight component corners. Every SIMD outputlane computes x*row0, adds translationrow3, then adds y*row1 and z*row2 in that order; source fourthlane is not multiplied. B0EA00 consumes transformed0,1,5,6 X/Z pairs, including maxY for corner6. Existing decompiler types/ABI retained, no bytes changed.

0068d9c0  55  PUSH EBP
0068d9c1  8bec  MOV EBP,ESP
0068d9c3  83e4f0  AND ESP,0xfffffff0
0068d9c6  81ec8c000000  SUB ESP,0x8c
0068d9cc  56  PUSH ESI
0068d9cd  8d442410  LEA EAX,[ESP + 0x10]
0068d9d1  50  PUSH EAX
0068d9d2  e869eaffff  CALL 0x0068c440
0068d9d7  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
0068d9da  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0068d9dd  8d542410  LEA EDX,[ESP + 0x10]
0068d9e1  2bd1  SUB EDX,ECX
0068d9e3  be08000000  MOV ESI,0x8
0068d9e8  eb06  JMP 0x0068d9f0
0068d9f0  0f28040a  MOVAPS XMM0,xmmword ptr [EDX + ECX*0x1]
0068d9f4  0f2810  MOVAPS XMM2,xmmword ptr [EAX]
0068d9f7  0f285810  MOVAPS XMM3,xmmword ptr [EAX + 0x10]
0068d9fb  0f28c8  MOVAPS XMM1,XMM0
0068d9fe  0fc6c800  SHUFPS XMM1,XMM0,0x0
0068da02  0f59ca  MULPS XMM1,XMM2
0068da05  0f285030  MOVAPS XMM2,xmmword ptr [EAX + 0x30]
0068da09  0f58ca  ADDPS XMM1,XMM2
0068da0c  0f28d0  MOVAPS XMM2,XMM0
0068da0f  0fc6d055  SHUFPS XMM2,XMM0,0x55
0068da13  0f59d3  MULPS XMM2,XMM3
0068da16  0f58ca  ADDPS XMM1,XMM2
0068da19  0f28d0  MOVAPS XMM2,XMM0
0068da1c  0fc6d0aa  SHUFPS XMM2,XMM0,0xaa
0068da20  0f284020  MOVAPS XMM0,xmmword ptr [EAX + 0x20]
0068da24  0f59d0  MULPS XMM2,XMM0
0068da27  0f58ca  ADDPS XMM1,XMM2
0068da2a  0f2909  MOVAPS xmmword ptr [ECX],XMM1
0068da2d  83c110  ADD ECX,0x10
0068da30  83ee01  SUB ESI,0x1
0068da33  75bb  JNZ 0x0068d9f0
0068da35  5e  POP ESI
0068da36  8be5  MOV ESP,EBP
0068da38  5d  POP EBP
0068da39  c20800  RET 0x8
