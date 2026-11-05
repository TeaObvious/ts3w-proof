# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ObjectLocation_CopyXZLevel(void * this, undefined4 * param_1, undefined4 * param_2, undefined4 * param_3)
Owned ranges: [[00c894e0, 00c894fd]]

00c894e0  d94110  FLD float ptr [ECX + 0x10]
00c894e3  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c894e7  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c894eb  d918  FSTP float ptr [EAX]
00c894ed  d94114  FLD float ptr [ECX + 0x14]
00c894f0  d91a  FSTP float ptr [EDX]
00c894f2  8b4118  MOV EAX,dword ptr [ECX + 0x18]
00c894f5  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c894f9  8901  MOV dword ptr [ECX],EAX
00c894fb  c20c00  RET 0xc
