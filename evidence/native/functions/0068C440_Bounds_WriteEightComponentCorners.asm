# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe, complete actual Ghidra-owned Listing.
; Analyst-assigned name: Bounds_WriteEightComponentCorners
; entry=0068c440 name="Bounds_WriteEightComponentCorners" source=USER_DEFINED signatureSource=ANALYSIS prototype="undefined __thiscall Bounds_WriteEightComponentCorners(undefined4 * param_1)" cc="__thiscall" custom=false purge=4 return=/undefined returnStorage=<UNASSIGNED> inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[0068c440, 0068c4fb]] bodyAddressCount=188
; PARAM 0 "this" type=/void * storage=ECX:4 (auto) source=ANALYSIS firstUse=0 auto=true
; PARAM 1 "param_1" type=/undefined4 * storage=Stack[0x4]:4 source=DEFAULT firstUse=0 auto=false
; 
; Actual entry PLATE: PC1.67, complete53instructions/188ownedbytes checked against pristine PE. ECX points at min/max component bounds; one incoming stack DWORD points at eight output16byte records; physical RET4. Original SHUFPS writes xyz combinations in bit order: min/min/min, min/min/max, min/max/min, min/max/max, max/min/min, max/min/max, max/max/min, max/max/max. For cornerindices0..7 the fourth lane is exactly minX,maxX,minX,maxX,minX,maxX,minX,maxX; it follows the selected minZ/maxZ endpoint, not consistently the corner X and never a homogeneous1. B0EA00 ultimately selects transformed cornerindices0,1,5,6; arbitrary tilted-box behavior must preserve those actual indices. No memory/ABI/type changes.

0068c440  55  PUSH EBP
0068c441  8bec  MOV EBP,ESP
0068c443  83e4f0  AND ESP,0xfffffff0
0068c446  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
0068c449  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0068c44c  0f28c8  MOVAPS XMM1,XMM0
0068c44f  0fc6c810  SHUFPS XMM1,XMM0,0x10
0068c453  0fc6c828  SHUFPS XMM1,XMM0,0x28
0068c457  0f2908  MOVAPS xmmword ptr [EAX],XMM1
0068c45a  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
0068c45d  0f28c8  MOVAPS XMM1,XMM0
0068c460  0fc6c810  SHUFPS XMM1,XMM0,0x10
0068c464  0f284110  MOVAPS XMM0,xmmword ptr [ECX + 0x10]
0068c468  0fc6c828  SHUFPS XMM1,XMM0,0x28
0068c46c  0f294810  MOVAPS xmmword ptr [EAX + 0x10],XMM1
0068c470  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
0068c473  0f285110  MOVAPS XMM2,xmmword ptr [ECX + 0x10]
0068c477  0f28c8  MOVAPS XMM1,XMM0
0068c47a  0fc6ca10  SHUFPS XMM1,XMM2,0x10
0068c47e  0fc6c828  SHUFPS XMM1,XMM0,0x28
0068c482  0f294820  MOVAPS xmmword ptr [EAX + 0x20],XMM1
0068c486  0f284910  MOVAPS XMM1,xmmword ptr [ECX + 0x10]
0068c48a  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
0068c48d  0fc6c110  SHUFPS XMM0,XMM1,0x10
0068c491  0f284910  MOVAPS XMM1,xmmword ptr [ECX + 0x10]
0068c495  0fc6c128  SHUFPS XMM0,XMM1,0x28
0068c499  0f294030  MOVAPS xmmword ptr [EAX + 0x30],XMM0
0068c49d  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
0068c4a0  0f284910  MOVAPS XMM1,xmmword ptr [ECX + 0x10]
0068c4a4  0fc6c810  SHUFPS XMM1,XMM0,0x10
0068c4a8  0fc6c828  SHUFPS XMM1,XMM0,0x28
0068c4ac  0f294840  MOVAPS xmmword ptr [EAX + 0x40],XMM1
0068c4b0  0f2809  MOVAPS XMM1,xmmword ptr [ECX]
0068c4b3  0f284110  MOVAPS XMM0,xmmword ptr [ECX + 0x10]
0068c4b7  0fc6c110  SHUFPS XMM0,XMM1,0x10
0068c4bb  0f284910  MOVAPS XMM1,xmmword ptr [ECX + 0x10]
0068c4bf  0fc6c128  SHUFPS XMM0,XMM1,0x28
0068c4c3  0f294050  MOVAPS xmmword ptr [EAX + 0x50],XMM0
0068c4c7  0f284910  MOVAPS XMM1,xmmword ptr [ECX + 0x10]
0068c4cb  0f284110  MOVAPS XMM0,xmmword ptr [ECX + 0x10]
0068c4cf  0fc6c110  SHUFPS XMM0,XMM1,0x10
0068c4d3  0f2809  MOVAPS XMM1,xmmword ptr [ECX]
0068c4d6  0fc6c128  SHUFPS XMM0,XMM1,0x28
0068c4da  0f294060  MOVAPS xmmword ptr [EAX + 0x60],XMM0
0068c4de  0f284910  MOVAPS XMM1,xmmword ptr [ECX + 0x10]
0068c4e2  0f284110  MOVAPS XMM0,xmmword ptr [ECX + 0x10]
0068c4e6  0fc6c110  SHUFPS XMM0,XMM1,0x10
0068c4ea  0f284910  MOVAPS XMM1,xmmword ptr [ECX + 0x10]
0068c4ee  0fc6c128  SHUFPS XMM0,XMM1,0x28
0068c4f2  0f294070  MOVAPS xmmword ptr [EAX + 0x70],XMM0
0068c4f6  8be5  MOV ESP,EBP
0068c4f8  5d  POP EBP
0068c4f9  c20400  RET 0x4
