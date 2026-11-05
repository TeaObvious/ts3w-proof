# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0050BAC0_UiFocusService_InitializeFields.c
Owned ranges: [[0050bac0, 0050bc4c] [0050bc50, 0050bc6a]]

0050bac0  53  PUSH EBX
0050bac1  56  PUSH ESI
0050bac2  8bf1  MOV ESI,ECX
0050bac4  c706f0b6fb00  MOV dword ptr [ESI],0xfbb6f0
0050baca  33db  XOR EBX,EBX
0050bacc  895e04  MOV dword ptr [ESI + 0x4],EBX
0050bacf  8d4608  LEA EAX,[ESI + 0x8]
0050bad2  894004  MOV dword ptr [EAX + 0x4],EAX
0050bad5  8900  MOV dword ptr [EAX],EAX
0050bad7  8d4610  LEA EAX,[ESI + 0x10]
0050bada  894004  MOV dword ptr [EAX + 0x4],EAX
0050badd  8900  MOV dword ptr [EAX],EAX
0050badf  8d4e18  LEA ECX,[ESI + 0x18]
0050bae2  894904  MOV dword ptr [ECX + 0x4],ECX
0050bae5  8909  MOV dword ptr [ECX],ECX
0050bae7  894620  MOV dword ptr [ESI + 0x20],EAX
0050baea  6a01  PUSH 0x1
0050baec  53  PUSH EBX
0050baed  8d4e38  LEA ECX,[ESI + 0x38]
0050baf0  885e24  MOV byte ptr [ESI + 0x24],BL
0050baf3  895e28  MOV dword ptr [ESI + 0x28],EBX
0050baf6  895e2c  MOV dword ptr [ESI + 0x2c],EBX
0050baf9  885e30  MOV byte ptr [ESI + 0x30],BL
0050bafc  e8ef61fdff  CALL 0x004e1cf0
0050bb01  885e68  MOV byte ptr [ESI + 0x68],BL
0050bb04  885e69  MOV byte ptr [ESI + 0x69],BL
0050bb07  8d466c  LEA EAX,[ESI + 0x6c]
0050bb0a  894004  MOV dword ptr [EAX + 0x4],EAX
0050bb0d  8900  MOV dword ptr [EAX],EAX
0050bb0f  8d4674  LEA EAX,[ESI + 0x74]
0050bb12  6a01  PUSH 0x1
0050bb14  53  PUSH EBX
0050bb15  8d8e80000000  LEA ECX,[ESI + 0x80]
0050bb1b  894004  MOV dword ptr [EAX + 0x4],EAX
0050bb1e  8900  MOV dword ptr [EAX],EAX
0050bb20  e8cb61fdff  CALL 0x004e1cf0
0050bb25  0f57c0  XORPS XMM0,XMM0
0050bb28  8d86b0000000  LEA EAX,[ESI + 0xb0]
0050bb2e  894004  MOV dword ptr [EAX + 0x4],EAX
0050bb31  8900  MOV dword ptr [EAX],EAX
0050bb33  f30f1186b8000000  MOVSS dword ptr [ESI + 0xb8],XMM0
0050bb3b  f30f1186bc000000  MOVSS dword ptr [ESI + 0xbc],XMM0
0050bb43  f30f1186c0000000  MOVSS dword ptr [ESI + 0xc0],XMM0
0050bb4b  f30f1186c4000000  MOVSS dword ptr [ESI + 0xc4],XMM0
0050bb53  899ec8000000  MOV dword ptr [ESI + 0xc8],EBX
0050bb59  f30f1186cc000000  MOVSS dword ptr [ESI + 0xcc],XMM0
0050bb61  f30f1186d0000000  MOVSS dword ptr [ESI + 0xd0],XMM0
0050bb69  899ed4000000  MOV dword ptr [ESI + 0xd4],EBX
0050bb6f  899ed8000000  MOV dword ptr [ESI + 0xd8],EBX
0050bb75  c786dc00000001000000  MOV dword ptr [ESI + 0xdc],0x1
0050bb7f  899ee0000000  MOV dword ptr [ESI + 0xe0],EBX
0050bb85  889ee4000000  MOV byte ptr [ESI + 0xe4],BL
0050bb8b  c686e500000001  MOV byte ptr [ESI + 0xe5],0x1
0050bb92  c786f0000000d8b6fb00  MOV dword ptr [ESI + 0xf0],0xfbb6d8
0050bb9c  8d86e8000000  LEA EAX,[ESI + 0xe8]
0050bba2  8900  MOV dword ptr [EAX],EAX
0050bba4  894004  MOV dword ptr [EAX + 0x4],EAX
0050bba7  c786fc000000b8b6fb00  MOV dword ptr [ESI + 0xfc],0xfbb6b8
0050bbb1  8d86f4000000  LEA EAX,[ESI + 0xf4]
0050bbb7  8900  MOV dword ptr [EAX],EAX
0050bbb9  894004  MOV dword ptr [EAX + 0x4],EAX
0050bbbc  c7860801000094b6fb00  MOV dword ptr [ESI + 0x108],0xfbb694
0050bbc6  8d8600010000  LEA EAX,[ESI + 0x100]
0050bbcc  8900  MOV dword ptr [EAX],EAX
0050bbce  894004  MOV dword ptr [EAX + 0x4],EAX
0050bbd1  c7861401000074b6fb00  MOV dword ptr [ESI + 0x114],0xfbb674
0050bbdb  8d860c010000  LEA EAX,[ESI + 0x10c]
0050bbe1  8900  MOV dword ptr [EAX],EAX
0050bbe3  894004  MOV dword ptr [EAX + 0x4],EAX
0050bbe6  8d8618010000  LEA EAX,[ESI + 0x118]
0050bbec  c7400858b6fb00  MOV dword ptr [EAX + 0x8],0xfbb658
0050bbf3  8900  MOV dword ptr [EAX],EAX
0050bbf5  894004  MOV dword ptr [EAX + 0x4],EAX
0050bbf8  53  PUSH EBX
0050bbf9  8d8e28010000  LEA ECX,[ESI + 0x128]
0050bbff  899e24010000  MOV dword ptr [ESI + 0x124],EBX
0050bc05  e806adf5ff  CALL 0x00466910
0050bc0a  6a01  PUSH 0x1
0050bc0c  53  PUSH EBX
0050bc0d  8d8e78060000  LEA ECX,[ESI + 0x678]
0050bc13  e8d860fdff  CALL 0x004e1cf0
0050bc18  899ea8060000  MOV dword ptr [ESI + 0x6a8],EBX
0050bc1e  899eac060000  MOV dword ptr [ESI + 0x6ac],EBX
0050bc24  8d8668080000  LEA EAX,[ESI + 0x868]
0050bc2a  c740083cb6fb00  MOV dword ptr [EAX + 0x8],0xfbb63c
0050bc31  8900  MOV dword ptr [EAX],EAX
0050bc33  894004  MOV dword ptr [EAX + 0x4],EAX
0050bc36  899e74080000  MOV dword ptr [ESI + 0x874],EBX
0050bc3c  899e78080000  MOV dword ptr [ESI + 0x878],EBX
0050bc42  8d86b8060000  LEA EAX,[ESI + 0x6b8]
0050bc48  8d4b0a  LEA ECX,[EBX + 0xa]
0050bc4b  eb03  JMP 0x0050bc50
0050bc4d  8d  ; non-owned original alignment byte
0050bc4e  49  ; non-owned original alignment byte
0050bc4f  00  ; non-owned original alignment byte
0050bc50  8958f8  MOV dword ptr [EAX + -0x8],EBX
0050bc53  8958fc  MOV dword ptr [EAX + -0x4],EBX
0050bc56  8918  MOV dword ptr [EAX],EBX
0050bc58  885804  MOV byte ptr [EAX + 0x4],BL
0050bc5b  895810  MOV dword ptr [EAX + 0x10],EBX
0050bc5e  83c02c  ADD EAX,0x2c
0050bc61  83e901  SUB ECX,0x1
0050bc64  75ea  JNZ 0x0050bc50
0050bc66  8bc6  MOV EAX,ESI
0050bc68  5e  POP ESI
0050bc69  5b  POP EBX
0050bc6a  c3  RET
