# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00c69e30, 00c69eb7]]
Actual pseudocode: 00C69E30_WorldManager_HasPendingLotDetail.c
; Actual plate: Analyst: PC 1.67 map/lot detail contract. Rebuild dirty buckets, performs camera-side preparatory call if applicable, then scans requested-detail lots. Returns low-byte true when lot+c2 iszero or streaming query00700c20(worldmanager,lotGuid,-1) returns true. When none qualify, low byte false; upper EAX bits are undefined residue and must not be interpreted as UInt32 truth. The exact complete resource/residency meaning of+c2 and streaming query is not established by this bounded review.

00c69e30  53  PUSH EBX
00c69e31  55  PUSH EBP
00c69e32  56  PUSH ESI
00c69e33  8bf1  MOV ESI,ECX
00c69e35  80becc01000000  CMP byte ptr [ESI + 0x1cc],0x0
00c69e3c  57  PUSH EDI
00c69e3d  7405  JZ 0x00c69e44
00c69e3f  e87ce6ffff  CALL 0x00c684c0
00c69e44  e827e3a7ff  CALL 0x006e8170
00c69e49  85c0  TEST EAX,EAX
00c69e4b  7412  JZ 0x00c69e5f
00c69e4d  80b89d02000000  CMP byte ptr [EAX + 0x29d],0x0
00c69e54  7509  JNZ 0x00c69e5f
00c69e56  6a00  PUSH 0x0
00c69e58  8bc8  MOV ECX,EAX
00c69e5a  e8c19ca8ff  CALL 0x006f3b20
00c69e5f  e87c3da9ff  CALL 0x006fdbe0
00c69e64  8bbe04020000  MOV EDI,dword ptr [ESI + 0x204]
00c69e6a  8bae08020000  MOV EBP,dword ptr [ESI + 0x208]
00c69e70  3bfd  CMP EDI,EBP
00c69e72  8bd8  MOV EBX,EAX
00c69e74  7434  JZ 0x00c69eaa
00c69e76  8b37  MOV ESI,dword ptr [EDI]
00c69e78  8bce  MOV ECX,ESI
00c69e7a  e87160e4ff  CALL 0x00aafef0
00c69e7f  84c0  TEST AL,AL
00c69e81  7420  JZ 0x00c69ea3
00c69e83  8bce  MOV ECX,ESI
00c69e85  e896960d00  CALL 0x00d43520
00c69e8a  84c0  TEST AL,AL
00c69e8c  7423  JZ 0x00c69eb1
00c69e8e  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00c69e91  8b764c  MOV ESI,dword ptr [ESI + 0x4c]
00c69e94  6aff  PUSH -0x1
00c69e96  56  PUSH ESI
00c69e97  50  PUSH EAX
00c69e98  8bcb  MOV ECX,EBX
00c69e9a  e8816da9ff  CALL 0x00700c20
00c69e9f  84c0  TEST AL,AL
00c69ea1  750e  JNZ 0x00c69eb1
00c69ea3  83c704  ADD EDI,0x4
00c69ea6  3bfd  CMP EDI,EBP
00c69ea8  75cc  JNZ 0x00c69e76
00c69eaa  5f  POP EDI
00c69eab  5e  POP ESI
00c69eac  5d  POP EBP
00c69ead  32c0  XOR AL,AL
00c69eaf  5b  POP EBX
00c69eb0  c3  RET
00c69eb1  5f  POP EDI
00c69eb2  5e  POP ESI
00c69eb3  5d  POP EBP
00c69eb4  b001  MOV AL,0x1
00c69eb6  5b  POP EBX
00c69eb7  c3  RET
