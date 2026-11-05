# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlParser_CreateWithoutNamespace
Owned ranges: [[004c03a0, 004c03e3]]
Signature: void * __cdecl XmlParser_CreateWithoutNamespace(ushort * encoding)
Physical ABI: cdecl stack+4 encoding; EAX parser/null; plain RET. Clears EAX allocator and passes two null stack options.

004c03a0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004c03a4  56  PUSH ESI
004c03a5  6a00  PUSH 0x0 ; Pass null shared-context and null namespace separator; forward incoming encoding.
004c03a7  6a00  PUSH 0x0
004c03a9  50  PUSH EAX
004c03aa  33c0  XOR EAX,EAX ; Clear hidden EAX allocator input before calling4C0180.
004c03ac  e8cffdffff  CALL 0x004c0180
004c03b1  8bf0  MOV ESI,EAX
004c03b3  83c40c  ADD ESP,0xc
004c03b6  85f6  TEST ESI,ESI
004c03b8  7426  JZ 0x004c03e0
004c03ba  80beec00000000  CMP byte ptr [ESI + 0xec],0x0 ; Optional post-create namespace initialization is gated by parser+EC; the selected null-separator construction leaves it0.
004c03c1  741d  JZ 0x004c03e0
004c03c3  b8604efb00  MOV EAX,0xfb4e60
004c03c8  8bce  MOV ECX,ESI
004c03ca  e881c7ffff  CALL 0x004bcb50
004c03cf  84c0  TEST AL,AL
004c03d1  750d  JNZ 0x004c03e0
004c03d3  56  PUSH ESI
004c03d4  e8b7b4ffff  CALL 0x004bb890
004c03d9  83c404  ADD ESP,0x4
004c03dc  33c0  XOR EAX,EAX
004c03de  5e  POP ESI
004c03df  c3  RET
004c03e0  8bc6  MOV EAX,ESI
004c03e2  5e  POP ESI
004c03e3  c3  RET
