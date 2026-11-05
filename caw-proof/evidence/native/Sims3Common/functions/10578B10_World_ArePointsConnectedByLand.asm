# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578b10 (World_ArePointsConnectedByLand)
Paired Ghidra pseudocode: 10578B10_World_ArePointsConnectedByLand.c
Window: [0x10578b10, 0x10578b60) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578b60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578b10: 56 e8 ca 1b 0a 00 8b f0 85 f6 74 3d 8b ce e8 2d
10578b20: 23 0a 00 85 c0 74 32 d9 44 24 1c 83 ec 10 d9 5c
10578b30: 24 0c 8b ce d9 44 24 24 d9 5c 24 08 d9 44 24 20
10578b40: d9 5c 24 04 d9 44 24 18 d9 1c 24 e8 00 23 0a 00
10578b50: 8b c8 e8 29 cb ed ff 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
10578b10 <.text+0x577b10>:
10578b10:	56                                              	push   esi
10578b11:	e8 ca 1b 0a 00                                  	call   0x1061a6e0
10578b16:	8b f0                                           	mov    esi,eax
10578b18:	85 f6                                           	test   esi,esi
10578b1a:	74 3d                                           	je     0x10578b59
10578b1c:	8b ce                                           	mov    ecx,esi
10578b1e:	e8 2d 23 0a 00                                  	call   0x1061ae50
10578b23:	85 c0                                           	test   eax,eax
10578b25:	74 32                                           	je     0x10578b59
10578b27:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10578b2b:	83 ec 10                                        	sub    esp,0x10
10578b2e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10578b32:	8b ce                                           	mov    ecx,esi
10578b34:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10578b38:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10578b3c:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
10578b40:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10578b44:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10578b48:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10578b4b:	e8 00 23 0a 00                                  	call   0x1061ae50
10578b50:	8b c8                                           	mov    ecx,eax
10578b52:	e8 29 cb ed ff                                  	call   0x10455680
10578b57:	5e                                              	pop    esi
10578b58:	c3                                              	ret
10578b59:	32 c0                                           	xor    al,al
10578b5b:	5e                                              	pop    esi
10578b5c:	c3                                              	ret
10578b5d:	cc                                              	int3
10578b5e:	cc                                              	int3
10578b5f:	cc                                              	int3
