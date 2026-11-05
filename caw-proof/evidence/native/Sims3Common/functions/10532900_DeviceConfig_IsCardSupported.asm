# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532900 (DeviceConfig_IsCardSupported)
Paired Ghidra pseudocode: 10532900_DeviceConfig_IsCardSupported.c
Window: [0x10532900, 0x10532940) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532900: 56 e8 8a 9a e5 ff 8b f0 85 f6 74 21 57 8b be ec
10532910: 02 00 00 ff 15 9c b0 aa 10 3b f8 5f 74 0a 6a ff
10532920: e8 2b b8 02 00 83 c4 04 8a 46 31 5e c3 32 c0 5e
10532930: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532900 <.text+0x531900>:
10532900:	56                                              	push   esi
10532901:	e8 8a 9a e5 ff                                  	call   0x1038c390
10532906:	8b f0                                           	mov    esi,eax
10532908:	85 f6                                           	test   esi,esi
1053290a:	74 21                                           	je     0x1053292d
1053290c:	57                                              	push   edi
1053290d:	8b be ec 02 00 00                               	mov    edi,DWORD PTR [esi+0x2ec]
10532913:	ff 15 9c b0 aa 10                               	call   DWORD PTR ds:0x10aab09c
10532919:	3b f8                                           	cmp    edi,eax
1053291b:	5f                                              	pop    edi
1053291c:	74 0a                                           	je     0x10532928
1053291e:	6a ff                                           	push   0xffffffff
10532920:	e8 2b b8 02 00                                  	call   0x1055e150
10532925:	83 c4 04                                        	add    esp,0x4
10532928:	8a 46 31                                        	mov    al,BYTE PTR [esi+0x31]
1053292b:	5e                                              	pop    esi
1053292c:	c3                                              	ret
1053292d:	32 c0                                           	xor    al,al
1053292f:	5e                                              	pop    esi
10532930:	c3                                              	ret
10532931:	cc                                              	int3
10532932:	cc                                              	int3
10532933:	cc                                              	int3
10532934:	cc                                              	int3
10532935:	cc                                              	int3
10532936:	cc                                              	int3
10532937:	cc                                              	int3
10532938:	cc                                              	int3
10532939:	cc                                              	int3
1053293a:	cc                                              	int3
1053293b:	cc                                              	int3
1053293c:	cc                                              	int3
1053293d:	cc                                              	int3
1053293e:	cc                                              	int3
1053293f:	cc                                              	int3
