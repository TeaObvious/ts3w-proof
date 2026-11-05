# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual Ghidra function metadata
; entry=00a83b90 name="Flags_SelectVariantIndex" source=USER_DEFINED signatureSource=ANALYSIS prototype="byte __fastcall Flags_SelectVariantIndex(undefined4 param_1, undefined4 param_2, char param_3, char param_4, char param_5)" cc="__fastcall" custom=false purge=0 return=/byte returnStorage=AL:1 inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[00a83b90, 00a83c28]] bodyAddressCount=153
; PARAM 0 "param_1" type=/undefined4 storage=ECX:4 source=DEFAULT firstUse=0 auto=false
; PARAM 1 "param_2" type=/undefined4 storage=EDX:4 source=DEFAULT firstUse=0 auto=false
; PARAM 2 "param_3" type=/char storage=Stack[0x4]:1 source=DEFAULT firstUse=0 auto=false
; PARAM 3 "param_4" type=/char storage=Stack[0x8]:1 source=DEFAULT firstUse=0 auto=false
; PARAM 4 "param_5" type=/char storage=Stack[0xc]:1 source=DEFAULT firstUse=0 auto=false
; LOCAL "local_10" type=/undefined4 storage=Stack[-0x10]:4 source=DEFAULT firstUse=0
; 
; Actual entry PLATE: PC1.67, full153B/62 instructions checked against pristine PE. A nonzero third incoming stack byte returns8 plus the first stack byte truth value. Other branches combine base0/4 with offsets0..3 under live provider/global gates. All exits use plain RET, leaving three incoming stack DWORD slots with the caller. Upstream special-flag meaning and complete call ABI/provider semantics remain unproved. No parameter/type/purge change.
00a83b90  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00a83b95  740d  JZ 0x00a83ba4
00a83b97  33c0  XOR EAX,EAX
00a83b99  38442404  CMP byte ptr [ESP + 0x4],AL
00a83b9d  0f95c0  SETNZ AL
00a83ba0  83c008  ADD EAX,0x8
00a83ba3  c3  RET
00a83ba4  8a442404  MOV AL,byte ptr [ESP + 0x4]
00a83ba8  f6d8  NEG AL
00a83baa  57  PUSH EDI
00a83bab  1bc0  SBB EAX,EAX
00a83bad  83e004  AND EAX,0x4
00a83bb0  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00a83bb5  8bf8  MOV EDI,EAX
00a83bb7  756e  JNZ 0x00a83c27
00a83bb9  a1c4db1e01  MOV EAX,[0x011edbc4]
00a83bbe  85c0  TEST EAX,EAX
00a83bc0  7463  JZ 0x00a83c25
00a83bc2  56  PUSH ESI
00a83bc3  8b7074  MOV ESI,dword ptr [EAX + 0x74]
00a83bc6  85f6  TEST ESI,ESI
00a83bc8  745a  JZ 0x00a83c24
00a83bca  53  PUSH EBX
00a83bcb  8bce  MOV ECX,ESI
00a83bcd  e84effffff  CALL 0x00a83b20
00a83bd2  d905ece60601  FLD float ptr [0x0106e6ec]
00a83bd8  51  PUSH ECX
00a83bd9  8bce  MOV ECX,ESI
00a83bdb  d91c24  FSTP float ptr [ESP]
00a83bde  8ad8  MOV BL,AL
00a83be0  e8ab702e00  CALL 0x00d6ac90
00a83be5  80be040b000000  CMP byte ptr [ESI + 0xb04],0x0
00a83bec  7408  JZ 0x00a83bf6
00a83bee  8a8e6c0a0000  MOV CL,byte ptr [ESI + 0xa6c]
00a83bf4  eb06  JMP 0x00a83bfc
00a83bf6  8a8e100a0000  MOV CL,byte ptr [ESI + 0xa10]
00a83bfc  84db  TEST BL,BL
00a83bfe  5b  POP EBX
00a83bff  740c  JZ 0x00a83c0d
00a83c01  84c0  TEST AL,AL
00a83c03  750c  JNZ 0x00a83c11
00a83c05  83c701  ADD EDI,0x1
00a83c08  5e  POP ESI
00a83c09  8bc7  MOV EAX,EDI
00a83c0b  5f  POP EDI
00a83c0c  c3  RET
00a83c0d  84c0  TEST AL,AL
00a83c0f  7413  JZ 0x00a83c24
00a83c11  84c9  TEST CL,CL
00a83c13  7508  JNZ 0x00a83c1d
00a83c15  83c702  ADD EDI,0x2
00a83c18  5e  POP ESI
00a83c19  8bc7  MOV EAX,EDI
00a83c1b  5f  POP EDI
00a83c1c  c3  RET
00a83c1d  84c0  TEST AL,AL
00a83c1f  7403  JZ 0x00a83c24
00a83c21  83c703  ADD EDI,0x3
00a83c24  5e  POP ESI
00a83c25  8bc7  MOV EAX,EDI
00a83c27  5f  POP EDI
00a83c28  c3  RET
