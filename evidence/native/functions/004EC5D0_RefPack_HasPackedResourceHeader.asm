# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004ec5d0, 004ec5ec]]
Signature: uint RefPack_HasPackedResourceHeader(ushort * header, uint ignoredSize)

004ec5d0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004ec5d4  668b08  MOV CX,word ptr [EAX]
004ec5d7  8af1  MOV DH,CL
004ec5d9  33c0  XOR EAX,EAX
004ec5db  8ad5  MOV DL,CH
004ec5dd  6681e2ff1f  AND DX,0x1fff
004ec5e2  6681fafb10  CMP DX,0x10fb
004ec5e7  0f94c0  SETZ AL
004ec5ea  c20800  RET 0x8
