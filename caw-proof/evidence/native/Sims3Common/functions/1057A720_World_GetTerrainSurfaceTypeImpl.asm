# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a720 (World_GetTerrainSurfaceTypeImpl)
Paired Ghidra pseudocode: 1057A720_World_GetTerrainSurfaceTypeImpl.c
Window: [0x1057a720, 0x1057a750) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a720: 8b 0d c4 00 c7 10 85 c9 74 22 8b 44 24 0c d9 44
1057a730: 24 08 68 ff ff 00 00 50 83 ec 08 d9 5c 24 04 d9
1057a740: 44 24 14 d9 1c 24 e8 c5 62 cc ff c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1057a720 <.text+0x579720>:
1057a720:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a726:	85 c9                                           	test   ecx,ecx
1057a728:	74 22                                           	je     0x1057a74c
1057a72a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057a72e:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1057a732:	68 ff ff 00 00                                  	push   0xffff
1057a737:	50                                              	push   eax
1057a738:	83 ec 08                                        	sub    esp,0x8
1057a73b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1057a73f:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1057a743:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057a746:	e8 c5 62 cc ff                                  	call   0x10240a10
1057a74b:	c3                                              	ret
1057a74c:	33 c0                                           	xor    eax,eax
1057a74e:	c3                                              	ret
1057a74f:	cc                                              	int3
