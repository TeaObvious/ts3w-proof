# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580c50 (World_LotSetTerrainHeightImpl)
Paired Ghidra pseudocode: 10580C50_World_LotSetTerrainHeightImpl.c
Window: [0x10580c50, 0x10580c80) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580c50: d9 44 24 14 8b 44 24 08 8b 4c 24 04 83 ec 0c d9
10580c60: 5c 24 08 d9 44 24 1c d9 5c 24 04 d9 44 24 18 d9
10580c70: 1c 24 50 51 e8 d7 af ff ff 83 c4 14 c3 cc cc cc

LINEAR DISASSEMBLY
10580c50 <.text+0x57fc50>:
10580c50:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10580c54:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10580c58:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580c5c:	83 ec 0c                                        	sub    esp,0xc
10580c5f:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10580c63:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10580c67:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10580c6b:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10580c6f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10580c72:	50                                              	push   eax
10580c73:	51                                              	push   ecx
10580c74:	e8 d7 af ff ff                                  	call   0x1057bc50
10580c79:	83 c4 14                                        	add    esp,0x14
10580c7c:	c3                                              	ret
10580c7d:	cc                                              	int3
10580c7e:	cc                                              	int3
10580c7f:	cc                                              	int3
