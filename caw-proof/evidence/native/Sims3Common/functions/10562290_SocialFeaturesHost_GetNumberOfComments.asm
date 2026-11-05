# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562290 (SocialFeaturesHost_GetNumberOfComments)
Paired Ghidra pseudocode: 10562290_SocialFeaturesHost_GetNumberOfComments.c
Window: [0x10562290, 0x105622b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105622b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562290: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
105622a0: 08 51 52 50 e8 d7 c0 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10562290 <.text+0x561290>:
10562290:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562294:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562298:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056229c:	50                                              	push   eax
1056229d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105622a1:	51                                              	push   ecx
105622a2:	52                                              	push   edx
105622a3:	50                                              	push   eax
105622a4:	e8 d7 c0 2a 00                                  	call   0x1080e380
105622a9:	83 c4 10                                        	add    esp,0x10
105622ac:	c3                                              	ret
105622ad:	cc                                              	int3
105622ae:	cc                                              	int3
105622af:	cc                                              	int3
