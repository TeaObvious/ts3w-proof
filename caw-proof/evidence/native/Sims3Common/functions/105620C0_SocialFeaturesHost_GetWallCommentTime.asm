# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105620c0 (SocialFeaturesHost_GetWallCommentTime)
Paired Ghidra pseudocode: 105620C0_SocialFeaturesHost_GetWallCommentTime.c
Window: [0x105620c0, 0x105620f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105620f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105620c0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
105620d0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 6d
105620e0: bf 2a 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105620c0 <.text+0x5610c0>:
105620c0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105620c4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105620c8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105620cc:	50                                              	push   eax
105620cd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105620d1:	51                                              	push   ecx
105620d2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105620d6:	52                                              	push   edx
105620d7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105620db:	50                                              	push   eax
105620dc:	51                                              	push   ecx
105620dd:	52                                              	push   edx
105620de:	e8 6d bf 2a 00                                  	call   0x1080e050
105620e3:	83 c4 18                                        	add    esp,0x18
105620e6:	c3                                              	ret
105620e7:	cc                                              	int3
105620e8:	cc                                              	int3
105620e9:	cc                                              	int3
105620ea:	cc                                              	int3
105620eb:	cc                                              	int3
105620ec:	cc                                              	int3
105620ed:	cc                                              	int3
105620ee:	cc                                              	int3
105620ef:	cc                                              	int3
