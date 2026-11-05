# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsListener_HasBlockingController
Paired actual annotated Ghidra pseudocode: 00804FB0_SacsListener_HasBlockingController.c
Owned ranges: [[00804fb0, 00804fdf]]
Envelope bytes=48

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00804fb0  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00804fb3  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00804fb6  7503  JNZ 0x00804fbb
00804fb8  32c0  XOR AL,AL
00804fba  c3  RET
00804fbb  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00804fbe  3bc2  CMP EAX,EDX
00804fc0  56  PUSH ESI
00804fc1  7415  JZ 0x00804fd8
00804fc3  80780d00  CMP byte ptr [EAX + 0xd],0x0
00804fc7  7513  JNZ 0x00804fdc
00804fc9  8b7008  MOV ESI,dword ptr [EAX + 0x8]
00804fcc  3b7114  CMP ESI,dword ptr [ECX + 0x14]
00804fcf  740b  JZ 0x00804fdc
00804fd1  83c018  ADD EAX,0x18
00804fd4  3bc2  CMP EAX,EDX
00804fd6  75eb  JNZ 0x00804fc3
00804fd8  32c0  XOR AL,AL
00804fda  5e  POP ESI
00804fdb  c3  RET
00804fdc  b001  MOV AL,0x1
00804fde  5e  POP ESI
00804fdf  c3  RET
Owned instructions=23 owned bytes=48 gap/nonowned bytes=0
