# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562470 (SocialFeaturesHost_MarkGiftPostAsAccepted)
Paired Ghidra pseudocode: 10562470_SocialFeaturesHost_MarkGiftPostAsAccepted.c
Window: [0x10562470, 0x10562490) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562470: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562480: 08 51 52 50 e8 67 c6 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10562470 <.text+0x561470>:
10562470:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562474:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562478:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056247c:	50                                              	push   eax
1056247d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562481:	51                                              	push   ecx
10562482:	52                                              	push   edx
10562483:	50                                              	push   eax
10562484:	e8 67 c6 2a 00                                  	call   0x1080eaf0
10562489:	83 c4 10                                        	add    esp,0x10
1056248c:	c3                                              	ret
1056248d:	cc                                              	int3
1056248e:	cc                                              	int3
1056248f:	cc                                              	int3
