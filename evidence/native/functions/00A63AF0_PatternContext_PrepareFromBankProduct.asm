# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: PatternContext_PrepareFromBankProduct
Paired actual annotated Ghidra pseudocode: 00A63AF0_PatternContext_PrepareFromBankProduct.c
Owned ranges: [[00a63af0, 00a63b1f]]
Envelope bytes=48

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00a63af0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a63af4  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00a63af8  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00a63afe  6a01  PUSH 0x1
00a63b00  50  PUSH EAX
00a63b01  52  PUSH EDX
00a63b02  e869af2200  CALL 0x00c8ea70
00a63b07  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00a63b0b  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00a63b0f  51  PUSH ECX
00a63b10  52  PUSH EDX
00a63b11  50  PUSH EAX
00a63b12  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00a63b16  50  PUSH EAX
00a63b17  e8f4ebffff  CALL 0x00a62710
00a63b1c  83c410  ADD ESP,0x10
00a63b1f  c3  RET
Owned instructions=17 owned bytes=48 nonowned bytes=0
