# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aab0 (World_DoesFoundationExistOnLotImpl)
Paired Ghidra pseudocode: 1057AAB0_World_DoesFoundationExistOnLotImpl.c
Window: [0x1057aab0, 0x1057aae0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aab0: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057aac0: 24 04 6a 00 50 52 e8 45 c5 cb ff 85 c0 74 07 8b
1057aad0: c8 e9 0a 15 b0 ff 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aab0 <.text+0x579ab0>:
1057aab0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057aab6:	85 c9                                           	test   ecx,ecx
1057aab8:	74 1c                                           	je     0x1057aad6
1057aaba:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057aabe:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057aac2:	6a 00                                           	push   0x0
1057aac4:	50                                              	push   eax
1057aac5:	52                                              	push   edx
1057aac6:	e8 45 c5 cb ff                                  	call   0x10237010
1057aacb:	85 c0                                           	test   eax,eax
1057aacd:	74 07                                           	je     0x1057aad6
1057aacf:	8b c8                                           	mov    ecx,eax
1057aad1:	e9 0a 15 b0 ff                                  	jmp    0x1007bfe0
1057aad6:	32 c0                                           	xor    al,al
1057aad8:	c3                                              	ret
1057aad9:	cc                                              	int3
1057aada:	cc                                              	int3
1057aadb:	cc                                              	int3
1057aadc:	cc                                              	int3
1057aadd:	cc                                              	int3
1057aade:	cc                                              	int3
1057aadf:	cc                                              	int3
