# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BasementRegion_ApplyQuarterFlags(undefined4 param_1, undefined4 param_2, char * param_3, char * param_4, char * param_5, void * param_6)
Owned ranges: [[00c9d1b0, 00c9d25c] [00c9d260, 00c9d2e3]]

00c9d1b0  83ec14  SUB ESP,0x14
00c9d1b3  807c241c00  CMP byte ptr [ESP + 0x1c],0x0
00c9d1b8  56  PUSH ESI
00c9d1b9  57  PUSH EDI
00c9d1ba  0f85ce000000  JNZ 0x00c9d28e
00c9d1c0  8b7c242c  MOV EDI,dword ptr [ESP + 0x2c]
00c9d1c4  53  PUSH EBX
00c9d1c5  8a1f  MOV BL,byte ptr [EDI]
00c9d1c7  55  PUSH EBP
00c9d1c8  8b6c2430  MOV EBP,dword ptr [ESP + 0x30]
00c9d1cc  3a5d00  CMP BL,byte ptr [EBP]
00c9d1cf  8bc7  MOV EAX,EDI
00c9d1d1  7c02  JL 0x00c9d1d5
00c9d1d3  8bc5  MOV EAX,EBP
00c9d1d5  0fbe00  MOVSX EAX,byte ptr [EAX]
00c9d1d8  8a5701  MOV DL,byte ptr [EDI + 0x1]
00c9d1db  3a5501  CMP DL,byte ptr [EBP + 0x1]
00c9d1de  8d4f01  LEA ECX,[EDI + 0x1]
00c9d1e1  8d7501  LEA ESI,[EBP + 0x1]
00c9d1e4  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00c9d1e8  8bc1  MOV EAX,ECX
00c9d1ea  7c02  JL 0x00c9d1ee
00c9d1ec  8bc6  MOV EAX,ESI
00c9d1ee  385d00  CMP byte ptr [EBP],BL
00c9d1f1  0fbe10  MOVSX EDX,byte ptr [EAX]
00c9d1f4  8bc7  MOV EAX,EDI
00c9d1f6  7c02  JL 0x00c9d1fa
00c9d1f8  8bc5  MOV EAX,EBP
00c9d1fa  8a1e  MOV BL,byte ptr [ESI]
00c9d1fc  3a19  CMP BL,byte ptr [ECX]
00c9d1fe  0fbe00  MOVSX EAX,byte ptr [EAX]
00c9d201  7c02  JL 0x00c9d205
00c9d203  8bce  MOV ECX,ESI
00c9d205  8a5c242c  MOV BL,byte ptr [ESP + 0x2c]
00c9d209  2c01  SUB AL,0x1
00c9d20b  8844242c  MOV byte ptr [ESP + 0x2c],AL
00c9d20f  8a01  MOV AL,byte ptr [ECX]
00c9d211  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00c9d214  88542411  MOV byte ptr [ESP + 0x11],DL
00c9d218  8a5502  MOV DL,byte ptr [EBP + 0x2]
00c9d21b  2c01  SUB AL,0x1
00c9d21d  88542412  MOV byte ptr [ESP + 0x12],DL
00c9d221  8d54242c  LEA EDX,[ESP + 0x2c]
00c9d225  8844242d  MOV byte ptr [ESP + 0x2d],AL
00c9d229  52  PUSH EDX
00c9d22a  8d442414  LEA EAX,[ESP + 0x14]
00c9d22e  884c2432  MOV byte ptr [ESP + 0x32],CL
00c9d232  50  PUSH EAX
00c9d233  8d4c241c  LEA ECX,[ESP + 0x1c]
00c9d237  885c2418  MOV byte ptr [ESP + 0x18],BL
00c9d23b  e8b099e5ff  CALL 0x00af6bf0
00c9d240  8d4c2414  LEA ECX,[ESP + 0x14]
00c9d244  e84792e5ff  CALL 0x00af6490
00c9d249  84c0  TEST AL,AL
00c9d24b  5d  POP EBP
00c9d24c  5b  POP EBX
00c9d24d  0f858b000000  JNZ 0x00c9d2de
00c9d253  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00c9d257  8b7c2430  MOV EDI,dword ptr [ESP + 0x30]
00c9d25b  eb03  JMP 0x00c9d260
00c9d25d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00c9d260  8d4c240c  LEA ECX,[ESP + 0xc]
00c9d264  e87792e5ff  CALL 0x00af64e0
00c9d269  57  PUSH EDI
00c9d26a  50  PUSH EAX
00c9d26b  8bce  MOV ECX,ESI
00c9d26d  e8cef50700  CALL 0x00d1c840
00c9d272  8d4c240c  LEA ECX,[ESP + 0xc]
00c9d276  e82592e5ff  CALL 0x00af64a0
00c9d27b  8d4c240c  LEA ECX,[ESP + 0xc]
00c9d27f  e80c92e5ff  CALL 0x00af6490
00c9d284  84c0  TEST AL,AL
00c9d286  74d8  JZ 0x00c9d260
00c9d288  5f  POP EDI
00c9d289  5e  POP ESI
00c9d28a  83c414  ADD ESP,0x14
00c9d28d  c3  RET
00c9d28e  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00c9d292  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00c9d296  51  PUSH ECX
00c9d297  52  PUSH EDX
00c9d298  8d4c2414  LEA ECX,[ESP + 0x14]
00c9d29c  e8df9ee5ff  CALL 0x00af7180
00c9d2a1  8d4c240c  LEA ECX,[ESP + 0xc]
00c9d2a5  e82696e5ff  CALL 0x00af68d0
00c9d2aa  84c0  TEST AL,AL
00c9d2ac  7530  JNZ 0x00c9d2de
00c9d2ae  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00c9d2b2  8b7c2430  MOV EDI,dword ptr [ESP + 0x30]
00c9d2b6  8d4c240c  LEA ECX,[ESP + 0xc]
00c9d2ba  e80196e5ff  CALL 0x00af68c0
00c9d2bf  57  PUSH EDI
00c9d2c0  50  PUSH EAX
00c9d2c1  8bce  MOV ECX,ESI
00c9d2c3  e878f50700  CALL 0x00d1c840
00c9d2c8  8d4c240c  LEA ECX,[ESP + 0xc]
00c9d2cc  e89f9be5ff  CALL 0x00af6e70
00c9d2d1  8d4c240c  LEA ECX,[ESP + 0xc]
00c9d2d5  e8f695e5ff  CALL 0x00af68d0
00c9d2da  84c0  TEST AL,AL
00c9d2dc  74d8  JZ 0x00c9d2b6
00c9d2de  5f  POP EDI
00c9d2df  5e  POP ESI
00c9d2e0  83c414  ADD ESP,0x14
00c9d2e3  c3  RET
