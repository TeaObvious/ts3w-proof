# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105623f0 (SocialFeaturesHost_GetGiftPostGiftType)
Paired Ghidra pseudocode: 105623F0_SocialFeaturesHost_GetGiftPostGiftType.c
Window: [0x105623f0, 0x10562410) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105623f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562400: 08 51 52 50 e8 e7 c5 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105623f0 <.text+0x5613f0>:
105623f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105623f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105623f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105623fc:	50                                              	push   eax
105623fd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562401:	51                                              	push   ecx
10562402:	52                                              	push   edx
10562403:	50                                              	push   eax
10562404:	e8 e7 c5 2a 00                                  	call   0x1080e9f0
10562409:	83 c4 10                                        	add    esp,0x10
1056240c:	c3                                              	ret
1056240d:	cc                                              	int3
1056240e:	cc                                              	int3
1056240f:	cc                                              	int3
