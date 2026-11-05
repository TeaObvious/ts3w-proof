# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105622e0 (SocialFeaturesHost_GetCommentNucleusID)
Paired Ghidra pseudocode: 105622E0_SocialFeaturesHost_GetCommentNucleusID.c
Window: [0x105622e0, 0x10562310) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105622e0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
105622f0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 0d
10562300: c1 2a 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105622e0 <.text+0x5612e0>:
105622e0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105622e4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105622e8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105622ec:	50                                              	push   eax
105622ed:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105622f1:	51                                              	push   ecx
105622f2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105622f6:	52                                              	push   edx
105622f7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105622fb:	50                                              	push   eax
105622fc:	51                                              	push   ecx
105622fd:	52                                              	push   edx
105622fe:	e8 0d c1 2a 00                                  	call   0x1080e410
10562303:	83 c4 18                                        	add    esp,0x18
10562306:	c3                                              	ret
10562307:	cc                                              	int3
10562308:	cc                                              	int3
10562309:	cc                                              	int3
1056230a:	cc                                              	int3
1056230b:	cc                                              	int3
1056230c:	cc                                              	int3
1056230d:	cc                                              	int3
1056230e:	cc                                              	int3
1056230f:	cc                                              	int3
