# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105620f0 (SocialFeaturesHost_GetNumberOfLikes)
Paired Ghidra pseudocode: 105620F0_SocialFeaturesHost_GetNumberOfLikes.c
Window: [0x105620f0, 0x10562110) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105620f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562100: 08 51 52 50 e8 07 be 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105620f0 <.text+0x5610f0>:
105620f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105620f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105620f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105620fc:	50                                              	push   eax
105620fd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562101:	51                                              	push   ecx
10562102:	52                                              	push   edx
10562103:	50                                              	push   eax
10562104:	e8 07 be 2a 00                                  	call   0x1080df10
10562109:	83 c4 10                                        	add    esp,0x10
1056210c:	c3                                              	ret
1056210d:	cc                                              	int3
1056210e:	cc                                              	int3
1056210f:	cc                                              	int3
