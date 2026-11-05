# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105378a0 (OnlineFeaturesHost_GetAvailableEntitlements)
Paired Ghidra pseudocode: 105378A0_OnlineFeaturesHost_GetAvailableEntitlements.c
Window: [0x105378a0, 0x105378e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105378e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105378a0: 68 88 88 c7 10 ff 15 c0 b2 aa 10 a1 80 88 c7 10
105378b0: 85 c0 74 19 83 78 30 02 75 13 56 8b 70 2c 68 88
105378c0: 88 c7 10 ff 15 bc b2 aa 10 8b c6 5e c3 68 88 88
105378d0: c7 10 ff 15 bc b2 aa 10 33 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105378a0 <.text+0x5368a0>:
105378a0:	68 88 88 c7 10                                  	push   0x10c78888
105378a5:	ff 15 c0 b2 aa 10                               	call   DWORD PTR ds:0x10aab2c0
105378ab:	a1 80 88 c7 10                                  	mov    eax,ds:0x10c78880
105378b0:	85 c0                                           	test   eax,eax
105378b2:	74 19                                           	je     0x105378cd
105378b4:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
105378b8:	75 13                                           	jne    0x105378cd
105378ba:	56                                              	push   esi
105378bb:	8b 70 2c                                        	mov    esi,DWORD PTR [eax+0x2c]
105378be:	68 88 88 c7 10                                  	push   0x10c78888
105378c3:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
105378c9:	8b c6                                           	mov    eax,esi
105378cb:	5e                                              	pop    esi
105378cc:	c3                                              	ret
105378cd:	68 88 88 c7 10                                  	push   0x10c78888
105378d2:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
105378d8:	33 c0                                           	xor    eax,eax
105378da:	c3                                              	ret
105378db:	cc                                              	int3
105378dc:	cc                                              	int3
105378dd:	cc                                              	int3
105378de:	cc                                              	int3
105378df:	cc                                              	int3
