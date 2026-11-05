# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993890 (ITextureOp_GetOpData)
Paired Ghidra pseudocode: 10993890_ITextureOp_GetOpData.c
Window: [0x10993890, 0x109938b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109938b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993890: 8b 54 24 0c 8b 4c 24 04 8b 01 8b 40 3c 52 8b 54
109938a0: 24 0c 52 ff d0 2c 01 f6 d8 1b c0 83 c0 01 c3 cc

LINEAR DISASSEMBLY
10993890 <.text+0x992890>:
10993890:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10993894:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993898:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1099389a:	8b 40 3c                                        	mov    eax,DWORD PTR [eax+0x3c]
1099389d:	52                                              	push   edx
1099389e:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109938a2:	52                                              	push   edx
109938a3:	ff d0                                           	call   eax
109938a5:	2c 01                                           	sub    al,0x1
109938a7:	f6 d8                                           	neg    al
109938a9:	1b c0                                           	sbb    eax,eax
109938ab:	83 c0 01                                        	add    eax,0x1
109938ae:	c3                                              	ret
109938af:	cc                                              	int3
