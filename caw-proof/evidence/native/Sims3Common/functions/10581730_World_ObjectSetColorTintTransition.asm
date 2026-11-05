# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581730 (World_ObjectSetColorTintTransition)
Paired Ghidra pseudocode: 10581730_World_ObjectSetColorTintTransition.c
Window: [0x10581730, 0x10581780) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581730: d9 44 24 24 8b 44 24 08 8b 4c 24 04 83 ec 1c d9
10581740: 5c 24 18 d9 44 24 3c d9 5c 24 14 d9 44 24 38 d9
10581750: 5c 24 10 d9 44 24 34 d9 5c 24 0c d9 44 24 30 d9
10581760: 5c 24 08 d9 44 24 2c d9 5c 24 04 d9 44 24 28 d9
10581770: 1c 24 50 51 e8 57 db ff ff 83 c4 24 c3 cc cc cc

LINEAR DISASSEMBLY
10581730 <.text+0x580730>:
10581730:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10581734:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581738:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1058173c:	83 ec 1c                                        	sub    esp,0x1c
1058173f:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
10581743:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
10581747:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
1058174b:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
1058174f:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
10581753:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
10581757:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1058175b:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
1058175f:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10581763:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
10581767:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1058176b:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
1058176f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10581772:	50                                              	push   eax
10581773:	51                                              	push   ecx
10581774:	e8 57 db ff ff                                  	call   0x1057f2d0
10581779:	83 c4 24                                        	add    esp,0x24
1058177c:	c3                                              	ret
1058177d:	cc                                              	int3
1058177e:	cc                                              	int3
1058177f:	cc                                              	int3
