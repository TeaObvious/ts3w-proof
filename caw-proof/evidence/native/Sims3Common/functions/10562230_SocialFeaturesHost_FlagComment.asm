# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562230 (SocialFeaturesHost_FlagComment)
Paired Ghidra pseudocode: 10562230_SocialFeaturesHost_FlagComment.c
Window: [0x10562230, 0x10562260) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562230: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 8b 44 24
10562240: 14 51 8b 4c 24 14 52 8b 54 24 14 50 8b 44 24 14
10562250: 51 52 50 e8 38 bf 2a 00 83 c4 1c c3 cc cc cc cc

LINEAR DISASSEMBLY
10562230 <.text+0x561230>:
10562230:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10562234:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10562238:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1056223c:	50                                              	push   eax
1056223d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10562241:	51                                              	push   ecx
10562242:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10562246:	52                                              	push   edx
10562247:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1056224b:	50                                              	push   eax
1056224c:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10562250:	51                                              	push   ecx
10562251:	52                                              	push   edx
10562252:	50                                              	push   eax
10562253:	e8 38 bf 2a 00                                  	call   0x1080e190
10562258:	83 c4 1c                                        	add    esp,0x1c
1056225b:	c3                                              	ret
1056225c:	cc                                              	int3
1056225d:	cc                                              	int3
1056225e:	cc                                              	int3
1056225f:	cc                                              	int3
