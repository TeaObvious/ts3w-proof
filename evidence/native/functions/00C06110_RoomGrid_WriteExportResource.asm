# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: RoomGrid_WriteExportResource
Paired actual annotated Ghidra pseudocode: 00C06110_RoomGrid_WriteExportResource.c
Owned ranges: [[00c06110, 00c061ad]]
Envelope bytes=158

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00c06110  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c06114  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00c06118  83ec10  SUB ESP,0x10
00c0611b  56  PUSH ESI
00c0611c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c06120  57  PUSH EDI
00c06121  50  PUSH EAX
00c06122  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00c06126  52  PUSH EDX
00c06127  8bf9  MOV EDI,ECX
00c06129  8b4f14  MOV ECX,dword ptr [EDI + 0x14]
00c0612c  50  PUSH EAX
00c0612d  56  PUSH ESI
00c0612e  e84d770600  CALL 0x00c6d880
00c06133  84c0  TEST AL,AL
00c06135  746c  JZ 0x00c061a3
00c06137  8d4c2408  LEA ECX,[ESP + 0x8]
00c0613b  51  PUSH ECX
00c0613c  8b4f14  MOV ECX,dword ptr [EDI + 0x14]
00c0613f  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
00c06147  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00c0614f  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00c06157  c7442418c0480701  MOV dword ptr [ESP + 0x18],0x10748c0
00c0615f  e8acd3e9ff  CALL 0x00aa3510
00c06164  8b7c2408  MOV EDI,dword ptr [ESP + 0x8]
00c06168  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c0616c  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c0616f  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c06172  2bc7  SUB EAX,EDI
00c06174  c1f803  SAR EAX,0x3
00c06177  52  PUSH EDX
00c06178  03c0  ADD EAX,EAX
00c0617a  03c0  ADD EAX,EAX
00c0617c  50  PUSH EAX
00c0617d  57  PUSH EDI
00c0617e  51  PUSH ECX
00c0617f  e8dc7d8dff  CALL 0x004ddf60
00c06184  83c410  ADD ESP,0x10
00c06187  8bce  MOV ECX,ESI
00c06189  50  PUSH EAX
00c0618a  e86118bdff  CALL 0x007d79f0
00c0618f  8bce  MOV ECX,ESI
00c06191  e8da18bdff  CALL 0x007d7a70
00c06196  85ff  TEST EDI,EDI
00c06198  7409  JZ 0x00c061a3
00c0619a  57  PUSH EDI
00c0619b  e840e38dff  CALL 0x004e44e0
00c061a0  83c404  ADD ESP,0x4
00c061a3  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c061a6  5f  POP EDI
00c061a7  5e  POP ESI
00c061a8  83c410  ADD ESP,0x10
00c061ab  c21000  RET 0x10
Owned instructions=53 owned bytes=158 gap/nonowned bytes=0
