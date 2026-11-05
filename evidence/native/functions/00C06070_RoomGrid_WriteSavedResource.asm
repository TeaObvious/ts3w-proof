# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: RoomGrid_WriteSavedResource
Paired actual annotated Ghidra pseudocode: 00C06070_RoomGrid_WriteSavedResource.c
Owned ranges: [[00c06070, 00c0610d]]
Envelope bytes=158

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00c06070  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c06074  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00c06078  83ec10  SUB ESP,0x10
00c0607b  56  PUSH ESI
00c0607c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c06080  57  PUSH EDI
00c06081  50  PUSH EAX
00c06082  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00c06086  52  PUSH EDX
00c06087  8bf9  MOV EDI,ECX
00c06089  8b4f14  MOV ECX,dword ptr [EDI + 0x14]
00c0608c  50  PUSH EAX
00c0608d  56  PUSH ESI
00c0608e  e8ed770600  CALL 0x00c6d880
00c06093  84c0  TEST AL,AL
00c06095  746c  JZ 0x00c06103
00c06097  8d4c2408  LEA ECX,[ESP + 0x8]
00c0609b  51  PUSH ECX
00c0609c  8b4f14  MOV ECX,dword ptr [EDI + 0x14]
00c0609f  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
00c060a7  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00c060af  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00c060b7  c7442418a4480701  MOV dword ptr [ESP + 0x18],0x10748a4
00c060bf  e84cd4e9ff  CALL 0x00aa3510
00c060c4  8b7c2408  MOV EDI,dword ptr [ESP + 0x8]
00c060c8  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c060cc  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c060cf  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c060d2  2bc7  SUB EAX,EDI
00c060d4  c1f803  SAR EAX,0x3
00c060d7  52  PUSH EDX
00c060d8  03c0  ADD EAX,EAX
00c060da  03c0  ADD EAX,EAX
00c060dc  50  PUSH EAX
00c060dd  57  PUSH EDI
00c060de  51  PUSH ECX
00c060df  e87c7e8dff  CALL 0x004ddf60
00c060e4  83c410  ADD ESP,0x10
00c060e7  8bce  MOV ECX,ESI
00c060e9  50  PUSH EAX
00c060ea  e80119bdff  CALL 0x007d79f0
00c060ef  8bce  MOV ECX,ESI
00c060f1  e87a19bdff  CALL 0x007d7a70
00c060f6  85ff  TEST EDI,EDI
00c060f8  7409  JZ 0x00c06103
00c060fa  57  PUSH EDI
00c060fb  e8e0e38dff  CALL 0x004e44e0
00c06100  83c404  ADD ESP,0x4
00c06103  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c06106  5f  POP EDI
00c06107  5e  POP ESI
00c06108  83c410  ADD ESP,0x10
00c0610b  c21000  RET 0x10
Owned instructions=53 owned bytes=158 gap/nonowned bytes=0
