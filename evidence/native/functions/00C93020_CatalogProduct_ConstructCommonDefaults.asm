# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C93020_CatalogProduct_ConstructCommonDefaults.c
Owned ranges: [[00c93020, 00c930e6]]

00c93020  8bc1  MOV EAX,ECX
00c93022  c700143cfb00  MOV dword ptr [EAX],0xfb3c14
00c93028  33c9  XOR ECX,ECX
00c9302a  8d5004  LEA EDX,[EAX + 0x4]
00c9302d  870a  XCHG dword ptr [EDX],ECX
00c9302f  0f57c0  XORPS XMM0,XMM0
00c93032  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00c9303a  33c9  XOR ECX,ECX
00c9303c  894808  MOV dword ptr [EAX + 0x8],ECX
00c9303f  89480c  MOV dword ptr [EAX + 0xc],ECX
00c93042  894810  MOV dword ptr [EAX + 0x10],ECX
00c93045  894814  MOV dword ptr [EAX + 0x14],ECX
00c93048  894820  MOV dword ptr [EAX + 0x20],ECX
00c9304b  894824  MOV dword ptr [EAX + 0x24],ECX
00c9304e  89481c  MOV dword ptr [EAX + 0x1c],ECX
00c93051  894818  MOV dword ptr [EAX + 0x18],ECX
00c93054  c70050ca0701  MOV dword ptr [EAX],0x107ca50
00c9305a  c7402825232284  MOV dword ptr [EAX + 0x28],0x84222325
00c93061  c7403025232284  MOV dword ptr [EAX + 0x30],0x84222325
00c93068  bae49cf2cb  MOV EDX,0xcbf29ce4
00c9306d  89502c  MOV dword ptr [EAX + 0x2c],EDX
00c93070  895034  MOV dword ptr [EAX + 0x34],EDX
00c93073  c7404430ca0701  MOV dword ptr [EAX + 0x44],0x107ca30
00c9307a  c74040568e1c01  MOV dword ptr [EAX + 0x40],0x11c8e56
00c93081  ba548e1c01  MOV EDX,0x11c8e54
00c93086  895038  MOV dword ptr [EAX + 0x38],EDX
00c93089  89503c  MOV dword ptr [EAX + 0x3c],EDX
00c9308c  c7405410ca0701  MOV dword ptr [EAX + 0x54],0x107ca10
00c93093  895048  MOV dword ptr [EAX + 0x48],EDX
00c93096  89504c  MOV dword ptr [EAX + 0x4c],EDX
00c93099  c74050568e1c01  MOV dword ptr [EAX + 0x50],0x11c8e56
00c930a0  ba01000000  MOV EDX,0x1
00c930a5  f30f114058  MOVSS dword ptr [EAX + 0x58],XMM0
00c930aa  f30f11485c  MOVSS dword ptr [EAX + 0x5c],XMM1
00c930af  f30f114060  MOVSS dword ptr [EAX + 0x60],XMM0
00c930b4  894868  MOV dword ptr [EAX + 0x68],ECX
00c930b7  89486c  MOV dword ptr [EAX + 0x6c],ECX
00c930ba  f30f114070  MOVSS dword ptr [EAX + 0x70],XMM0
00c930bf  884874  MOV byte ptr [EAX + 0x74],CL
00c930c2  895078  MOV dword ptr [EAX + 0x78],EDX
00c930c5  89487c  MOV dword ptr [EAX + 0x7c],ECX
00c930c8  898880000000  MOV dword ptr [EAX + 0x80],ECX
00c930ce  889084000000  MOV byte ptr [EAX + 0x84],DL
00c930d4  889085000000  MOV byte ptr [EAX + 0x85],DL
00c930da  888886000000  MOV byte ptr [EAX + 0x86],CL
00c930e0  888887000000  MOV byte ptr [EAX + 0x87],CL
00c930e6  c3  RET
