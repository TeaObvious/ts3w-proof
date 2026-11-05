# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: PoolManager_WriteRoomObjectRow
Paired actual annotated Ghidra pseudocode: 00B68430_PoolManager_WriteRoomObjectRow.c
Owned ranges: [[00b68430, 00b684b3]]
Envelope bytes=132

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b68430  56  PUSH ESI
00b68431  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00b68435  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b68438  57  PUSH EDI
00b68439  8bf9  MOV EDI,ECX
00b6843b  0fb7470c  MOVZX EAX,word ptr [EDI + 0xc]
00b6843f  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b68442  51  PUSH ECX
00b68443  50  PUSH EAX
00b68444  52  PUSH EDX
00b68445  e8d65a97ff  CALL 0x004ddf20
00b6844a  83c40c  ADD ESP,0xc
00b6844d  8bce  MOV ECX,ESI
00b6844f  50  PUSH EAX
00b68450  e89bf5c6ff  CALL 0x007d79f0
00b68455  0fbe470a  MOVSX EAX,byte ptr [EDI + 0xa]
00b68459  0fbe4f0b  MOVSX ECX,byte ptr [EDI + 0xb]
00b6845d  0fbe5709  MOVSX EDX,byte ptr [EDI + 0x9]
00b68461  c1e008  SHL EAX,0x8
00b68464  03c1  ADD EAX,ECX
00b68466  0fbe4f08  MOVSX ECX,byte ptr [EDI + 0x8]
00b6846a  c1e008  SHL EAX,0x8
00b6846d  03c2  ADD EAX,EDX
00b6846f  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00b68472  c1e008  SHL EAX,0x8
00b68475  03c1  ADD EAX,ECX
00b68477  52  PUSH EDX
00b68478  50  PUSH EAX
00b68479  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b6847c  50  PUSH EAX
00b6847d  e8ee5a97ff  CALL 0x004ddf70
00b68482  83c40c  ADD ESP,0xc
00b68485  8bce  MOV ECX,ESI
00b68487  50  PUSH EAX
00b68488  e863f5c6ff  CALL 0x007d79f0
00b6848d  8b07  MOV EAX,dword ptr [EDI]
00b6848f  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b68492  8b7f04  MOV EDI,dword ptr [EDI + 0x4]
00b68495  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b68498  51  PUSH ECX
00b68499  57  PUSH EDI
00b6849a  50  PUSH EAX
00b6849b  52  PUSH EDX
00b6849c  e81f5c97ff  CALL 0x004de0c0
00b684a1  83c410  ADD ESP,0x10
00b684a4  8bce  MOV ECX,ESI
00b684a6  50  PUSH EAX
00b684a7  e844f5c6ff  CALL 0x007d79f0
00b684ac  8a4614  MOV AL,byte ptr [ESI + 0x14]
00b684af  5f  POP EDI
00b684b0  5e  POP ESI
00b684b1  c20400  RET 0x4
Owned instructions=52 owned bytes=132 gap/nonowned bytes=0
