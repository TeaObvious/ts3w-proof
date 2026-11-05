# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562200 (SocialFeaturesHost_GetCommentUserLiked)
Paired Ghidra pseudocode: 10562200_SocialFeaturesHost_GetCommentUserLiked.c
Window: [0x10562200, 0x10562230) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562200: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10562210: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 bd
10562220: c0 2a 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562200 <.text+0x561200>:
10562200:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10562204:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10562208:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1056220c:	50                                              	push   eax
1056220d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562211:	51                                              	push   ecx
10562212:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10562216:	52                                              	push   edx
10562217:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1056221b:	50                                              	push   eax
1056221c:	51                                              	push   ecx
1056221d:	52                                              	push   edx
1056221e:	e8 bd c0 2a 00                                  	call   0x1080e2e0
10562223:	83 c4 18                                        	add    esp,0x18
10562226:	c3                                              	ret
10562227:	cc                                              	int3
10562228:	cc                                              	int3
10562229:	cc                                              	int3
1056222a:	cc                                              	int3
1056222b:	cc                                              	int3
1056222c:	cc                                              	int3
1056222d:	cc                                              	int3
1056222e:	cc                                              	int3
1056222f:	cc                                              	int3
