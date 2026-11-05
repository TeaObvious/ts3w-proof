# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ThumbnailCamera_InitializeSettings
Paired actual annotated Ghidra pseudocode: 00D4B580_ThumbnailCamera_InitializeSettings.c
Owned ranges: [[00d4b580, 00d4b647]]
Envelope bytes=200

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00d4b580  55  PUSH EBP
00d4b581  8bec  MOV EBP,ESP
00d4b583  83e4f0  AND ESP,0xfffffff0
00d4b586  83ec10  SUB ESP,0x10
00d4b589  0f57c0  XORPS XMM0,XMM0
00d4b58c  8bc1  MOV EAX,ECX
00d4b58e  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00d4b594  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00d4b59a  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00d4b5a0  f30f110424  MOVSS dword ptr [ESP],XMM0
00d4b5a5  0f280c24  MOVAPS XMM1,xmmword ptr [ESP]
00d4b5a9  0f2908  MOVAPS xmmword ptr [EAX],XMM1
00d4b5ac  f30f100d18b2fa00  MOVSS XMM1,dword ptr [0x00fab218]
00d4b5b4  f30f114c240c  MOVSS dword ptr [ESP + 0xc],XMM1
00d4b5ba  f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
00d4b5c0  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00d4b5c6  f30f110c24  MOVSS dword ptr [ESP],XMM1
00d4b5cb  0f280c24  MOVAPS XMM1,xmmword ptr [ESP]
00d4b5cf  0f294810  MOVAPS xmmword ptr [EAX + 0x10],XMM1
00d4b5d3  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00d4b5db  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00d4b5e1  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00d4b5e7  f30f110424  MOVSS dword ptr [ESP],XMM0
00d4b5ec  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00d4b5f2  0f280424  MOVAPS XMM0,xmmword ptr [ESP]
00d4b5f6  0f294020  MOVAPS xmmword ptr [EAX + 0x20],XMM0
00d4b5fa  f30f10057c480401  MOVSS XMM0,dword ptr [0x0104487c]
00d4b602  f30f114030  MOVSS dword ptr [EAX + 0x30],XMM0
00d4b607  f30f10058cabfa00  MOVSS XMM0,dword ptr [0x00faab8c]
00d4b60f  f30f114834  MOVSS dword ptr [EAX + 0x34],XMM1
00d4b614  f30f114038  MOVSS dword ptr [EAX + 0x38],XMM0
00d4b619  f30f10057499f900  MOVSS XMM0,dword ptr [0x00f99974]
00d4b621  f30f11403c  MOVSS dword ptr [EAX + 0x3c],XMM0
00d4b626  f30f100594adfa00  MOVSS XMM0,dword ptr [0x00faad94]
00d4b62e  33c9  XOR ECX,ECX
00d4b630  f30f114060  MOVSS dword ptr [EAX + 0x60],XMM0
00d4b635  f30f114864  MOVSS dword ptr [EAX + 0x64],XMM1
00d4b63a  894868  MOV dword ptr [EAX + 0x68],ECX
00d4b63d  c6406c01  MOV byte ptr [EAX + 0x6c],0x1
00d4b641  88486d  MOV byte ptr [EAX + 0x6d],CL
00d4b644  8be5  MOV ESP,EBP
00d4b646  5d  POP EBP
00d4b647  c3  RET
Owned instructions=43 owned bytes=200 gap/nonowned bytes=0
