# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562310 (SocialFeaturesHost_GetCommentAuthorImage)
Paired Ghidra pseudocode: 10562310_SocialFeaturesHost_GetCommentAuthorImage.c
Window: [0x10562310, 0x10562360) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562310: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 83 ec 10 50
10562320: 8b 44 24 24 51 8b 4c 24 24 52 8b 54 24 24 50 51
10562330: 52 8d 44 24 18 50 e8 c5 c1 2a 00 8b 4c 24 30 8b
10562340: 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89
10562350: 51 08 89 41 0c 8b c1 83 c4 2c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10562310 <.text+0x561310>:
10562310:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10562314:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10562318:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1056231c:	83 ec 10                                        	sub    esp,0x10
1056231f:	50                                              	push   eax
10562320:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10562324:	51                                              	push   ecx
10562325:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10562329:	52                                              	push   edx
1056232a:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1056232e:	50                                              	push   eax
1056232f:	51                                              	push   ecx
10562330:	52                                              	push   edx
10562331:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10562335:	50                                              	push   eax
10562336:	e8 c5 c1 2a 00                                  	call   0x1080e500
1056233b:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1056233f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10562341:	89 11                                           	mov    DWORD PTR [ecx],edx
10562343:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10562346:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10562349:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056234c:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1056234f:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10562352:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10562355:	8b c1                                           	mov    eax,ecx
10562357:	83 c4 2c                                        	add    esp,0x2c
1056235a:	c3                                              	ret
1056235b:	cc                                              	int3
1056235c:	cc                                              	int3
1056235d:	cc                                              	int3
1056235e:	cc                                              	int3
1056235f:	cc                                              	int3
