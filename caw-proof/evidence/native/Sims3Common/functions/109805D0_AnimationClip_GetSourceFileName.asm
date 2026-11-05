# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109805d0 (AnimationClip_GetSourceFileName)
Paired Ghidra pseudocode: 109805D0_AnimationClip_GetSourceFileName.c
Window: [0x109805d0, 0x10980600) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109805d0: 83 ec 10 8b 44 24 14 8b 48 08 8b 50 0c 89 0c 24
109805e0: 8b 48 04 89 54 24 04 8b 10 8d 04 24 50 89 4c 24
109805f0: 10 89 54 24 0c e8 46 36 db ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
109805d0 <.text+0x97f5d0>:
109805d0:	83 ec 10                                        	sub    esp,0x10
109805d3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109805d7:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
109805da:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
109805dd:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
109805e0:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
109805e3:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
109805e7:	8b 10                                           	mov    edx,DWORD PTR [eax]
109805e9:	8d 04 24                                        	lea    eax,[esp]
109805ec:	50                                              	push   eax
109805ed:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
109805f1:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
109805f5:	e8 46 36 db ff                                  	call   0x10733c40
109805fa:	83 c4 14                                        	add    esp,0x14
109805fd:	c3                                              	ret
109805fe:	cc                                              	int3
109805ff:	cc                                              	int3
