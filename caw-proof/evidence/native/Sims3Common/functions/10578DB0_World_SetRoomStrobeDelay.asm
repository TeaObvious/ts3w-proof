# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578db0 (World_SetRoomStrobeDelay)
Paired Ghidra pseudocode: 10578DB0_World_SetRoomStrobeDelay.c
Window: [0x10578db0, 0x10578e20) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578db0: e8 6b 23 fe ff 8b 0d c4 00 c7 10 85 c9 74 33 8b
10578dc0: 44 24 08 8b 54 24 04 6a 00 50 52 e8 40 e2 cb ff
10578dd0: 85 c0 74 1e 8b 80 98 02 00 00 85 c0 74 14 d9 44
10578de0: 24 10 51 8b 4c 24 10 d9 1c 24 51 8b c8 e8 fe ac
10578df0: b9 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
10578e00: e8 2b d0 d5 ff 8b c8 85 c9 74 07 8b 41 08 8b 51
10578e10: 0c c3 33 c0 33 d2 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578db0 <.text+0x577db0>:
10578db0:	e8 6b 23 fe ff                                  	call   0x1055b120
10578db5:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10578dbb:	85 c9                                           	test   ecx,ecx
10578dbd:	74 33                                           	je     0x10578df2
10578dbf:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10578dc3:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10578dc7:	6a 00                                           	push   0x0
10578dc9:	50                                              	push   eax
10578dca:	52                                              	push   edx
10578dcb:	e8 40 e2 cb ff                                  	call   0x10237010
10578dd0:	85 c0                                           	test   eax,eax
10578dd2:	74 1e                                           	je     0x10578df2
10578dd4:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
10578dda:	85 c0                                           	test   eax,eax
10578ddc:	74 14                                           	je     0x10578df2
10578dde:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10578de2:	51                                              	push   ecx
10578de3:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10578de7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10578dea:	51                                              	push   ecx
10578deb:	8b c8                                           	mov    ecx,eax
10578ded:	e8 fe ac b9 ff                                  	call   0x10113af0
10578df2:	c3                                              	ret
10578df3:	cc                                              	int3
10578df4:	cc                                              	int3
10578df5:	cc                                              	int3
10578df6:	cc                                              	int3
10578df7:	cc                                              	int3
10578df8:	cc                                              	int3
10578df9:	cc                                              	int3
10578dfa:	cc                                              	int3
10578dfb:	cc                                              	int3
10578dfc:	cc                                              	int3
10578dfd:	cc                                              	int3
10578dfe:	cc                                              	int3
10578dff:	cc                                              	int3
10578e00:	e8 2b d0 d5 ff                                  	call   0x102d5e30
10578e05:	8b c8                                           	mov    ecx,eax
10578e07:	85 c9                                           	test   ecx,ecx
10578e09:	74 07                                           	je     0x10578e12
10578e0b:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
10578e0e:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
10578e11:	c3                                              	ret
10578e12:	33 c0                                           	xor    eax,eax
10578e14:	33 d2                                           	xor    edx,edx
10578e16:	c3                                              	ret
10578e17:	cc                                              	int3
10578e18:	cc                                              	int3
10578e19:	cc                                              	int3
10578e1a:	cc                                              	int3
10578e1b:	cc                                              	int3
10578e1c:	cc                                              	int3
10578e1d:	cc                                              	int3
10578e1e:	cc                                              	int3
10578e1f:	cc                                              	int3
