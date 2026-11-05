# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsEventFilters_RemoveFirstExact
Paired actual annotated Ghidra pseudocode: 00801870_SacsEventFilters_RemoveFirstExact.c
Owned ranges: [[00801870, 008018d0]]
Envelope bytes=97

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00801870  56  PUSH ESI
00801871  8bf1  MOV ESI,ECX
00801873  8b8630010000  MOV EAX,dword ptr [ESI + 0x130]
00801879  8b8e34010000  MOV ECX,dword ptr [ESI + 0x134]
0080187f  3bc1  CMP EAX,ECX
00801881  744a  JZ 0x008018cd
00801883  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00801887  53  PUSH EBX
00801888  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
0080188c  57  PUSH EDI
0080188d  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00801891  3918  CMP dword ptr [EAX],EBX
00801893  750a  JNZ 0x0080189f
00801895  397804  CMP dword ptr [EAX + 0x4],EDI
00801898  7505  JNZ 0x0080189f
0080189a  395008  CMP dword ptr [EAX + 0x8],EDX
0080189d  740d  JZ 0x008018ac
0080189f  83c010  ADD EAX,0x10
008018a2  3bc1  CMP EAX,ECX
008018a4  75eb  JNZ 0x00801891
008018a6  5f  POP EDI
008018a7  5b  POP EBX
008018a8  5e  POP ESI
008018a9  c21000  RET 0x10
008018ac  8b9634010000  MOV EDX,dword ptr [ESI + 0x134]
008018b2  8d4810  LEA ECX,[EAX + 0x10]
008018b5  3bca  CMP ECX,EDX
008018b7  730b  JNC 0x008018c4
008018b9  50  PUSH EAX
008018ba  52  PUSH EDX
008018bb  51  PUSH ECX
008018bc  e83fe6ffff  CALL 0x007fff00
008018c1  83c40c  ADD ESP,0xc
008018c4  838634010000f0  ADD dword ptr [ESI + 0x134],-0x10
008018cb  5f  POP EDI
008018cc  5b  POP EBX
008018cd  5e  POP ESI
008018ce  c21000  RET 0x10
Owned instructions=38 owned bytes=97 gap/nonowned bytes=0
