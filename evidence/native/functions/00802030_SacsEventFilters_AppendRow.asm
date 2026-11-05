# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsEventFilters_AppendRow
Paired actual annotated Ghidra pseudocode: 00802030_SacsEventFilters_AppendRow.c
Owned ranges: [[00802030, 00802098]]
Envelope bytes=105

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00802030  83ec10  SUB ESP,0x10
00802033  8a442420  MOV AL,byte ptr [ESP + 0x20]
00802037  8b542414  MOV EDX,dword ptr [ESP + 0x14]
0080203b  56  PUSH ESI
0080203c  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00802040  81c130010000  ADD ECX,0x130
00802046  88442410  MOV byte ptr [ESP + 0x10],AL
0080204a  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0080204d  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00802050  57  PUSH EDI
00802051  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
00802055  89542408  MOV dword ptr [ESP + 0x8],EDX
00802059  8974240c  MOV dword ptr [ESP + 0xc],ESI
0080205d  897c2410  MOV dword ptr [ESP + 0x10],EDI
00802061  7323  JNC 0x00802086
00802063  85c0  TEST EAX,EAX
00802065  53  PUSH EBX
00802066  8d5810  LEA EBX,[EAX + 0x10]
00802069  895904  MOV dword ptr [ECX + 0x4],EBX
0080206c  5b  POP EBX
0080206d  7422  JZ 0x00802091
0080206f  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00802073  8910  MOV dword ptr [EAX],EDX
00802075  897004  MOV dword ptr [EAX + 0x4],ESI
00802078  897808  MOV dword ptr [EAX + 0x8],EDI
0080207b  5f  POP EDI
0080207c  89480c  MOV dword ptr [EAX + 0xc],ECX
0080207f  5e  POP ESI
00802080  83c410  ADD ESP,0x10
00802083  c21000  RET 0x10
00802086  8d542408  LEA EDX,[ESP + 0x8]
0080208a  52  PUSH EDX
0080208b  50  PUSH EAX
0080208c  e81f804c00  CALL 0x00cca0b0
00802091  5f  POP EDI
00802092  5e  POP ESI
00802093  83c410  ADD ESP,0x10
00802096  c21000  RET 0x10
Owned instructions=38 owned bytes=105 gap/nonowned bytes=0
