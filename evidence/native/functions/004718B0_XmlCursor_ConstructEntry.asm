# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlCursor_ConstructEntry
Owned ranges: [[004718b0, 004718b8]]
Signature: void * __thiscall XmlCursor_ConstructEntry(void * stream, ushort * sourceLabel, void * allocator)
Physical ABI: ECX cursor; stack+4 stream,+8 optional UTF16 label,+C allocator; returns EAX cursor through owned continuation RETC. This owned body has no RET.

004718b0  8b44240c  MOV EAX,dword ptr [ESP + 0xc] ; Load third physical stack input (allocator), save EBX, then zero EBX.
004718b4  53  PUSH EBX
004718b5  33db  XOR EBX,EBX
004718b7  3bc3  CMP EAX,EBX ; Fall through directly into separately owned718B9 with EAX allocator, EBX0 and allocator-comparison flags live. Do not merge owned boundaries.
