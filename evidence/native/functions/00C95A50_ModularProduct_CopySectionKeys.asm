# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ModularProduct_CopySectionKeys
Paired actual annotated Ghidra pseudocode: 00C95A50_ModularProduct_CopySectionKeys.c
Owned ranges: [[00c95a50, 00c95a68]]
Envelope bytes=25

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00c95a50  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c95a54  8b512c  MOV EDX,dword ptr [ECX + 0x2c]
00c95a57  50  PUSH EAX
00c95a58  8b4128  MOV EAX,dword ptr [ECX + 0x28]
00c95a5b  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c95a5f  52  PUSH EDX
00c95a60  50  PUSH EAX
00c95a61  e8ba828dff  CALL 0x0056dd20
00c95a66  c20400  RET 0x4
Owned instructions=9 owned bytes=25 gap/nonowned bytes=0
