# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105669e0 (SocialFeaturesHost_GetCommentText)
Paired Ghidra pseudocode: 105669E0_SocialFeaturesHost_GetCommentText.c
Window: [0x105669e0, 0x10566a10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105669e0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
105669f0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 3d
10566a00: dc ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105669e0 <.text+0x5659e0>:
105669e0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105669e4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105669e8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105669ec:	50                                              	push   eax
105669ed:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105669f1:	51                                              	push   ecx
105669f2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105669f6:	52                                              	push   edx
105669f7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105669fb:	50                                              	push   eax
105669fc:	51                                              	push   ecx
105669fd:	52                                              	push   edx
105669fe:	e8 3d dc ff ff                                  	call   0x10564640
10566a03:	83 c4 18                                        	add    esp,0x18
10566a06:	c3                                              	ret
10566a07:	cc                                              	int3
10566a08:	cc                                              	int3
10566a09:	cc                                              	int3
10566a0a:	cc                                              	int3
10566a0b:	cc                                              	int3
10566a0c:	cc                                              	int3
10566a0d:	cc                                              	int3
10566a0e:	cc                                              	int3
10566a0f:	cc                                              	int3
