# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105623b0 (SocialFeaturesHost_GetGiftPostGiftRequiredEP)
Paired Ghidra pseudocode: 105623B0_SocialFeaturesHost_GetGiftPostGiftRequiredEP.c
Window: [0x105623b0, 0x105623d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105623d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105623b0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
105623c0: 08 51 52 50 e8 97 c5 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105623b0 <.text+0x5613b0>:
105623b0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105623b4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105623b8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105623bc:	50                                              	push   eax
105623bd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105623c1:	51                                              	push   ecx
105623c2:	52                                              	push   edx
105623c3:	50                                              	push   eax
105623c4:	e8 97 c5 2a 00                                  	call   0x1080e960
105623c9:	83 c4 10                                        	add    esp,0x10
105623cc:	c3                                              	ret
105623cd:	cc                                              	int3
105623ce:	cc                                              	int3
105623cf:	cc                                              	int3
