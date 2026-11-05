# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578b60 (World_ArePointsInSameBodyOfWater)
Paired Ghidra pseudocode: 10578B60_World_ArePointsInSameBodyOfWater.c
Window: [0x10578b60, 0x10578bb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578b60: 56 e8 7a 1b 0a 00 8b f0 85 f6 74 3d 8b ce e8 dd
10578b70: 22 0a 00 85 c0 74 32 d9 44 24 1c 83 ec 10 d9 5c
10578b80: 24 0c 8b ce d9 44 24 24 d9 5c 24 08 d9 44 24 20
10578b90: d9 5c 24 04 d9 44 24 18 d9 1c 24 e8 b0 22 0a 00
10578ba0: 8b c8 e8 59 00 ed ff 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
10578b60 <.text+0x577b60>:
10578b60:	56                                              	push   esi
10578b61:	e8 7a 1b 0a 00                                  	call   0x1061a6e0
10578b66:	8b f0                                           	mov    esi,eax
10578b68:	85 f6                                           	test   esi,esi
10578b6a:	74 3d                                           	je     0x10578ba9
10578b6c:	8b ce                                           	mov    ecx,esi
10578b6e:	e8 dd 22 0a 00                                  	call   0x1061ae50
10578b73:	85 c0                                           	test   eax,eax
10578b75:	74 32                                           	je     0x10578ba9
10578b77:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10578b7b:	83 ec 10                                        	sub    esp,0x10
10578b7e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10578b82:	8b ce                                           	mov    ecx,esi
10578b84:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10578b88:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10578b8c:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
10578b90:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10578b94:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10578b98:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10578b9b:	e8 b0 22 0a 00                                  	call   0x1061ae50
10578ba0:	8b c8                                           	mov    ecx,eax
10578ba2:	e8 59 00 ed ff                                  	call   0x10448c00
10578ba7:	5e                                              	pop    esi
10578ba8:	c3                                              	ret
10578ba9:	32 c0                                           	xor    al,al
10578bab:	5e                                              	pop    esi
10578bac:	c3                                              	ret
10578bad:	cc                                              	int3
10578bae:	cc                                              	int3
10578baf:	cc                                              	int3
