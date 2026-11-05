# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537930 (OnlineFeaturesHost_GetSharingInfoStatus)
Paired Ghidra pseudocode: 10537930_OnlineFeaturesHost_GetSharingInfoStatus.c
Window: [0x10537930, 0x10537970) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537930: 56 68 88 88 c7 10 ff 15 c0 b2 aa 10 a1 80 88 c7
10537940: 10 85 c0 74 12 8b 70 30 68 88 88 c7 10 ff 15 bc
10537950: b2 aa 10 8b c6 5e c3 68 88 88 c7 10 33 f6 ff 15
10537960: bc b2 aa 10 8b c6 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537930 <.text+0x536930>:
10537930:	56                                              	push   esi
10537931:	68 88 88 c7 10                                  	push   0x10c78888
10537936:	ff 15 c0 b2 aa 10                               	call   DWORD PTR ds:0x10aab2c0
1053793c:	a1 80 88 c7 10                                  	mov    eax,ds:0x10c78880
10537941:	85 c0                                           	test   eax,eax
10537943:	74 12                                           	je     0x10537957
10537945:	8b 70 30                                        	mov    esi,DWORD PTR [eax+0x30]
10537948:	68 88 88 c7 10                                  	push   0x10c78888
1053794d:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
10537953:	8b c6                                           	mov    eax,esi
10537955:	5e                                              	pop    esi
10537956:	c3                                              	ret
10537957:	68 88 88 c7 10                                  	push   0x10c78888
1053795c:	33 f6                                           	xor    esi,esi
1053795e:	ff 15 bc b2 aa 10                               	call   DWORD PTR ds:0x10aab2bc
10537964:	8b c6                                           	mov    eax,esi
10537966:	5e                                              	pop    esi
10537967:	c3                                              	ret
10537968:	cc                                              	int3
10537969:	cc                                              	int3
1053796a:	cc                                              	int3
1053796b:	cc                                              	int3
1053796c:	cc                                              	int3
1053796d:	cc                                              	int3
1053796e:	cc                                              	int3
1053796f:	cc                                              	int3
