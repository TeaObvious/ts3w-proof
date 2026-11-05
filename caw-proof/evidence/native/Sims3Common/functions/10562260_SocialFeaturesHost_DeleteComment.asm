# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562260 (SocialFeaturesHost_DeleteComment)
Paired Ghidra pseudocode: 10562260_SocialFeaturesHost_DeleteComment.c
Window: [0x10562260, 0x10562290) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562260: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10562270: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 ad
10562280: c0 2a 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562260 <.text+0x561260>:
10562260:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10562264:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10562268:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1056226c:	50                                              	push   eax
1056226d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562271:	51                                              	push   ecx
10562272:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10562276:	52                                              	push   edx
10562277:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1056227b:	50                                              	push   eax
1056227c:	51                                              	push   ecx
1056227d:	52                                              	push   edx
1056227e:	e8 ad c0 2a 00                                  	call   0x1080e330
10562283:	83 c4 18                                        	add    esp,0x18
10562286:	c3                                              	ret
10562287:	cc                                              	int3
10562288:	cc                                              	int3
10562289:	cc                                              	int3
1056228a:	cc                                              	int3
1056228b:	cc                                              	int3
1056228c:	cc                                              	int3
1056228d:	cc                                              	int3
1056228e:	cc                                              	int3
1056228f:	cc                                              	int3
