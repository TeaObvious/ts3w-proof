# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580d70 (World_LightSetColorImpl)
Paired Ghidra pseudocode: 10580D70_World_LightSetColorImpl.c
Window: [0x10580d70, 0x10580da0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580d70: d9 44 24 14 8b 44 24 08 8b 4c 24 04 83 ec 0c d9
10580d80: 5c 24 08 d9 44 24 1c d9 5c 24 04 d9 44 24 18 d9
10580d90: 1c 24 50 51 e8 f7 ba ff ff 83 c4 14 c3 cc cc cc

LINEAR DISASSEMBLY
10580d70 <.text+0x57fd70>:
10580d70:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10580d74:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10580d78:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580d7c:	83 ec 0c                                        	sub    esp,0xc
10580d7f:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10580d83:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10580d87:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10580d8b:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10580d8f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10580d92:	50                                              	push   eax
10580d93:	51                                              	push   ecx
10580d94:	e8 f7 ba ff ff                                  	call   0x1057c890
10580d99:	83 c4 14                                        	add    esp,0x14
10580d9c:	c3                                              	ret
10580d9d:	cc                                              	int3
10580d9e:	cc                                              	int3
10580d9f:	cc                                              	int3
