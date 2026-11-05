# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer DesignPreset_InitializeEmpty(void * this)
Owned ranges: [[005bfac0, 005bfb2e]]

005bfac0  8bc1  MOV EAX,ECX
005bfac2  c700143cfb00  MOV dword ptr [EAX],0xfb3c14
005bfac8  33c9  XOR ECX,ECX
005bfaca  8d5004  LEA EDX,[EAX + 0x4]
005bfacd  870a  XCHG dword ptr [EDX],ECX
005bfacf  33c9  XOR ECX,ECX
005bfad1  894808  MOV dword ptr [EAX + 0x8],ECX
005bfad4  89480c  MOV dword ptr [EAX + 0xc],ECX
005bfad7  894810  MOV dword ptr [EAX + 0x10],ECX
005bfada  894814  MOV dword ptr [EAX + 0x14],ECX
005bfadd  894820  MOV dword ptr [EAX + 0x20],ECX
005bfae0  894824  MOV dword ptr [EAX + 0x24],ECX
005bfae3  89481c  MOV dword ptr [EAX + 0x1c],ECX
005bfae6  894818  MOV dword ptr [EAX + 0x18],ECX
005bfae9  c700003bfe00  MOV dword ptr [EAX],0xfe3b00
005bfaef  894828  MOV dword ptr [EAX + 0x28],ECX
005bfaf2  c74038d83afe00  MOV dword ptr [EAX + 0x38],0xfe3ad8
005bfaf9  c74034568e1c01  MOV dword ptr [EAX + 0x34],0x11c8e56
005bfb00  ba548e1c01  MOV EDX,0x11c8e54
005bfb05  89502c  MOV dword ptr [EAX + 0x2c],EDX
005bfb08  895030  MOV dword ptr [EAX + 0x30],EDX
005bfb0b  89483c  MOV dword ptr [EAX + 0x3c],ECX
005bfb0e  894840  MOV dword ptr [EAX + 0x40],ECX
005bfb11  894844  MOV dword ptr [EAX + 0x44],ECX
005bfb14  c74048a83afe00  MOV dword ptr [EAX + 0x48],0xfe3aa8
005bfb1b  c7405c02000000  MOV dword ptr [EAX + 0x5c],0x2
005bfb22  89484c  MOV dword ptr [EAX + 0x4c],ECX
005bfb25  894850  MOV dword ptr [EAX + 0x50],ECX
005bfb28  894854  MOV dword ptr [EAX + 0x54],ECX
005bfb2b  894858  MOV dword ptr [EAX + 0x58],ECX
005bfb2e  c3  RET
