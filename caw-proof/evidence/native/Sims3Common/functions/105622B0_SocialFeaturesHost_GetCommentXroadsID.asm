# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105622b0 (SocialFeaturesHost_GetCommentXroadsID)
Paired Ghidra pseudocode: 105622B0_SocialFeaturesHost_GetCommentXroadsID.c
Window: [0x105622b0, 0x105622e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105622e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105622b0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
105622c0: 0c 51 8b 4c 24 0c 52 50 51 e8 f2 c0 2a 00 83 c4
105622d0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105622b0 <.text+0x5612b0>:
105622b0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
105622b4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105622b8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
105622bc:	50                                              	push   eax
105622bd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105622c1:	51                                              	push   ecx
105622c2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105622c6:	52                                              	push   edx
105622c7:	50                                              	push   eax
105622c8:	51                                              	push   ecx
105622c9:	e8 f2 c0 2a 00                                  	call   0x1080e3c0
105622ce:	83 c4 14                                        	add    esp,0x14
105622d1:	c3                                              	ret
105622d2:	cc                                              	int3
105622d3:	cc                                              	int3
105622d4:	cc                                              	int3
105622d5:	cc                                              	int3
105622d6:	cc                                              	int3
105622d7:	cc                                              	int3
105622d8:	cc                                              	int3
105622d9:	cc                                              	int3
105622da:	cc                                              	int3
105622db:	cc                                              	int3
105622dc:	cc                                              	int3
105622dd:	cc                                              	int3
105622de:	cc                                              	int3
105622df:	cc                                              	int3
