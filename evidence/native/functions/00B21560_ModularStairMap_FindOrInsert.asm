# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ModularStairMap_FindOrInsert
Paired actual annotated Ghidra pseudocode: 00B21560_ModularStairMap_FindOrInsert.c
Owned ranges: [[00b21560, 00b21624]]
Envelope bytes=197

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b21560  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00b21564  83ec08  SUB ESP,0x8
00b21567  53  PUSH EBX
00b21568  8b18  MOV EBX,dword ptr [EAX]
00b2156a  55  PUSH EBP
00b2156b  56  PUSH ESI
00b2156c  8bf1  MOV ESI,ECX
00b2156e  33d2  XOR EDX,EDX
00b21570  57  PUSH EDI
00b21571  8b7e08  MOV EDI,dword ptr [ESI + 0x8]
00b21574  8bc3  MOV EAX,EBX
00b21576  f7f7  DIV EDI
00b21578  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00b2157b  8bea  MOV EBP,EDX
00b2157d  8d14a9  LEA EDX,[ECX + EBP*0x4]
00b21580  8b0a  MOV ECX,dword ptr [EDX]
00b21582  85c9  TEST ECX,ECX
00b21584  7412  JZ 0x00b21598
00b21586  3b19  CMP EBX,dword ptr [ECX]
00b21588  0f8480000000  JZ 0x00b2160e
00b2158e  8b8980000000  MOV ECX,dword ptr [ECX + 0x80]
00b21594  85c9  TEST ECX,ECX
00b21596  75ee  JNZ 0x00b21586
00b21598  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00b2159b  6a01  PUSH 0x1
00b2159d  52  PUSH EDX
00b2159e  57  PUSH EDI
00b2159f  8d44241c  LEA EAX,[ESP + 0x1c]
00b215a3  50  PUSH EAX
00b215a4  8d4e10  LEA ECX,[ESI + 0x10]
00b215a7  e814f99bff  CALL 0x004e0ec0
00b215ac  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00b215b0  51  PUSH ECX
00b215b1  8bce  MOV ECX,ESI
00b215b3  e8d8ccffff  CALL 0x00b1e290
00b215b8  807c241000  CMP byte ptr [ESP + 0x10],0x0
00b215bd  8bf8  MOV EDI,EAX
00b215bf  7414  JZ 0x00b215d5
00b215c1  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00b215c5  33d2  XOR EDX,EDX
00b215c7  8bc3  MOV EAX,EBX
00b215c9  f7f1  DIV ECX
00b215cb  51  PUSH ECX
00b215cc  8bce  MOV ECX,ESI
00b215ce  8bea  MOV EBP,EDX
00b215d0  e88b9f1200  CALL 0x00c4b560
00b215d5  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b215d8  8d0cad00000000  LEA ECX,[EBP*0x4 + 0x0]
00b215df  8b0411  MOV EAX,dword ptr [ECX + EDX*0x1]
00b215e2  898780000000  MOV dword ptr [EDI + 0x80],EAX
00b215e8  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b215eb  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00b215ef  893c11  MOV dword ptr [ECX + EDX*0x1],EDI
00b215f2  83460c01  ADD dword ptr [ESI + 0xc],0x1
00b215f6  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b215f9  8938  MOV dword ptr [EAX],EDI
00b215fb  5f  POP EDI
00b215fc  5e  POP ESI
00b215fd  03d1  ADD EDX,ECX
00b215ff  5d  POP EBP
00b21600  c6400801  MOV byte ptr [EAX + 0x8],0x1
00b21604  895004  MOV dword ptr [EAX + 0x4],EDX
00b21607  5b  POP EBX
00b21608  83c408  ADD ESP,0x8
00b2160b  c20c00  RET 0xc
00b2160e  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00b21612  5f  POP EDI
00b21613  5e  POP ESI
00b21614  5d  POP EBP
00b21615  8908  MOV dword ptr [EAX],ECX
00b21617  c6400800  MOV byte ptr [EAX + 0x8],0x0
00b2161b  895004  MOV dword ptr [EAX + 0x4],EDX
00b2161e  5b  POP EBX
00b2161f  83c408  ADD ESP,0x8
00b21622  c20c00  RET 0xc
Owned instructions=75 owned bytes=197 gap/nonowned bytes=0
