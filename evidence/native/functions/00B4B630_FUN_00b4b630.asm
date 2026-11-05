# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00B4B630_FUN_00b4b630.c
Body [[00b4b630, 00b4b78e]]; envelope exclusive end 00b4b78f

GHIDRA LISTING (original bytes)
00b4b630  55  PUSH EBP
00b4b631  8bec  MOV EBP,ESP
00b4b633  83e4f8  AND ESP,0xfffffff8
00b4b636  81eca0000000  SUB ESP,0xa0
00b4b63c  d9ee  FLDZ
00b4b63e  53  PUSH EBX
00b4b63f  55  PUSH EBP
00b4b640  dd5c2410  FSTP double ptr [ESP + 0x10]
00b4b644  56  PUSH ESI
00b4b645  8bf1  MOV ESI,ECX
00b4b647  8b4664  MOV EAX,dword ptr [ESI + 0x64]
00b4b64a  33ed  XOR EBP,EBP
00b4b64c  3bc5  CMP EAX,EBP
00b4b64e  57  PUSH EDI
00b4b64f  8b3d34e01e01  MOV EDI,dword ptr [0x011ee034]
00b4b655  740f  JZ 0x00b4b666
00b4b657  8b4820  MOV ECX,dword ptr [EAX + 0x20]
00b4b65a  2b481c  SUB ECX,dword ptr [EAX + 0x1c]
00b4b65d  c1f902  SAR ECX,0x2
00b4b660  894c2424  MOV dword ptr [ESP + 0x24],ECX
00b4b664  eb06  JMP 0x00b4b66c
00b4b666  896c2424  MOV dword ptr [ESP + 0x24],EBP
00b4b66a  8bcd  MOV ECX,EBP
00b4b66c  3bcd  CMP ECX,EBP
00b4b66e  0f860a010000  JBE 0x00b4b77e
00b4b674  80cbff  OR BL,0xff
00b4b677  8d442410  LEA EAX,[ESP + 0x10]
00b4b67b  50  PUSH EAX
00b4b67c  55  PUSH EBP
00b4b67d  8bce  MOV ECX,ESI
00b4b67f  885c2418  MOV byte ptr [ESP + 0x18],BL
00b4b683  885c2419  MOV byte ptr [ESP + 0x19],BL
00b4b687  c644241a00  MOV byte ptr [ESP + 0x1a],0x0
00b4b68c  885c241b  MOV byte ptr [ESP + 0x1b],BL
00b4b690  885c241c  MOV byte ptr [ESP + 0x1c],BL
00b4b694  c644241d00  MOV byte ptr [ESP + 0x1d],0x0
00b4b699  e8c2c7ffff  CALL 0x00b47e60
00b4b69e  668b4c2413  MOV CX,word ptr [ESP + 0x13]
00b4b6a3  8a542415  MOV DL,byte ptr [ESP + 0x15]
00b4b6a7  668b442410  MOV AX,word ptr [ESP + 0x10]
00b4b6ac  66894c2428  MOV word ptr [ESP + 0x28],CX
00b4b6b1  8a4c2412  MOV CL,byte ptr [ESP + 0x12]
00b4b6b5  8854242a  MOV byte ptr [ESP + 0x2a],DL
00b4b6b9  8d542410  LEA EDX,[ESP + 0x10]
00b4b6bd  884c242d  MOV byte ptr [ESP + 0x2d],CL
00b4b6c1  8b4e64  MOV ECX,dword ptr [ESI + 0x64]
00b4b6c4  52  PUSH EDX
00b4b6c5  668944242f  MOV word ptr [ESP + 0x2f],AX
00b4b6ca  e801620f00  CALL 0x00c418d0
00b4b6cf  85c0  TEST EAX,EAX
00b4b6d1  740d  JZ 0x00b4b6e0
00b4b6d3  8b00  MOV EAX,dword ptr [EAX]
00b4b6d5  8b4e6c  MOV ECX,dword ptr [ESI + 0x6c]
00b4b6d8  50  PUSH EAX
00b4b6d9  e812990f00  CALL 0x00c44ff0
00b4b6de  eb05  JMP 0x00b4b6e5
00b4b6e0  b8c0c81e01  MOV EAX,0x11ec8c0
00b4b6e5  6a01  PUSH 0x1
00b4b6e7  50  PUSH EAX
00b4b6e8  8bcf  MOV ECX,EDI
00b4b6ea  e831431400  CALL 0x00c8fa20
00b4b6ef  85c0  TEST EAX,EAX
00b4b6f1  747e  JZ 0x00b4b771
00b4b6f3  83b88800000002  CMP dword ptr [EAX + 0x88],0x2
00b4b6fa  d94058  FLD float ptr [EAX + 0x58]
00b4b6fd  dc442418  FADD double ptr [ESP + 0x18]
00b4b701  dd5c2418  FSTP double ptr [ESP + 0x18]
00b4b705  746a  JZ 0x00b4b771
00b4b707  8d4c2430  LEA ECX,[ESP + 0x30]
00b4b70b  e86003fbff  CALL 0x00afba70
00b4b710  8d442430  LEA EAX,[ESP + 0x30]
00b4b714  50  PUSH EAX
00b4b715  8d4c2414  LEA ECX,[ESP + 0x14]
00b4b719  51  PUSH ECX
00b4b71a  8bce  MOV ECX,ESI
00b4b71c  e8afefffff  CALL 0x00b4a6d0
00b4b721  8d542430  LEA EDX,[ESP + 0x30]
00b4b725  52  PUSH EDX
00b4b726  8bcf  MOV ECX,EDI
00b4b728  e8b3331400  CALL 0x00c8eae0
00b4b72d  85c0  TEST EAX,EAX
00b4b72f  740b  JZ 0x00b4b73c
00b4b731  d94058  FLD float ptr [EAX + 0x58]
00b4b734  dc442418  FADD double ptr [ESP + 0x18]
00b4b738  dd5c2418  FSTP double ptr [ESP + 0x18]
00b4b73c  8d4c2470  LEA ECX,[ESP + 0x70]
00b4b740  e82b03fbff  CALL 0x00afba70
00b4b745  8d442470  LEA EAX,[ESP + 0x70]
00b4b749  50  PUSH EAX
00b4b74a  8d4c242c  LEA ECX,[ESP + 0x2c]
00b4b74e  51  PUSH ECX
00b4b74f  8bce  MOV ECX,ESI
00b4b751  e87aefffff  CALL 0x00b4a6d0
00b4b756  8d542470  LEA EDX,[ESP + 0x70]
00b4b75a  52  PUSH EDX
00b4b75b  8bcf  MOV ECX,EDI
00b4b75d  e87e331400  CALL 0x00c8eae0
00b4b762  85c0  TEST EAX,EAX
00b4b764  740b  JZ 0x00b4b771
00b4b766  d94058  FLD float ptr [EAX + 0x58]
00b4b769  dc442418  FADD double ptr [ESP + 0x18]
00b4b76d  dd5c2418  FSTP double ptr [ESP + 0x18]
00b4b771  83c501  ADD EBP,0x1
00b4b774  3b6c2424  CMP EBP,dword ptr [ESP + 0x24]
00b4b778  0f82f9feffff  JC 0x00b4b677
00b4b77e  dd442418  FLD double ptr [ESP + 0x18]
00b4b782  e8993e4300  CALL 0x00f7f620
00b4b787  5f  POP EDI
00b4b788  5e  POP ESI
00b4b789  5d  POP EBP
00b4b78a  5b  POP EBX
00b4b78b  8be5  MOV ESP,EBP
00b4b78d  5d  POP EBP
00b4b78e  c3  RET
