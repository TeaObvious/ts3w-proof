# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566a10 (SocialFeaturesHost_GetCommentAuthor)
Paired Ghidra pseudocode: 10566A10_SocialFeaturesHost_GetCommentAuthor.c
Window: [0x10566a10, 0x10566a40) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566a10: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10566a20: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 ed
10566a30: dc ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566a10 <.text+0x565a10>:
10566a10:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10566a14:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10566a18:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10566a1c:	50                                              	push   eax
10566a1d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566a21:	51                                              	push   ecx
10566a22:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10566a26:	52                                              	push   edx
10566a27:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10566a2b:	50                                              	push   eax
10566a2c:	51                                              	push   ecx
10566a2d:	52                                              	push   edx
10566a2e:	e8 ed dc ff ff                                  	call   0x10564720
10566a33:	83 c4 18                                        	add    esp,0x18
10566a36:	c3                                              	ret
10566a37:	cc                                              	int3
10566a38:	cc                                              	int3
10566a39:	cc                                              	int3
10566a3a:	cc                                              	int3
10566a3b:	cc                                              	int3
10566a3c:	cc                                              	int3
10566a3d:	cc                                              	int3
10566a3e:	cc                                              	int3
10566a3f:	cc                                              	int3
