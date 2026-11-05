# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654730 (Audio_SetSoundPropertyImpl)
Paired Ghidra pseudocode: 10654730_Audio_SetSoundPropertyImpl.c
Window: [0x10654730, 0x10654750) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654730: d9 44 24 0c 8b 44 24 08 6a 01 51 8b 4c 24 0c d9
10654740: 1c 24 50 51 e8 07 ff ff ff 83 c4 10 b0 01 c3 cc

LINEAR DISASSEMBLY
10654730 <.text+0x653730>:
10654730:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10654734:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10654738:	6a 01                                           	push   0x1
1065473a:	51                                              	push   ecx
1065473b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1065473f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10654742:	50                                              	push   eax
10654743:	51                                              	push   ecx
10654744:	e8 07 ff ff ff                                  	call   0x10654650
10654749:	83 c4 10                                        	add    esp,0x10
1065474c:	b0 01                                           	mov    al,0x1
1065474e:	c3                                              	ret
1065474f:	cc                                              	int3
