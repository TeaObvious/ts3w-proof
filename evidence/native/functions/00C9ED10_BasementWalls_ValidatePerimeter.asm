# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementWalls_ValidatePerimeter(undefined4 param_1, int * param_2, void * param_3)
Owned ranges: [[00c9ed10, 00c9efa3]]

00c9ed10  55  PUSH EBP
00c9ed11  8bec  MOV EBP,ESP
00c9ed13  83e4f0  AND ESP,0xfffffff0
00c9ed16  81ec34010000  SUB ESP,0x134
00c9ed1c  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c9ed22  53  PUSH EBX
00c9ed23  56  PUSH ESI
00c9ed24  57  PUSH EDI
00c9ed25  e8f6c5feff  CALL 0x00c8b320
00c9ed2a  33db  XOR EBX,EBX
00c9ed2c  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c9ed30  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00c9ed33  50  PUSH EAX
00c9ed34  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ed38  895c2428  MOV dword ptr [ESP + 0x28],EBX
00c9ed3c  c744242430be0601  MOV dword ptr [ESP + 0x24],0x106be30
00c9ed44  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00c9ed48  885c2430  MOV byte ptr [ESP + 0x30],BL
00c9ed4c  895c2434  MOV dword ptr [ESP + 0x34],EBX
00c9ed50  895c2438  MOV dword ptr [ESP + 0x38],EBX
00c9ed54  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00c9ed58  895c2440  MOV dword ptr [ESP + 0x40],EBX
00c9ed5c  c7442444e8bd0601  MOV dword ptr [ESP + 0x44],0x106bde8
00c9ed64  895c244c  MOV dword ptr [ESP + 0x4c],EBX
00c9ed68  895c2450  MOV dword ptr [ESP + 0x50],EBX
00c9ed6c  895c2454  MOV dword ptr [ESP + 0x54],EBX
00c9ed70  895c2458  MOV dword ptr [ESP + 0x58],EBX
00c9ed74  895c245c  MOV dword ptr [ESP + 0x5c],EBX
00c9ed78  895c2460  MOV dword ptr [ESP + 0x60],EBX
00c9ed7c  895c2464  MOV dword ptr [ESP + 0x64],EBX
00c9ed80  895c2468  MOV dword ptr [ESP + 0x68],EBX
00c9ed84  895c246c  MOV dword ptr [ESP + 0x6c],EBX
00c9ed88  895c2470  MOV dword ptr [ESP + 0x70],EBX
00c9ed8c  895c2474  MOV dword ptr [ESP + 0x74],EBX
00c9ed90  895c2478  MOV dword ptr [ESP + 0x78],EBX
00c9ed94  c644247c01  MOV byte ptr [ESP + 0x7c],0x1
00c9ed99  e892be83ff  CALL 0x004dac30
00c9ed9e  8b7d0c  MOV EDI,dword ptr [EBP + 0xc]
00c9eda1  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00c9eda4  2b0f  SUB ECX,dword ptr [EDI]
00c9eda6  b8abaaaa2a  MOV EAX,0x2aaaaaab
00c9edab  f7e9  IMUL ECX
00c9edad  8bf2  MOV ESI,EDX
00c9edaf  c1ee1f  SHR ESI,0x1f
00c9edb2  03f2  ADD ESI,EDX
00c9edb4  3bf3  CMP ESI,EBX
00c9edb6  895c2418  MOV dword ptr [ESP + 0x18],EBX
00c9edba  0f8ece000000  JLE 0x00c9ee8e
00c9edc0  895c2414  MOV dword ptr [ESP + 0x14],EBX
00c9edc4  eb03  JMP 0x00c9edc9
00c9edc6  8b7d0c  MOV EDI,dword ptr [EBP + 0xc]
00c9edc9  8b3f  MOV EDI,dword ptr [EDI]
00c9edcb  037c2414  ADD EDI,dword ptr [ESP + 0x14]
00c9edcf  8d8c2480000000  LEA ECX,[ESP + 0x80]
00c9edd6  e86589e3ff  CALL 0x00ad7740
00c9eddb  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00c9eddf  6a01  PUSH 0x1
00c9ede1  8d8c2484000000  LEA ECX,[ESP + 0x84]
00c9ede8  51  PUSH ECX
00c9ede9  52  PUSH EDX
00c9edea  57  PUSH EDI
00c9edeb  8d4c2430  LEA ECX,[ESP + 0x30]
00c9edef  e89ca90a00  CALL 0x00d49790
00c9edf4  84c0  TEST AL,AL
00c9edf6  752e  JNZ 0x00c9ee26
00c9edf8  8d842400010000  LEA EAX,[ESP + 0x100]
00c9edff  50  PUSH EAX
00c9ee00  8d8c2484000000  LEA ECX,[ESP + 0x84]
00c9ee07  e81487e3ff  CALL 0x00ad7520
00c9ee0c  83bc240001000079  CMP dword ptr [ESP + 0x100],0x79
00c9ee14  0f85c7000000  JNZ 0x00c9eee1
00c9ee1a  8d8c2400010000  LEA ECX,[ESP + 0x100]
00c9ee21  e8aa82e3ff  CALL 0x00ad70d0
00c9ee26  8b8c24e0000000  MOV ECX,dword ptr [ESP + 0xe0]
00c9ee2d  51  PUSH ECX
00c9ee2e  8d8c24d8000000  LEA ECX,[ESP + 0xd8]
00c9ee35  e88639dbff  CALL 0x00a527c0
00c9ee3a  8b9424c4000000  MOV EDX,dword ptr [ESP + 0xc4]
00c9ee41  52  PUSH EDX
00c9ee42  8d8c24bc000000  LEA ECX,[ESP + 0xbc]
00c9ee49  e87239dbff  CALL 0x00a527c0
00c9ee4e  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00c9ee55  50  PUSH EAX
00c9ee56  8d8c24a0000000  LEA ECX,[ESP + 0xa0]
00c9ee5d  e85e39dbff  CALL 0x00a527c0
00c9ee62  8b8c248c000000  MOV ECX,dword ptr [ESP + 0x8c]
00c9ee69  51  PUSH ECX
00c9ee6a  8d8c2484000000  LEA ECX,[ESP + 0x84]
00c9ee71  e80a39dbff  CALL 0x00a52780
00c9ee76  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c9ee7a  8344241406  ADD dword ptr [ESP + 0x14],0x6
00c9ee7f  83c001  ADD EAX,0x1
00c9ee82  3bc6  CMP EAX,ESI
00c9ee84  89442418  MOV dword ptr [ESP + 0x18],EAX
00c9ee88  0f8c38ffffff  JL 0x00c9edc6
00c9ee8e  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00c9ee92  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00c9ee96  3bf0  CMP ESI,EAX
00c9ee98  c744242030be0601  MOV dword ptr [ESP + 0x20],0x106be30
00c9eea0  8bf8  MOV EDI,EAX
00c9eea2  7318  JNC 0x00c9eebc
00c9eea4  8b0e  MOV ECX,dword ptr [ESI]
00c9eea6  3bcb  CMP ECX,EBX
00c9eea8  7407  JZ 0x00c9eeb1
00c9eeaa  8b11  MOV EDX,dword ptr [ECX]
00c9eeac  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9eeaf  ffd0  CALL EAX
00c9eeb1  83c604  ADD ESI,0x4
00c9eeb4  3bf7  CMP ESI,EDI
00c9eeb6  72ec  JC 0x00c9eea4
00c9eeb8  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00c9eebc  3bf3  CMP ESI,EBX
00c9eebe  7409  JZ 0x00c9eec9
00c9eec0  56  PUSH ESI
00c9eec1  e81a5684ff  CALL 0x004e44e0
00c9eec6  83c404  ADD ESP,0x4
00c9eec9  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00c9eecd  3bcb  CMP ECX,EBX
00c9eecf  7407  JZ 0x00c9eed8
00c9eed1  8b11  MOV EDX,dword ptr [ECX]
00c9eed3  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9eed6  ffd0  CALL EAX
00c9eed8  b001  MOV AL,0x1
00c9eeda  5f  POP EDI
00c9eedb  5e  POP ESI
00c9eedc  5b  POP EBX
00c9eedd  8be5  MOV ESP,EBP
00c9eedf  5d  POP EBP
00c9eee0  c3  RET
00c9eee1  8b4d10  MOV ECX,dword ptr [EBP + 0x10]
00c9eee4  3bcb  CMP ECX,EBX
00c9eee6  740d  JZ 0x00c9eef5
00c9eee8  8d942400010000  LEA EDX,[ESP + 0x100]
00c9eeef  52  PUSH EDX
00c9eef0  e87b96e3ff  CALL 0x00ad8570
00c9eef5  8d8c2400010000  LEA ECX,[ESP + 0x100]
00c9eefc  e8cf81e3ff  CALL 0x00ad70d0
00c9ef01  8b8424e0000000  MOV EAX,dword ptr [ESP + 0xe0]
00c9ef08  50  PUSH EAX
00c9ef09  8d8c24d8000000  LEA ECX,[ESP + 0xd8]
00c9ef10  e8ab38dbff  CALL 0x00a527c0
00c9ef15  8b8c24c4000000  MOV ECX,dword ptr [ESP + 0xc4]
00c9ef1c  51  PUSH ECX
00c9ef1d  8d8c24bc000000  LEA ECX,[ESP + 0xbc]
00c9ef24  e89738dbff  CALL 0x00a527c0
00c9ef29  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00c9ef30  52  PUSH EDX
00c9ef31  8d8c24a0000000  LEA ECX,[ESP + 0xa0]
00c9ef38  e88338dbff  CALL 0x00a527c0
00c9ef3d  8b84248c000000  MOV EAX,dword ptr [ESP + 0x8c]
00c9ef44  50  PUSH EAX
00c9ef45  8d8c2484000000  LEA ECX,[ESP + 0x84]
00c9ef4c  e82f38dbff  CALL 0x00a52780
00c9ef51  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00c9ef55  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00c9ef59  3bf0  CMP ESI,EAX
00c9ef5b  c744242030be0601  MOV dword ptr [ESP + 0x20],0x106be30
00c9ef63  8bf8  MOV EDI,EAX
00c9ef65  7318  JNC 0x00c9ef7f
00c9ef67  8b0e  MOV ECX,dword ptr [ESI]
00c9ef69  3bcb  CMP ECX,EBX
00c9ef6b  7407  JZ 0x00c9ef74
00c9ef6d  8b11  MOV EDX,dword ptr [ECX]
00c9ef6f  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9ef72  ffd0  CALL EAX
00c9ef74  83c604  ADD ESI,0x4
00c9ef77  3bf7  CMP ESI,EDI
00c9ef79  72ec  JC 0x00c9ef67
00c9ef7b  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00c9ef7f  3bf3  CMP ESI,EBX
00c9ef81  7409  JZ 0x00c9ef8c
00c9ef83  56  PUSH ESI
00c9ef84  e8575584ff  CALL 0x004e44e0
00c9ef89  83c404  ADD ESP,0x4
00c9ef8c  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00c9ef90  3bcb  CMP ECX,EBX
00c9ef92  7407  JZ 0x00c9ef9b
00c9ef94  8b11  MOV EDX,dword ptr [ECX]
00c9ef96  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9ef99  ffd0  CALL EAX
00c9ef9b  5f  POP EDI
00c9ef9c  5e  POP ESI
00c9ef9d  32c0  XOR AL,AL
00c9ef9f  5b  POP EBX
00c9efa0  8be5  MOV ESP,EBP
00c9efa2  5d  POP EBP
00c9efa3  c3  RET
