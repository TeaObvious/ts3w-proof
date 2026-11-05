# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b7e0 (World_DoorLockStateChangedImpl)
Paired Ghidra pseudocode: 1057B7E0_World_DoorLockStateChangedImpl.c
Window: [0x1057b7e0, 0x1057b810) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b7e0: e8 bb e9 1a 00 8b 4c 24 08 8b 54 24 04 51 52 8b
1057b7f0: c8 e8 ba f3 1a 00 85 c0 74 14 80 7c 24 0c 00 74
1057b800: 0d 6a 01 50 6a 0d e8 e5 ca 1a 00 83 c4 0c c3 cc

LINEAR DISASSEMBLY
1057b7e0 <.text+0x57a7e0>:
1057b7e0:	e8 bb e9 1a 00                                  	call   0x1072a1a0
1057b7e5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057b7e9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b7ed:	51                                              	push   ecx
1057b7ee:	52                                              	push   edx
1057b7ef:	8b c8                                           	mov    ecx,eax
1057b7f1:	e8 ba f3 1a 00                                  	call   0x1072abb0
1057b7f6:	85 c0                                           	test   eax,eax
1057b7f8:	74 14                                           	je     0x1057b80e
1057b7fa:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
1057b7ff:	74 0d                                           	je     0x1057b80e
1057b801:	6a 01                                           	push   0x1
1057b803:	50                                              	push   eax
1057b804:	6a 0d                                           	push   0xd
1057b806:	e8 e5 ca 1a 00                                  	call   0x107282f0
1057b80b:	83 c4 0c                                        	add    esp,0xc
1057b80e:	c3                                              	ret
1057b80f:	cc                                              	int3
