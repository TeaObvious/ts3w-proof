# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlCursor_GetRawElementName
Owned ranges: [[00470f50, 00470f5d]]
Signature: ushort * __thiscall XmlCursor_GetRawElementName(void)
Physical ABI: ECX cursor; no stack words; EAX borrowed UTF16 name or null; plain RET.

00470f50  8b4148  MOV EAX,dword ptr [ECX + 0x48] ; Current token is cursor+48; this getter does not advance the cursor.
00470f53  85c0  TEST EAX,EAX
00470f55  7404  JZ 0x00470f5b
00470f57  8b4008  MOV EAX,dword ptr [EAX + 0x8] ; Return token+8 unchanged: full NUL-ended lexical name copied by OnStartElement, not a namespace LocalName.
00470f5a  c3  RET
00470f5b  33c0  XOR EAX,EAX
00470f5d  c3  RET
