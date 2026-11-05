# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105379c0 (OnlineFeaturesHost_GetNumberOfCustomMemoriesShared)
Paired Ghidra pseudocode: 105379C0_OnlineFeaturesHost_GetNumberOfCustomMemoriesShared.c
Window: [0x105379c0, 0x10537a00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105379c0: 56 68 88 88 c7 10 ff 15 c0 b2 aa 10 a1 80 88 c7
105379d0: 10 85 c0 74 18 83 78 30 02 75 12 8b 70 28 68 88
105379e0: 88 c7 10 ff 15 bc b2 aa 10 8b c6 5e c3 68 88 88
105379f0: c7 10 33 f6 ff 15 bc b2 aa 10 8b c6 5e c3 cc cc

LINEAR DISASSEMBLY
105379c0 <.text+0x5369c0>:
105379c0:	56                                              	push   esi
105379c1:	68 88 88 c7 10                                  	push   0x10c78888
105379c6:	ff 15 c0 b2 aa 10                               	call   DWORD PTR ds:0x10aab2c0
105379cc:	a1 80 88 c7 10                                  	mov    eax,ds:0x10c78880
105379d1:	85 c0                                           	test   eax,eax
105379d3:	74 18                                           	je     0x105379ed
105379d5:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
105379d9:	75 12                                           	jne    0x105379ed
105379db:	8b 70 28                                        	mov    esi,DWORD PTR [eax+0x28]
105379de:	68 88 88 c7 10                                  	push   0x10c78888
105379e3:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
105379e9:	8b c6                                           	mov    eax,esi
105379eb:	5e                                              	pop    esi
105379ec:	c3                                              	ret
105379ed:	68 88 88 c7 10                                  	push   0x10c78888
105379f2:	33 f6                                           	xor    esi,esi
105379f4:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
105379fa:	8b c6                                           	mov    eax,esi
105379fc:	5e                                              	pop    esi
105379fd:	c3                                              	ret
105379fe:	cc                                              	int3
105379ff:	cc                                              	int3
