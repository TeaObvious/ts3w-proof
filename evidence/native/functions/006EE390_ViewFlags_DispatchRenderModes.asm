# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual Ghidra function metadata
; entry=006ee390 name="ViewFlags_DispatchRenderModes" source=USER_DEFINED signatureSource=ANALYSIS prototype="undefined __fastcall ViewFlags_DispatchRenderModes(void * param_1)" cc="__fastcall" custom=false purge=0 return=/undefined returnStorage=<UNASSIGNED> inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[006ee390, 006ee460]] bodyAddressCount=209
; PARAM 0 "param_1" type=/void * storage=ECX:4 source=DEFAULT firstUse=0 auto=false
; LOCAL "local_1" type=/undefined1 storage=Stack[-0x1]:1 source=DEFAULT firstUse=0
; LOCAL "local_2" type=/undefined1 storage=Stack[-0x2]:1 source=DEFAULT firstUse=0
; 
; Actual entry PLATE: PC1.67, full209B/62 instructions checked against pristine PE. ECX receiver; +300 null skips all dispatch. +534 nonzero dispatches mode2; otherwise the below-height predicate and further flag/provider gates control modes0/1/4. +271 can append mode3. Provider meaning and mutual exclusivity of all modes are not established. Plain RET; no ABI/type change.
006ee390  51  PUSH ECX
006ee391  56  PUSH ESI
006ee392  8bf1  MOV ESI,ECX
006ee394  83be0003000000  CMP dword ptr [ESI + 0x300],0x0
006ee39b  0f84bd000000  JZ 0x006ee45e
006ee3a1  83be3405000000  CMP dword ptr [ESI + 0x534],0x0
006ee3a8  0f8597000000  JNZ 0x006ee445
006ee3ae  53  PUSH EBX
006ee3af  e8dccbffff  CALL 0x006eaf90
006ee3b4  f30f1086ac020000  MOVSS XMM0,dword ptr [ESI + 0x2ac]
006ee3bc  8ad8  MOV BL,AL
006ee3be  84db  TEST BL,BL
006ee3c0  0f9444240b  SETZ byte ptr [ESP + 0xb]
006ee3c5  0f2f05cc4c0f01  COMISS XMM0,dword ptr [0x010f4ccc]
006ee3cc  c644240a00  MOV byte ptr [ESP + 0xa],0x0
006ee3d1  7624  JBE 0x006ee3f7
006ee3d3  8b8ec0010000  MOV ECX,dword ptr [ESI + 0x1c0]
006ee3d9  e882e3fbff  CALL 0x006ac760
006ee3de  84c0  TEST AL,AL
006ee3e0  7515  JNZ 0x006ee3f7
006ee3e2  84db  TEST BL,BL
006ee3e4  7511  JNZ 0x006ee3f7
006ee3e6  389e66020000  CMP byte ptr [ESI + 0x266],BL
006ee3ec  c644240a01  MOV byte ptr [ESP + 0xa],0x1
006ee3f1  7504  JNZ 0x006ee3f7
006ee3f3  885c240b  MOV byte ptr [ESP + 0xb],BL
006ee3f7  8b4e24  MOV ECX,dword ptr [ESI + 0x24]
006ee3fa  e8311a2700  CALL 0x0095fe30
006ee3ff  84c0  TEST AL,AL
006ee401  7510  JNZ 0x006ee413
006ee403  388615050000  CMP byte ptr [ESI + 0x515],AL
006ee409  740f  JZ 0x006ee41a
006ee40b  388670020000  CMP byte ptr [ESI + 0x270],AL
006ee411  7507  JNZ 0x006ee41a
006ee413  c644240a00  MOV byte ptr [ESP + 0xa],0x0
006ee418  32db  XOR BL,BL
006ee41a  807c240b00  CMP byte ptr [ESP + 0xb],0x0
006ee41f  7409  JZ 0x006ee42a
006ee421  6a00  PUSH 0x0
006ee423  8bce  MOV ECX,ESI
006ee425  e896f8ffff  CALL 0x006edcc0
006ee42a  807c240a00  CMP byte ptr [ESP + 0xa],0x0
006ee42f  7409  JZ 0x006ee43a
006ee431  6a01  PUSH 0x1
006ee433  8bce  MOV ECX,ESI
006ee435  e886f8ffff  CALL 0x006edcc0
006ee43a  84db  TEST BL,BL
006ee43c  5b  POP EBX
006ee43d  740d  JZ 0x006ee44c
006ee43f  6a04  PUSH 0x4
006ee441  8bce  MOV ECX,ESI
006ee443  eb02  JMP 0x006ee447
006ee445  6a02  PUSH 0x2
006ee447  e874f8ffff  CALL 0x006edcc0
006ee44c  80be7102000000  CMP byte ptr [ESI + 0x271],0x0
006ee453  7409  JZ 0x006ee45e
006ee455  6a03  PUSH 0x3
006ee457  8bce  MOV ECX,ESI
006ee459  e862f8ffff  CALL 0x006edcc0
006ee45e  5e  POP ESI
006ee45f  59  POP ECX
006ee460  c3  RET
