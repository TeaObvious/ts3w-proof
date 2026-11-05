# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual Ghidra function metadata
; entry=00a9bed0 name="TaggedTextureSlots_BindThenDispatch" source=USER_DEFINED signatureSource=ANALYSIS prototype="undefined __thiscall TaggedTextureSlots_BindThenDispatch(int param_1, int param_2, void * param_3, int param_4)" cc="__thiscall" custom=false purge=16 return=/undefined returnStorage=<UNASSIGNED> inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[00a9bed0, 00a9bfc0]] bodyAddressCount=241
; PARAM 0 "this" type=/void * storage=ECX:4 (auto) source=ANALYSIS firstUse=0 auto=true
; PARAM 1 "param_1" type=/int storage=Stack[0x4]:4 source=DEFAULT firstUse=0 auto=false
; PARAM 2 "param_2" type=/int storage=Stack[0x8]:4 source=DEFAULT firstUse=0 auto=false
; PARAM 3 "param_3" type=/void * storage=Stack[0xc]:4 source=DEFAULT firstUse=0 auto=false
; PARAM 4 "param_4" type=/int storage=Stack[0x10]:4 source=DEFAULT firstUse=0 auto=false
; 
; Actual entry PLATE: PC1.67, full241B/82 instructions checked against pristine PE. ECX receiver/four incoming stack DWORDs/physical RET16. Third argument null skips operation. Two registry payload writes require second-argument+20 bit0 clear, receiver+14 zero, receiver+0C nonnull and pointee+3D8 nonzero. Receiver+138/+13C become payload+28 only if nonzero and low two tag bits clear, else null. Final draw call pushes five outgoing arguments including a low-byte receiver+4C==1 Boolean, omitted by the existing decompiler callee prototype. Exact slot/map/provider identities remain unproved; no ABI/type correction is made.
00a9bed0  53  PUSH EBX
00a9bed1  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00a9bed5  85db  TEST EBX,EBX
00a9bed7  56  PUSH ESI
00a9bed8  8bf1  MOV ESI,ECX
00a9beda  0f84dc000000  JZ 0x00a9bfbc
00a9bee0  55  PUSH EBP
00a9bee1  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00a9bee5  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00a9bee8  85c9  TEST ECX,ECX
00a9beea  7405  JZ 0x00a9bef1
00a9beec  e8ffd7c2ff  CALL 0x006c96f0
00a9bef1  f6452001  TEST byte ptr [EBP + 0x20],0x1
00a9bef5  0f8590000000  JNZ 0x00a9bf8b
00a9befb  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00a9beff  85c9  TEST ECX,ECX
00a9bf01  7405  JZ 0x00a9bf08
00a9bf03  e85810c1ff  CALL 0x006acf60
00a9bf08  6a00  PUSH 0x0
00a9bf0a  6a00  PUSH 0x0
00a9bf0c  6a00  PUSH 0x0
00a9bf0e  6a00  PUSH 0x0
00a9bf10  6a00  PUSH 0x0
00a9bf12  8bce  MOV ECX,ESI
00a9bf14  e8a7f7ffff  CALL 0x00a9b6c0
00a9bf19  837e1400  CMP dword ptr [ESI + 0x14],0x0
00a9bf1d  756c  JNZ 0x00a9bf8b
00a9bf1f  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00a9bf22  85c0  TEST EAX,EAX
00a9bf24  7465  JZ 0x00a9bf8b
00a9bf26  80b8d803000000  CMP byte ptr [EAX + 0x3d8],0x0
00a9bf2d  745c  JZ 0x00a9bf8b
00a9bf2f  8b8638010000  MOV EAX,dword ptr [ESI + 0x138]
00a9bf35  a803  TEST AL,0x3
00a9bf37  750f  JNZ 0x00a9bf48
00a9bf39  8b8638010000  MOV EAX,dword ptr [ESI + 0x138]
00a9bf3f  85c0  TEST EAX,EAX
00a9bf41  7405  JZ 0x00a9bf48
00a9bf43  83c028  ADD EAX,0x28
00a9bf46  eb02  JMP 0x00a9bf4a
00a9bf48  33c0  XOR EAX,EAX
00a9bf4a  8b0d943b1801  MOV ECX,dword ptr [0x01183b94]
00a9bf50  57  PUSH EDI
00a9bf51  8b3d30851d01  MOV EDI,dword ptr [0x011d8530]
00a9bf57  50  PUSH EAX
00a9bf58  51  PUSH ECX
00a9bf59  8bcf  MOV ECX,EDI
00a9bf5b  e820e1cfff  CALL 0x0079a080
00a9bf60  8b963c010000  MOV EDX,dword ptr [ESI + 0x13c]
00a9bf66  f6c203  TEST DL,0x3
00a9bf69  750f  JNZ 0x00a9bf7a
00a9bf6b  8b863c010000  MOV EAX,dword ptr [ESI + 0x13c]
00a9bf71  85c0  TEST EAX,EAX
00a9bf73  7405  JZ 0x00a9bf7a
00a9bf75  83c028  ADD EAX,0x28
00a9bf78  eb02  JMP 0x00a9bf7c
00a9bf7a  33c0  XOR EAX,EAX
00a9bf7c  50  PUSH EAX
00a9bf7d  a1983b1801  MOV EAX,[0x01183b98]
00a9bf82  50  PUSH EAX
00a9bf83  8bcf  MOV ECX,EDI
00a9bf85  e8f6e0cfff  CALL 0x0079a080
00a9bf8a  5f  POP EDI
00a9bf8b  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00a9bf8f  f6410480  TEST byte ptr [ECX + 0x4],0x80
00a9bf93  8b4514  MOV EAX,dword ptr [EBP + 0x14]
00a9bf96  740c  JZ 0x00a9bfa4
00a9bf98  8b9e0c010000  MOV EBX,dword ptr [ESI + 0x10c]
00a9bf9e  8b8610010000  MOV EAX,dword ptr [ESI + 0x110]
00a9bfa4  837e4c01  CMP dword ptr [ESI + 0x4c],0x1
00a9bfa8  0f94c2  SETZ DL
00a9bfab  52  PUSH EDX
00a9bfac  50  PUSH EAX
00a9bfad  53  PUSH EBX
00a9bfae  55  PUSH EBP
00a9bfaf  51  PUSH ECX
00a9bfb0  8b8e00010000  MOV ECX,dword ptr [ESI + 0x100]
00a9bfb6  e8e581feff  CALL 0x00a841a0
00a9bfbb  5d  POP EBP
00a9bfbc  5e  POP ESI
00a9bfbd  5b  POP EBX
00a9bfbe  c21000  RET 0x10
