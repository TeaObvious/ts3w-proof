# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980590 (AnimationComponent_SetRig)
Paired Ghidra pseudocode: 10980590_AnimationComponent_SetRig.c
Window: [0x10980590, 0x109805d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109805d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980590: 83 ec 10 8b 44 24 18 8b 48 08 8b 50 0c 89 0c 24
109805a0: 8b 48 04 89 54 24 04 8b 10 6a 01 8d 44 24 04 89
109805b0: 4c 24 10 8b 4c 24 18 50 89 54 24 10 e8 ff 09 db
109805c0: ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980590 <.text+0x97f590>:
10980590:	83 ec 10                                        	sub    esp,0x10
10980593:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10980597:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098059a:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098059d:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
109805a0:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
109805a3:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
109805a7:	8b 10                                           	mov    edx,DWORD PTR [eax]
109805a9:	6a 01                                           	push   0x1
109805ab:	8d 44 24 04                                     	lea    eax,[esp+0x4]
109805af:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
109805b3:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109805b7:	50                                              	push   eax
109805b8:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
109805bc:	e8 ff 09 db ff                                  	call   0x10730fc0
109805c1:	83 c4 10                                        	add    esp,0x10
109805c4:	c3                                              	ret
109805c5:	cc                                              	int3
109805c6:	cc                                              	int3
109805c7:	cc                                              	int3
109805c8:	cc                                              	int3
109805c9:	cc                                              	int3
109805ca:	cc                                              	int3
109805cb:	cc                                              	int3
109805cc:	cc                                              	int3
109805cd:	cc                                              	int3
109805ce:	cc                                              	int3
109805cf:	cc                                              	int3
