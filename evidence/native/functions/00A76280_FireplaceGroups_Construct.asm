# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FireplaceGroups_Construct(undefined4 * param_1)
Owned ranges: [[00a76280, 00a762c2]]

00a76280  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00a76288  8bc1  MOV EAX,ECX
00a7628a  c700cc270601  MOV dword ptr [EAX],0x10627cc
00a76290  f30f114014  MOVSS dword ptr [EAX + 0x14],XMM0
00a76295  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00a7629d  f30f114018  MOVSS dword ptr [EAX + 0x18],XMM0
00a762a2  c74020a4270601  MOV dword ptr [EAX + 0x20],0x10627a4
00a762a9  33c9  XOR ECX,ECX
00a762ab  c7400c01000000  MOV dword ptr [EAX + 0xc],0x1
00a762b2  c7400800d91401  MOV dword ptr [EAX + 0x8],0x114d900
00a762b9  894810  MOV dword ptr [EAX + 0x10],ECX
00a762bc  89481c  MOV dword ptr [EAX + 0x1c],ECX
00a762bf  894824  MOV dword ptr [EAX + 0x24],ECX
00a762c2  c3  RET
