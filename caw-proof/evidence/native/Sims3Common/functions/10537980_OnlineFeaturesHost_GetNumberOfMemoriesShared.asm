# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537980 (OnlineFeaturesHost_GetNumberOfMemoriesShared)
Paired Ghidra pseudocode: 10537980_OnlineFeaturesHost_GetNumberOfMemoriesShared.c
Window: [0x10537980, 0x105379c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105379c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537980: 56 68 88 88 c7 10 ff 15 c0 b2 aa 10 a1 80 88 c7
10537990: 10 85 c0 74 18 83 78 30 02 75 12 8b 70 24 68 88
105379a0: 88 c7 10 ff 15 bc b2 aa 10 8b c6 5e c3 68 88 88
105379b0: c7 10 33 f6 ff 15 bc b2 aa 10 8b c6 5e c3 cc cc

LINEAR DISASSEMBLY
10537980 <.text+0x536980>:
10537980:	56                                              	push   esi
10537981:	68 88 88 c7 10                                  	push   0x10c78888
10537986:	ff 15 c0 b2 aa 10                               	call   DWORD PTR ds:0x10aab2c0
1053798c:	a1 80 88 c7 10                                  	mov    eax,ds:0x10c78880
10537991:	85 c0                                           	test   eax,eax
10537993:	74 18                                           	je     0x105379ad
10537995:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
10537999:	75 12                                           	jne    0x105379ad
1053799b:	8b 70 24                                        	mov    esi,DWORD PTR [eax+0x24]
1053799e:	68 88 88 c7 10                                  	push   0x10c78888
105379a3:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
105379a9:	8b c6                                           	mov    eax,esi
105379ab:	5e                                              	pop    esi
105379ac:	c3                                              	ret
105379ad:	68 88 88 c7 10                                  	push   0x10c78888
105379b2:	33 f6                                           	xor    esi,esi
105379b4:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
105379ba:	8b c6                                           	mov    eax,esi
105379bc:	5e                                              	pop    esi
105379bd:	c3                                              	ret
105379be:	cc                                              	int3
105379bf:	cc                                              	int3
