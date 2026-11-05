# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a9c0 (World_LotDoAutoRoofImpl)
Paired Ghidra pseudocode: 1057A9C0_World_LotDoAutoRoofImpl.c
Window: [0x1057a9c0, 0x1057aa00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aa00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a9c0: 8b 0d c4 00 c7 10 85 c9 74 26 8b 44 24 08 8b 54
1057a9d0: 24 04 6a 00 50 52 e8 35 c6 cb ff 85 c0 74 11 8b
1057a9e0: 80 ac 02 00 00 85 c0 74 07 8b c8 e9 60 37 fe ff
1057a9f0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057a9c0 <.text+0x5799c0>:
1057a9c0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a9c6:	85 c9                                           	test   ecx,ecx
1057a9c8:	74 26                                           	je     0x1057a9f0
1057a9ca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057a9ce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057a9d2:	6a 00                                           	push   0x0
1057a9d4:	50                                              	push   eax
1057a9d5:	52                                              	push   edx
1057a9d6:	e8 35 c6 cb ff                                  	call   0x10237010
1057a9db:	85 c0                                           	test   eax,eax
1057a9dd:	74 11                                           	je     0x1057a9f0
1057a9df:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
1057a9e5:	85 c0                                           	test   eax,eax
1057a9e7:	74 07                                           	je     0x1057a9f0
1057a9e9:	8b c8                                           	mov    ecx,eax
1057a9eb:	e9 60 37 fe ff                                  	jmp    0x1055e150
1057a9f0:	c3                                              	ret
1057a9f1:	cc                                              	int3
1057a9f2:	cc                                              	int3
1057a9f3:	cc                                              	int3
1057a9f4:	cc                                              	int3
1057a9f5:	cc                                              	int3
1057a9f6:	cc                                              	int3
1057a9f7:	cc                                              	int3
1057a9f8:	cc                                              	int3
1057a9f9:	cc                                              	int3
1057a9fa:	cc                                              	int3
1057a9fb:	cc                                              	int3
1057a9fc:	cc                                              	int3
1057a9fd:	cc                                              	int3
1057a9fe:	cc                                              	int3
1057a9ff:	cc                                              	int3
