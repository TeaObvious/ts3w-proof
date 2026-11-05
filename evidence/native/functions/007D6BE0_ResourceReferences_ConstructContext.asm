# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ResourceReferences_ConstructContext
Paired actual annotated Ghidra pseudocode: 007D6BE0_ResourceReferences_ConstructContext.c
Owned ranges: [[007d6be0, 007d6c87]]
Envelope bytes=168

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d6be0  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
007d6be8  f30f100d88fd0301  MOVSS XMM1,dword ptr [0x0103fd88]
007d6bf0  8bc1  MOV EAX,ECX
007d6bf2  f30f114010  MOVSS dword ptr [EAX + 0x10],XMM0
007d6bf7  f30f114814  MOVSS dword ptr [EAX + 0x14],XMM1
007d6bfc  c7401c40b50101  MOV dword ptr [EAX + 0x1c],0x101b540
007d6c03  33c9  XOR ECX,ECX
007d6c05  89480c  MOV dword ptr [EAX + 0xc],ECX
007d6c08  894818  MOV dword ptr [EAX + 0x18],ECX
007d6c0b  ba01000000  MOV EDX,0x1
007d6c10  895008  MOV dword ptr [EAX + 0x8],EDX
007d6c13  56  PUSH ESI
007d6c14  be00d91401  MOV ESI,0x114d900
007d6c19  897004  MOV dword ptr [EAX + 0x4],ESI
007d6c1c  f30f114030  MOVSS dword ptr [EAX + 0x30],XMM0
007d6c21  f30f114834  MOVSS dword ptr [EAX + 0x34],XMM1
007d6c26  c7403c0cb50101  MOV dword ptr [EAX + 0x3c],0x101b50c
007d6c2d  897024  MOV dword ptr [EAX + 0x24],ESI
007d6c30  89482c  MOV dword ptr [EAX + 0x2c],ECX
007d6c33  894838  MOV dword ptr [EAX + 0x38],ECX
007d6c36  895028  MOV dword ptr [EAX + 0x28],EDX
007d6c39  f30f114050  MOVSS dword ptr [EAX + 0x50],XMM0
007d6c3e  f30f114854  MOVSS dword ptr [EAX + 0x54],XMM1
007d6c43  c7405cd4b40101  MOV dword ptr [EAX + 0x5c],0x101b4d4
007d6c4a  897044  MOV dword ptr [EAX + 0x44],ESI
007d6c4d  89484c  MOV dword ptr [EAX + 0x4c],ECX
007d6c50  894858  MOV dword ptr [EAX + 0x58],ECX
007d6c53  895048  MOV dword ptr [EAX + 0x48],EDX
007d6c56  f30f114070  MOVSS dword ptr [EAX + 0x70],XMM0
007d6c5b  f30f114874  MOVSS dword ptr [EAX + 0x74],XMM1
007d6c60  c7407ca0b40101  MOV dword ptr [EAX + 0x7c],0x101b4a0
007d6c67  89486c  MOV dword ptr [EAX + 0x6c],ECX
007d6c6a  894878  MOV dword ptr [EAX + 0x78],ECX
007d6c6d  8a4c2408  MOV CL,byte ptr [ESP + 0x8]
007d6c71  897064  MOV dword ptr [EAX + 0x64],ESI
007d6c74  895068  MOV dword ptr [EAX + 0x68],EDX
007d6c77  66899080000000  MOV word ptr [EAX + 0x80],DX
007d6c7e  888882000000  MOV byte ptr [EAX + 0x82],CL
007d6c84  5e  POP ESI
007d6c85  c20400  RET 0x4
Owned instructions=40 owned bytes=168 gap/nonowned bytes=0
