# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: GameVersion_ParseFourComponents
Paired actual annotated Ghidra pseudocode: 009AE9A0_GameVersion_ParseFourComponents.c
Owned ranges: [[009ae9a0, 009ae9fc] [009aea00, 009aeb48]]
Envelope bytes=425

GHIDRA LISTING (original bytes; nonowned alignment explicit)
009ae9a0  81ec70060000  SUB ESP,0x670
009ae9a6  53  PUSH EBX
009ae9a7  8d842424010000  LEA EAX,[ESP + 0x124]
009ae9ae  56  PUSH ESI
009ae9af  8bf1  MOV ESI,ECX
009ae9b1  8bc8  MOV ECX,EAX
009ae9b3  8984241c010000  MOV dword ptr [ESP + 0x11c],EAX
009ae9ba  8d442418  LEA EAX,[ESP + 0x18]
009ae9be  898c2418010000  MOV dword ptr [ESP + 0x118],ECX
009ae9c5  8bc8  MOV ECX,EAX
009ae9c7  8d942478060000  LEA EDX,[ESP + 0x678]
009ae9ce  894c2408  MOV dword ptr [ESP + 0x8],ECX
009ae9d2  8b8c247c060000  MOV ECX,dword ptr [ESP + 0x67c]
009ae9d9  89942420010000  MOV dword ptr [ESP + 0x120],EDX
009ae9e0  8944240c  MOV dword ptr [ESP + 0xc],EAX
009ae9e4  8d942417010000  LEA EDX,[ESP + 0x117]
009ae9eb  33db  XOR EBX,EBX
009ae9ed  8bc1  MOV EAX,ECX
009ae9ef  57  PUSH EDI
009ae9f0  89542414  MOV dword ptr [ESP + 0x14],EDX
009ae9f4  885c241c  MOV byte ptr [ESP + 0x1c],BL
009ae9f8  8d7801  LEA EDI,[EAX + 0x1]
009ae9fb  eb03  JMP 0x009aea00
009ae9fd  8d  .byte (gap/alignment)
009ae9fe  49  .byte (gap/alignment)
009ae9ff  00  .byte (gap/alignment)
009aea00  8a10  MOV DL,byte ptr [EAX]
009aea02  83c001  ADD EAX,0x1
009aea05  3ad3  CMP DL,BL
009aea07  75f7  JNZ 0x009aea00
009aea09  2bc7  SUB EAX,EDI
009aea0b  03c1  ADD EAX,ECX
009aea0d  50  PUSH EAX
009aea0e  51  PUSH ECX
009aea0f  8d4c2414  LEA ECX,[ESP + 0x14]
009aea13  e8680ebeff  CALL 0x0058f880
009aea18  687c8ff900  PUSH 0xf98f7c
009aea1d  8d842420010000  LEA EAX,[ESP + 0x120]
009aea24  50  PUSH EAX
009aea25  8d4c2414  LEA ECX,[ESP + 0x14]
009aea29  51  PUSH ECX
009aea2a  e8d1eefeff  CALL 0x0099d900
009aea2f  8b8c242c010000  MOV ECX,dword ptr [ESP + 0x12c]
009aea36  8bbc2428010000  MOV EDI,dword ptr [ESP + 0x128]
009aea3d  2bcf  SUB ECX,EDI
009aea3f  b879787878  MOV EAX,0x78787879
009aea44  f7e9  IMUL ECX
009aea46  c1fa07  SAR EDX,0x7
009aea49  8bc2  MOV EAX,EDX
009aea4b  c1e81f  SHR EAX,0x1f
009aea4e  03c2  ADD EAX,EDX
009aea50  83c40c  ADD ESP,0xc
009aea53  83f804  CMP EAX,0x4
009aea56  0f85d6000000  JNZ 0x009aeb32
009aea5c  8b8f34030000  MOV ECX,dword ptr [EDI + 0x334]
009aea62  2b8f30030000  SUB ECX,dword ptr [EDI + 0x330]
009aea68  83f905  CMP ECX,0x5
009aea6b  0f82c1000000  JC 0x009aeb32
009aea71  8b3f  MOV EDI,dword ptr [EDI]
009aea73  6a0a  PUSH 0xa
009aea75  53  PUSH EBX
009aea76  57  PUSH EDI
009aea77  e83411b5ff  CALL 0x004ffbb0
009aea7c  8b942428010000  MOV EDX,dword ptr [ESP + 0x128]
009aea83  6a0a  PUSH 0xa
009aea85  8906  MOV dword ptr [ESI],EAX
009aea87  8b8210010000  MOV EAX,dword ptr [EDX + 0x110]
009aea8d  53  PUSH EBX
009aea8e  50  PUSH EAX
009aea8f  e81c11b5ff  CALL 0x004ffbb0
009aea94  894604  MOV dword ptr [ESI + 0x4],EAX
009aea97  8b842434010000  MOV EAX,dword ptr [ESP + 0x134]
009aea9e  8b8020020000  MOV EAX,dword ptr [EAX + 0x220]
009aeaa4  6a0a  PUSH 0xa
009aeaa6  53  PUSH EBX
009aeaa7  50  PUSH EAX
009aeaa8  e80311b5ff  CALL 0x004ffbb0
009aeaad  894608  MOV dword ptr [ESI + 0x8],EAX
009aeab0  8b842440010000  MOV EAX,dword ptr [ESP + 0x140]
009aeab7  8b8834030000  MOV ECX,dword ptr [EAX + 0x334]
009aeabd  2b8830030000  SUB ECX,dword ptr [EAX + 0x330]
009aeac3  8b8030030000  MOV EAX,dword ptr [EAX + 0x330]
009aeac9  83c424  ADD ESP,0x24
009aeacc  83f905  CMP ECX,0x5
009aeacf  6a0a  PUSH 0xa
009aead1  53  PUSH EBX
009aead2  50  PUSH EAX
009aead3  7546  JNZ 0x009aeb1b
009aead5  e8d610b5ff  CALL 0x004ffbb0
009aeada  8bf8  MOV EDI,EAX
009aeadc  b85917b7d1  MOV EAX,0xd1b71759
009aeae1  f7e7  MUL EDI
009aeae3  c1ea0d  SHR EDX,0xd
009aeae6  8d0c92  LEA ECX,[EDX + EDX*0x4]
009aeae9  b8cdcccccc  MOV EAX,0xcccccccd
009aeaee  f7e7  MUL EDI
009aeaf0  c1ea03  SHR EDX,0x3
009aeaf3  03c9  ADD ECX,ECX
009aeaf5  2bca  SUB ECX,EDX
009aeaf7  b81f85eb51  MOV EAX,0x51eb851f
009aeafc  f7e7  MUL EDI
009aeafe  83c40c  ADD ESP,0xc
009aeb01  c1ea05  SHR EDX,0x5
009aeb04  03ca  ADD ECX,EDX
009aeb06  8d1489  LEA EDX,[ECX + ECX*0x4]
009aeb09  8d0457  LEA EAX,[EDI + EDX*0x2]
009aeb0c  5f  POP EDI
009aeb0d  89460c  MOV dword ptr [ESI + 0xc],EAX
009aeb10  5e  POP ESI
009aeb11  5b  POP EBX
009aeb12  81c470060000  ADD ESP,0x670
009aeb18  c20400  RET 0x4
009aeb1b  e89010b5ff  CALL 0x004ffbb0
009aeb20  83c40c  ADD ESP,0xc
009aeb23  5f  POP EDI
009aeb24  89460c  MOV dword ptr [ESI + 0xc],EAX
009aeb27  5e  POP ESI
009aeb28  5b  POP EBX
009aeb29  81c470060000  ADD ESP,0x670
009aeb2f  c20400  RET 0x4
009aeb32  5f  POP EDI
009aeb33  891e  MOV dword ptr [ESI],EBX
009aeb35  895e04  MOV dword ptr [ESI + 0x4],EBX
009aeb38  895e08  MOV dword ptr [ESI + 0x8],EBX
009aeb3b  895e0c  MOV dword ptr [ESI + 0xc],EBX
009aeb3e  5e  POP ESI
009aeb3f  5b  POP EBX
009aeb40  81c470060000  ADD ESP,0x670
009aeb46  c20400  RET 0x4
Owned instructions=126 owned bytes=422 gap/nonowned bytes=3
