# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ScriptHandle_RegisterTypedPointer
Paired actual annotated Ghidra pseudocode: 0076AAD0_ScriptHandle_RegisterTypedPointer.c
Owned ranges: [[0076aad0, 0076ac32]]
Envelope bytes=355

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0076aad0  83ec28  SUB ESP,0x28
0076aad3  53  PUSH EBX
0076aad4  55  PUSH EBP
0076aad5  56  PUSH ESI
0076aad6  8bd9  MOV EBX,ECX
0076aad8  57  PUSH EDI
0076aad9  8dabf0090000  LEA EBP,[EBX + 0x9f0]
0076aadf  6844870001  PUSH 0x1008744
0076aae4  8bcd  MOV ECX,EBP
0076aae6  896c2428  MOV dword ptr [ESP + 0x28],EBP
0076aaea  e81171d7ff  CALL 0x004e1c00
0076aaef  8d442440  LEA EAX,[ESP + 0x40]
0076aaf3  50  PUSH EAX
0076aaf4  8d4c241c  LEA ECX,[ESP + 0x1c]
0076aaf8  8d7304  LEA ESI,[EBX + 0x4]
0076aafb  51  PUSH ECX
0076aafc  8bce  MOV ECX,ESI
0076aafe  e82dfaffff  CALL 0x0076a530
0076ab03  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0076ab06  8b4604  MOV EAX,dword ptr [ESI + 0x4]
0076ab09  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
0076ab0d  3b3c90  CMP EDI,dword ptr [EAX + EDX*0x4]
0076ab10  7527  JNZ 0x0076ab39
0076ab12  c644241000  MOV byte ptr [ESP + 0x10],0x0
0076ab17  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
0076ab1b  51  PUSH ECX
0076ab1c  8d542444  LEA EDX,[ESP + 0x44]
0076ab20  52  PUSH EDX
0076ab21  8d442420  LEA EAX,[ESP + 0x20]
0076ab25  50  PUSH EAX
0076ab26  8bce  MOV ECX,ESI
0076ab28  e823feffff  CALL 0x0076a950
0076ab2d  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
0076ab31  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
0076ab35  894c241c  MOV dword ptr [ESP + 0x1c],ECX
0076ab39  8d54243c  LEA EDX,[ESP + 0x3c]
0076ab3d  83c704  ADD EDI,0x4
0076ab40  8d7720  LEA ESI,[EDI + 0x20]
0076ab43  52  PUSH EDX
0076ab44  8d442414  LEA EAX,[ESP + 0x14]
0076ab48  50  PUSH EAX
0076ab49  8bce  MOV ECX,ESI
0076ab4b  89742420  MOV dword ptr [ESP + 0x20],ESI
0076ab4f  e85c0e2f00  CALL 0x00a5b9b0
0076ab54  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0076ab57  8b5604  MOV EDX,dword ptr [ESI + 0x4]
0076ab5a  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0076ab5e  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
0076ab61  0f858e000000  JNZ 0x0076abf5
0076ab67  0fb66c2440  MOVZX EBP,byte ptr [ESP + 0x40]
0076ab6c  83c324  ADD EBX,0x24
0076ab6f  c1e518  SHL EBP,0x18
0076ab72  8bcb  MOV ECX,EBX
0076ab74  e86700d9ff  CALL 0x004fabe0
0076ab79  8bf0  MOV ESI,EAX
0076ab7b  c644244000  MOV byte ptr [ESP + 0x40],0x0
0076ab80  8b442440  MOV EAX,dword ptr [ESP + 0x40]
0076ab84  50  PUSH EAX
0076ab85  8d4c2414  LEA ECX,[ESP + 0x14]
0076ab89  51  PUSH ECX
0076ab8a  81e6ffffff00  AND ESI,0xffffff
0076ab90  8d542434  LEA EDX,[ESP + 0x34]
0076ab94  0bf5  OR ESI,EBP
0076ab96  52  PUSH EDX
0076ab97  8bcf  MOV ECX,EDI
0076ab99  8974241c  MOV dword ptr [ESP + 0x1c],ESI
0076ab9d  e8be87fcff  CALL 0x00733360
0076aba2  807c243400  CMP byte ptr [ESP + 0x34],0x0
0076aba7  74c9  JZ 0x0076ab72
0076aba9  8b7c243c  MOV EDI,dword ptr [ESP + 0x3c]
0076abad  c644244000  MOV byte ptr [ESP + 0x40],0x0
0076abb2  8b442440  MOV EAX,dword ptr [ESP + 0x40]
0076abb6  50  PUSH EAX
0076abb7  8d4c2414  LEA ECX,[ESP + 0x14]
0076abbb  51  PUSH ECX
0076abbc  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
0076abc0  8d542420  LEA EDX,[ESP + 0x20]
0076abc4  52  PUSH EDX
0076abc5  897c241c  MOV dword ptr [ESP + 0x1c],EDI
0076abc9  89742420  MOV dword ptr [ESP + 0x20],ESI
0076abcd  e89e960800  CALL 0x007f4270
0076abd2  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
0076abd6  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
0076abda  897804  MOV dword ptr [EAX + 0x4],EDI
0076abdd  c7400801000000  MOV dword ptr [EAX + 0x8],0x1
0076abe4  e8d770d7ff  CALL 0x004e1cc0
0076abe9  5f  POP EDI
0076abea  8bc6  MOV EAX,ESI
0076abec  5e  POP ESI
0076abed  5d  POP EBP
0076abee  5b  POP EBX
0076abef  83c428  ADD ESP,0x28
0076abf2  c20800  RET 0x8
0076abf5  8b7004  MOV ESI,dword ptr [EAX + 0x4]
0076abf8  8d442440  LEA EAX,[ESP + 0x40]
0076abfc  50  PUSH EAX
0076abfd  8d4c2428  LEA ECX,[ESP + 0x28]
0076ac01  51  PUSH ECX
0076ac02  8bcf  MOV ECX,EDI
0076ac04  89742448  MOV dword ptr [ESP + 0x48],ESI
0076ac08  e803b60a00  CALL 0x00816210
0076ac0d  8b5708  MOV EDX,dword ptr [EDI + 0x8]
0076ac10  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
0076ac13  8b442424  MOV EAX,dword ptr [ESP + 0x24]
0076ac17  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
0076ac1a  7404  JZ 0x0076ac20
0076ac1c  83400801  ADD dword ptr [EAX + 0x8],0x1
0076ac20  8bcd  MOV ECX,EBP
0076ac22  e89970d7ff  CALL 0x004e1cc0
0076ac27  5f  POP EDI
0076ac28  8bc6  MOV EAX,ESI
0076ac2a  5e  POP ESI
0076ac2b  5d  POP EBP
0076ac2c  5b  POP EBX
0076ac2d  83c428  ADD ESP,0x28
0076ac30  c20800  RET 0x8
Owned instructions=116 owned bytes=355 gap/nonowned bytes=0
