# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Inventory_CopyScriptTail
Paired actual annotated Ghidra pseudocode: 00994FF0_Inventory_CopyScriptTail.c
Owned ranges: [[00994ff0, 00995063]]
Envelope bytes=116

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00994ff0  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00994ff6  53  PUSH EBX
00994ff7  56  PUSH ESI
00994ff8  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00994ffc  6a00  PUSH 0x0
00994ffe  56  PUSH ESI
00994fff  e81c1fb5ff  CALL 0x004e6f20
00995004  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00995008  8bd8  MOV EBX,EAX
0099500a  8b01  MOV EAX,dword ptr [ECX]
0099500c  8b5030  MOV EDX,dword ptr [EAX + 0x30]
0099500f  56  PUSH ESI
00995010  53  PUSH EBX
00995011  ffd2  CALL EDX
00995013  3bc6  CMP EAX,ESI
00995015  7411  JZ 0x00995028
00995017  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
0099501d  53  PUSH EBX
0099501e  e84d0eb5ff  CALL 0x004e5e70
00995023  5e  POP ESI
00995024  32c0  XOR AL,AL
00995026  5b  POP EBX
00995027  c3  RET
00995028  55  PUSH EBP
00995029  8b6c241c  MOV EBP,dword ptr [ESP + 0x1c]
0099502d  57  PUSH EDI
0099502e  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00995032  8b07  MOV EAX,dword ptr [EDI]
00995034  8b9080000000  MOV EDX,dword ptr [EAX + 0x80]
0099503a  56  PUSH ESI
0099503b  55  PUSH EBP
0099503c  8bcf  MOV ECX,EDI
0099503e  ffd2  CALL EDX
00995040  8b07  MOV EAX,dword ptr [EDI]
00995042  8b9098000000  MOV EDX,dword ptr [EAX + 0x98]
00995048  56  PUSH ESI
00995049  6a00  PUSH 0x0
0099504b  53  PUSH EBX
0099504c  55  PUSH EBP
0099504d  8bcf  MOV ECX,EDI
0099504f  ffd2  CALL EDX
00995051  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00995057  53  PUSH EBX
00995058  e8130eb5ff  CALL 0x004e5e70
0099505d  5f  POP EDI
0099505e  5d  POP EBP
0099505f  5e  POP ESI
00995060  b001  MOV AL,0x1
00995062  5b  POP EBX
00995063  c3  RET
Owned instructions=50 owned bytes=116 gap/nonowned bytes=0
