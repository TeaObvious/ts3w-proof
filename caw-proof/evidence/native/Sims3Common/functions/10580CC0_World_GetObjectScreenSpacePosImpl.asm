# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580cc0 (World_GetObjectScreenSpacePosImpl)
Paired Ghidra pseudocode: 10580CC0_World_GetObjectScreenSpacePosImpl.c
Window: [0x10580cc0, 0x10580d00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580cc0: 8b 44 24 18 d9 44 24 14 8b 4c 24 08 8b 54 24 04
10580cd0: 50 83 ec 0c d9 5c 24 08 d9 44 24 20 d9 5c 24 04
10580ce0: d9 44 24 1c d9 1c 24 51 52 e8 82 b3 ff ff 83 c4
10580cf0: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580cc0 <.text+0x57fcc0>:
10580cc0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10580cc4:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10580cc8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10580ccc:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10580cd0:	50                                              	push   eax
10580cd1:	83 ec 0c                                        	sub    esp,0xc
10580cd4:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10580cd8:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
10580cdc:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10580ce0:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10580ce4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10580ce7:	51                                              	push   ecx
10580ce8:	52                                              	push   edx
10580ce9:	e8 82 b3 ff ff                                  	call   0x1057c070
10580cee:	83 c4 18                                        	add    esp,0x18
10580cf1:	c3                                              	ret
10580cf2:	cc                                              	int3
10580cf3:	cc                                              	int3
10580cf4:	cc                                              	int3
10580cf5:	cc                                              	int3
10580cf6:	cc                                              	int3
10580cf7:	cc                                              	int3
10580cf8:	cc                                              	int3
10580cf9:	cc                                              	int3
10580cfa:	cc                                              	int3
10580cfb:	cc                                              	int3
10580cfc:	cc                                              	int3
10580cfd:	cc                                              	int3
10580cfe:	cc                                              	int3
10580cff:	cc                                              	int3
