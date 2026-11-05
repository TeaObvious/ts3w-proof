# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c3d40 (UserToolUtils_UserToolGenericImpl)
Paired Ghidra pseudocode: 102C3D40_UserToolUtils_UserToolGenericImpl.c
Window: [0x102c3d40, 0x102c3d90) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c3d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c3d40: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
102c3d50: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 5d
102c3d60: fc ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc
102c3d70: 8b 44 24 04 c7 00 e0 45 c1 10 c2 04 00 cc cc cc
102c3d80: c6 41 18 01 32 c0 c2 08 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c3d40 <.text+0x2c2d40>:
102c3d40:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
102c3d44:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
102c3d48:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
102c3d4c:	50                                              	push   eax
102c3d4d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102c3d51:	51                                              	push   ecx
102c3d52:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
102c3d56:	52                                              	push   edx
102c3d57:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
102c3d5b:	50                                              	push   eax
102c3d5c:	51                                              	push   ecx
102c3d5d:	52                                              	push   edx
102c3d5e:	e8 5d fc ff ff                                  	call   0x102c39c0
102c3d63:	83 c4 18                                        	add    esp,0x18
102c3d66:	c3                                              	ret
102c3d67:	cc                                              	int3
102c3d68:	cc                                              	int3
102c3d69:	cc                                              	int3
102c3d6a:	cc                                              	int3
102c3d6b:	cc                                              	int3
102c3d6c:	cc                                              	int3
102c3d6d:	cc                                              	int3
102c3d6e:	cc                                              	int3
102c3d6f:	cc                                              	int3
102c3d70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
102c3d74:	c7 00 e0 45 c1 10                               	mov    DWORD PTR [eax],0x10c145e0
102c3d7a:	c2 04 00                                        	ret    0x4
102c3d7d:	cc                                              	int3
102c3d7e:	cc                                              	int3
102c3d7f:	cc                                              	int3
102c3d80:	c6 41 18 01                                     	mov    BYTE PTR [ecx+0x18],0x1
102c3d84:	32 c0                                           	xor    al,al
102c3d86:	c2 08 00                                        	ret    0x8
102c3d89:	cc                                              	int3
102c3d8a:	cc                                              	int3
102c3d8b:	cc                                              	int3
102c3d8c:	cc                                              	int3
102c3d8d:	cc                                              	int3
102c3d8e:	cc                                              	int3
102c3d8f:	cc                                              	int3
