# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 BasementRegion_ComputePreviewCost(void * param_1, char param_2, char param_3, char * param_4, char * param_5, char param_6)
Owned ranges: [[00c9e170, 00c9e30c]]

00c9e170  55  PUSH EBP
00c9e171  8bec  MOV EBP,ESP
00c9e173  83e4f0  AND ESP,0xfffffff0
00c9e176  83ec24  SUB ESP,0x24
00c9e179  53  PUSH EBX
00c9e17a  56  PUSH ESI
00c9e17b  8b7514  MOV ESI,dword ptr [EBP + 0x14]
00c9e17e  8a5602  MOV DL,byte ptr [ESI + 0x2]
00c9e181  57  PUSH EDI
00c9e182  8b7d18  MOV EDI,dword ptr [EBP + 0x18]
00c9e185  8a4702  MOV AL,byte ptr [EDI + 0x2]
00c9e188  3ad0  CMP DL,AL
00c9e18a  88542411  MOV byte ptr [ESP + 0x11],DL
00c9e18e  88442413  MOV byte ptr [ESP + 0x13],AL
00c9e192  757d  JNZ 0x00c9e211
00c9e194  807d0c00  CMP byte ptr [EBP + 0xc],0x0
00c9e198  8a07  MOV AL,byte ptr [EDI]
00c9e19a  8a1e  MOV BL,byte ptr [ESI]
00c9e19c  88442410  MOV byte ptr [ESP + 0x10],AL
00c9e1a0  7517  JNZ 0x00c9e1b9
00c9e1a2  3ad8  CMP BL,AL
00c9e1a4  7d6b  JGE 0x00c9e211
00c9e1a6  8a4601  MOV AL,byte ptr [ESI + 0x1]
00c9e1a9  8a4f01  MOV CL,byte ptr [EDI + 0x1]
00c9e1ac  3ac1  CMP AL,CL
00c9e1ae  7c72  JL 0x00c9e222
00c9e1b0  d9ee  FLDZ
00c9e1b2  5f  POP EDI
00c9e1b3  5e  POP ESI
00c9e1b4  5b  POP EBX
00c9e1b5  8be5  MOV ESP,EBP
00c9e1b7  5d  POP EBP
00c9e1b8  c3  RET
00c9e1b9  3ad8  CMP BL,AL
00c9e1bb  885c2412  MOV byte ptr [ESP + 0x12],BL
00c9e1bf  7508  JNZ 0x00c9e1c9
00c9e1c1  8a4601  MOV AL,byte ptr [ESI + 0x1]
00c9e1c4  3a4701  CMP AL,byte ptr [EDI + 0x1]
00c9e1c7  7448  JZ 0x00c9e211
00c9e1c9  8a4f01  MOV CL,byte ptr [EDI + 0x1]
00c9e1cc  8a4601  MOV AL,byte ptr [ESI + 0x1]
00c9e1cf  0fbe7c2410  MOVSX EDI,byte ptr [ESP + 0x10]
00c9e1d4  0fbef3  MOVSX ESI,BL
00c9e1d7  0fbed0  MOVSX EDX,AL
00c9e1da  8bdf  MOV EBX,EDI
00c9e1dc  2bde  SUB EBX,ESI
00c9e1de  2bda  SUB EBX,EDX
00c9e1e0  0fbed1  MOVSX EDX,CL
00c9e1e3  03da  ADD EBX,EDX
00c9e1e5  81e301000080  AND EBX,0x80000001
00c9e1eb  7905  JNS 0x00c9e1f2
00c9e1ed  4b  DEC EBX
00c9e1ee  83cbfe  OR EBX,0xfffffffe
00c9e1f1  43  INC EBX
00c9e1f2  83fb01  CMP EBX,0x1
00c9e1f5  741a  JZ 0x00c9e211
00c9e1f7  8d1c17  LEA EBX,[EDI + EDX*0x1]
00c9e1fa  0fbed0  MOVSX EDX,AL
00c9e1fd  03d6  ADD EDX,ESI
00c9e1ff  3bd3  CMP EDX,EBX
00c9e201  740e  JZ 0x00c9e211
00c9e203  0fbed1  MOVSX EDX,CL
00c9e206  2bfa  SUB EDI,EDX
00c9e208  0fbed0  MOVSX EDX,AL
00c9e20b  2bf2  SUB ESI,EDX
00c9e20d  3bf7  CMP ESI,EDI
00c9e20f  7509  JNZ 0x00c9e21a
00c9e211  d9ee  FLDZ
00c9e213  5f  POP EDI
00c9e214  5e  POP ESI
00c9e215  5b  POP EBX
00c9e216  8be5  MOV ESP,EBP
00c9e218  5d  POP EBP
00c9e219  c3  RET
00c9e21a  8a542411  MOV DL,byte ptr [ESP + 0x11]
00c9e21e  8a5c2412  MOV BL,byte ptr [ESP + 0x12]
00c9e222  8b7d1c  MOV EDI,dword ptr [EBP + 0x1c]
00c9e225  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00c9e228  88442419  MOV byte ptr [ESP + 0x19],AL
00c9e22c  0fb6442410  MOVZX EAX,byte ptr [ESP + 0x10]
00c9e231  57  PUSH EDI
00c9e232  80ea01  SUB DL,0x1
00c9e235  88442418  MOV byte ptr [ESP + 0x18],AL
00c9e239  8a442417  MOV AL,byte ptr [ESP + 0x17]
00c9e23d  884c2419  MOV byte ptr [ESP + 0x19],CL
00c9e241  8d4c2418  LEA ECX,[ESP + 0x18]
00c9e245  51  PUSH ECX
00c9e246  88542422  MOV byte ptr [ESP + 0x22],DL
00c9e24a  2c01  SUB AL,0x1
00c9e24c  8d542420  LEA EDX,[ESP + 0x20]
00c9e250  52  PUSH EDX
00c9e251  885c2424  MOV byte ptr [ESP + 0x24],BL
00c9e255  8b5d10  MOV EBX,dword ptr [EBP + 0x10]
00c9e258  88442422  MOV byte ptr [ESP + 0x22],AL
00c9e25c  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c9e25f  53  PUSH EBX
00c9e260  50  PUSH EAX
00c9e261  56  PUSH ESI
00c9e262  e8a9e5ffff  CALL 0x00c9c810
00c9e267  84db  TEST BL,BL
00c9e269  0f94c1  SETZ CL
00c9e26c  d95c2434  FSTP float ptr [ESP + 0x34]
00c9e270  57  PUSH EDI
00c9e271  8d542430  LEA EDX,[ESP + 0x30]
00c9e275  8d442434  LEA EAX,[ESP + 0x34]
00c9e279  51  PUSH ECX
00c9e27a  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00c9e27d  52  PUSH EDX
00c9e27e  50  PUSH EAX
00c9e27f  53  PUSH EBX
00c9e280  51  PUSH ECX
00c9e281  56  PUSH ESI
00c9e282  e819eaffff  CALL 0x00c9cca0
00c9e287  d8442450  FADD float ptr [ESP + 0x50]
00c9e28b  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c9e291  83c434  ADD ESP,0x34
00c9e294  d95c241c  FSTP float ptr [ESP + 0x1c]
00c9e298  e883d0feff  CALL 0x00c8b320
00c9e29d  33ff  XOR EDI,EDI
00c9e29f  8d542420  LEA EDX,[ESP + 0x20]
00c9e2a3  52  PUSH EDX
00c9e2a4  8b550c  MOV EDX,dword ptr [EBP + 0xc]
00c9e2a7  57  PUSH EDI
00c9e2a8  8d44241c  LEA EAX,[ESP + 0x1c]
00c9e2ac  50  PUSH EAX
00c9e2ad  8d4c2424  LEA ECX,[ESP + 0x24]
00c9e2b1  51  PUSH ECX
00c9e2b2  52  PUSH EDX
00c9e2b3  897c2434  MOV dword ptr [ESP + 0x34],EDI
00c9e2b7  897c2438  MOV dword ptr [ESP + 0x38],EDI
00c9e2bb  897c243c  MOV dword ptr [ESP + 0x3c],EDI
00c9e2bf  c7442440e0d60701  MOV dword ptr [ESP + 0x40],0x107d6e0
00c9e2c7  e884f1fbff  CALL 0x00c5d450
00c9e2cc  8d442434  LEA EAX,[ESP + 0x34]
00c9e2d0  50  PUSH EAX
00c9e2d1  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c9e2d4  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9e2d8  51  PUSH ECX
00c9e2d9  8d542434  LEA EDX,[ESP + 0x34]
00c9e2dd  52  PUSH EDX
00c9e2de  53  PUSH EBX
00c9e2df  50  PUSH EAX
00c9e2e0  56  PUSH ESI
00c9e2e1  e8aafcffff  CALL 0x00c9df90
00c9e2e6  d8442448  FADD float ptr [ESP + 0x48]
00c9e2ea  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00c9e2ee  83c42c  ADD ESP,0x2c
00c9e2f1  3bc7  CMP EAX,EDI
00c9e2f3  d95c241c  FSTP float ptr [ESP + 0x1c]
00c9e2f7  7409  JZ 0x00c9e302
00c9e2f9  50  PUSH EAX
00c9e2fa  e8e16184ff  CALL 0x004e44e0
00c9e2ff  83c404  ADD ESP,0x4
00c9e302  d944241c  FLD float ptr [ESP + 0x1c]
00c9e306  5f  POP EDI
00c9e307  5e  POP ESI
00c9e308  5b  POP EBX
00c9e309  8be5  MOV ESP,EBP
00c9e30b  5d  POP EBP
00c9e30c  c3  RET
