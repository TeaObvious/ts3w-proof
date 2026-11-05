# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a910 (World_LotSetDisplayLevelImpl)
Paired Ghidra pseudocode: 1057A910_World_LotSetDisplayLevelImpl.c
Window: [0x1057a910, 0x1057a950) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a910: 8b 0d c4 00 c7 10 85 c9 74 27 8b 44 24 08 8b 54
1057a920: 24 04 6a 00 50 52 e8 e5 c6 cb ff 85 c0 74 12 8b
1057a930: 4c 24 0c 6a 00 6a 01 6a 00 51 8b c8 e8 cf a7 b0
1057a940: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057a910 <.text+0x579910>:
1057a910:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a916:	85 c9                                           	test   ecx,ecx
1057a918:	74 27                                           	je     0x1057a941
1057a91a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057a91e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057a922:	6a 00                                           	push   0x0
1057a924:	50                                              	push   eax
1057a925:	52                                              	push   edx
1057a926:	e8 e5 c6 cb ff                                  	call   0x10237010
1057a92b:	85 c0                                           	test   eax,eax
1057a92d:	74 12                                           	je     0x1057a941
1057a92f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057a933:	6a 00                                           	push   0x0
1057a935:	6a 01                                           	push   0x1
1057a937:	6a 00                                           	push   0x0
1057a939:	51                                              	push   ecx
1057a93a:	8b c8                                           	mov    ecx,eax
1057a93c:	e8 cf a7 b0 ff                                  	call   0x10085110
1057a941:	c3                                              	ret
1057a942:	cc                                              	int3
1057a943:	cc                                              	int3
1057a944:	cc                                              	int3
1057a945:	cc                                              	int3
1057a946:	cc                                              	int3
1057a947:	cc                                              	int3
1057a948:	cc                                              	int3
1057a949:	cc                                              	int3
1057a94a:	cc                                              	int3
1057a94b:	cc                                              	int3
1057a94c:	cc                                              	int3
1057a94d:	cc                                              	int3
1057a94e:	cc                                              	int3
1057a94f:	cc                                              	int3
