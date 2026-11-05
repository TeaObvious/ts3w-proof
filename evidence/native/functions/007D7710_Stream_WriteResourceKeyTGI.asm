# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Stream_WriteResourceKeyTGI
Paired actual annotated Ghidra pseudocode: 007D7710_Stream_WriteResourceKeyTGI.c
Owned ranges: [[007d7710, 007d775d]]
Envelope bytes=78

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d7710  53  PUSH EBX
007d7711  55  PUSH EBP
007d7712  8b6c240c  MOV EBP,dword ptr [ESP + 0xc]
007d7716  56  PUSH ESI
007d7717  8b742418  MOV ESI,dword ptr [ESP + 0x18]
007d771b  57  PUSH EDI
007d771c  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
007d7720  8b4708  MOV EAX,dword ptr [EDI + 0x8]
007d7723  56  PUSH ESI
007d7724  50  PUSH EAX
007d7725  55  PUSH EBP
007d7726  e84568d0ff  CALL 0x004ddf70
007d772b  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
007d772e  56  PUSH ESI
007d772f  51  PUSH ECX
007d7730  8ad8  MOV BL,AL
007d7732  55  PUSH EBP
007d7733  80e301  AND BL,0x1
007d7736  e83568d0ff  CALL 0x004ddf70
007d773b  8b17  MOV EDX,dword ptr [EDI]
007d773d  56  PUSH ESI
007d773e  52  PUSH EDX
007d773f  55  PUSH EBP
007d7740  22d8  AND BL,AL
007d7742  e82968d0ff  CALL 0x004ddf70
007d7747  22d8  AND BL,AL
007d7749  8b4704  MOV EAX,dword ptr [EDI + 0x4]
007d774c  56  PUSH ESI
007d774d  50  PUSH EAX
007d774e  55  PUSH EBP
007d774f  e81c68d0ff  CALL 0x004ddf70
007d7754  83c430  ADD ESP,0x30
007d7757  5f  POP EDI
007d7758  5e  POP ESI
007d7759  5d  POP EBP
007d775a  22c3  AND AL,BL
007d775c  5b  POP EBX
007d775d  c3  RET
Owned instructions=38 owned bytes=78 gap/nonowned bytes=0
