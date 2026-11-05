# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsCreatePropNode_ResolveResourceKey
Paired actual annotated Ghidra pseudocode: 007F5E00_SacsCreatePropNode_ResolveResourceKey.c
Owned ranges: [[007f5e00, 007f5e70]]
Envelope bytes=113

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f5e00  8b4158  MOV EAX,dword ptr [ECX + 0x58]
007f5e03  8b515c  MOV EDX,dword ptr [ECX + 0x5c]
007f5e06  56  PUSH ESI
007f5e07  8b742408  MOV ESI,dword ptr [ESP + 0x8]
007f5e0b  8906  MOV dword ptr [ESI],EAX
007f5e0d  8b4160  MOV EAX,dword ptr [ECX + 0x60]
007f5e10  895604  MOV dword ptr [ESI + 0x4],EDX
007f5e13  8b5164  MOV EDX,dword ptr [ECX + 0x64]
007f5e16  8b4954  MOV ECX,dword ptr [ECX + 0x54]
007f5e19  85c9  TEST ECX,ECX
007f5e1b  894608  MOV dword ptr [ESI + 0x8],EAX
007f5e1e  89560c  MOV dword ptr [ESI + 0xc],EDX
007f5e21  7438  JZ 0x007f5e5b
007f5e23  8b492c  MOV ECX,dword ptr [ECX + 0x2c]
007f5e26  57  PUSH EDI
007f5e27  51  PUSH ECX
007f5e28  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
007f5e2c  e82fddffff  CALL 0x007f3b60
007f5e31  8bf8  MOV EDI,EAX
007f5e33  85ff  TEST EDI,EDI
007f5e35  7423  JZ 0x007f5e5a
007f5e37  53  PUSH EBX
007f5e38  57  PUSH EDI
007f5e39  e882a2fdff  CALL 0x007d00c0
007f5e3e  8906  MOV dword ptr [ESI],EAX
007f5e40  b93f34dc02  MOV ECX,0x2dc343f
007f5e45  895604  MOV dword ptr [ESI + 0x4],EDX
007f5e48  33db  XOR EBX,EBX
007f5e4a  894e08  MOV dword ptr [ESI + 0x8],ECX
007f5e4d  57  PUSH EDI
007f5e4e  895e0c  MOV dword ptr [ESI + 0xc],EBX
007f5e51  e88ae6ceff  CALL 0x004e44e0
007f5e56  83c408  ADD ESP,0x8
007f5e59  5b  POP EBX
007f5e5a  5f  POP EDI
007f5e5b  817e0891759f13  CMP dword ptr [ESI + 0x8],0x139f7591
007f5e62  8bc6  MOV EAX,ESI
007f5e64  7507  JNZ 0x007f5e6d
007f5e66  c746083f34dc02  MOV dword ptr [ESI + 0x8],0x2dc343f
007f5e6d  5e  POP ESI
007f5e6e  c20800  RET 0x8
Owned instructions=41 owned bytes=113 gap/nonowned bytes=0
