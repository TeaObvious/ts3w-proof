# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: RoutingPolygonFootprint_WritePayload
Paired actual annotated Ghidra pseudocode: 0080DDF0_RoutingPolygonFootprint_WritePayload.c
Owned ranges: [[0080ddf0, 0080de70]]
Envelope bytes=129

GHIDRA LISTING (original bytes; nonowned gaps explicit)
0080ddf0  51  PUSH ECX
0080ddf1  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0080ddf5  56  PUSH ESI
0080ddf6  57  PUSH EDI
0080ddf7  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
0080ddfb  50  PUSH EAX
0080ddfc  8bf1  MOV ESI,ECX
0080ddfe  57  PUSH EDI
0080ddff  89742410  MOV dword ptr [ESP + 0x10],ESI
0080de03  e8b893ffff  CALL 0x008071c0
0080de08  84c0  TEST AL,AL
0080de0a  7506  JNZ 0x0080de12
0080de0c  5f  POP EDI
0080de0d  5e  POP ESI
0080de0e  59  POP ECX
0080de0f  c20800  RET 0x8
0080de12  8b16  MOV EDX,dword ptr [ESI]
0080de14  8b02  MOV EAX,dword ptr [EDX]
0080de16  53  PUSH EBX
0080de17  55  PUSH EBP
0080de18  8bce  MOV ECX,ESI
0080de1a  ffd0  CALL EAX
0080de1c  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
0080de1f  8b5708  MOV EDX,dword ptr [EDI + 0x8]
0080de22  51  PUSH ECX
0080de23  8bf0  MOV ESI,EAX
0080de25  56  PUSH ESI
0080de26  52  PUSH EDX
0080de27  e84401cdff  CALL 0x004ddf70
0080de2c  83c40c  ADD ESP,0xc
0080de2f  8bcf  MOV ECX,EDI
0080de31  50  PUSH EAX
0080de32  e8b99bfcff  CALL 0x007d79f0
0080de37  33db  XOR EBX,EBX
0080de39  85f6  TEST ESI,ESI
0080de3b  7620  JBE 0x0080de5d
0080de3d  33ed  XOR EBP,EBP
0080de3f  90  NOP
0080de40  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0080de44  8b4838  MOV ECX,dword ptr [EAX + 0x38]
0080de47  03cd  ADD ECX,EBP
0080de49  57  PUSH EDI
0080de4a  e8d1ae0000  CALL 0x00818d20
0080de4f  84c0  TEST AL,AL
0080de51  7414  JZ 0x0080de67
0080de53  83c301  ADD EBX,0x1
0080de56  83c524  ADD EBP,0x24
0080de59  3bde  CMP EBX,ESI
0080de5b  72e3  JC 0x0080de40
0080de5d  5d  POP EBP
0080de5e  5b  POP EBX
0080de5f  5f  POP EDI
0080de60  b001  MOV AL,0x1
0080de62  5e  POP ESI
0080de63  59  POP ECX
0080de64  c20800  RET 0x8
0080de67  5d  POP EBP
0080de68  5b  POP EBX
0080de69  5f  POP EDI
0080de6a  32c0  XOR AL,AL
0080de6c  5e  POP ESI
0080de6d  59  POP ECX
0080de6e  c20800  RET 0x8
Owned instructions=63 owned bytes=129 nonowned bytes=0
