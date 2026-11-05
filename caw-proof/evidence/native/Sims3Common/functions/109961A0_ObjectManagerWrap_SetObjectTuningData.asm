# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109961a0 (ObjectManagerWrap_SetObjectTuningData)
Paired Ghidra pseudocode: 109961A0_ObjectManagerWrap_SetObjectTuningData.c
Window: [0x109961a0, 0x109961d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109961d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109961a0: 8b 4c 24 04 85 c9 74 1b 8b 54 24 10 8d 44 24 14
109961b0: 50 52 8d 44 24 10 50 e8 94 11 8b ff 84 c0 74 03
109961c0: b0 01 c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109961a0 <.text+0x9951a0>:
109961a0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109961a4:	85 c9                                           	test   ecx,ecx
109961a6:	74 1b                                           	je     0x109961c3
109961a8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
109961ac:	8d 44 24 14                                     	lea    eax,[esp+0x14]
109961b0:	50                                              	push   eax
109961b1:	52                                              	push   edx
109961b2:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109961b6:	50                                              	push   eax
109961b7:	e8 94 11 8b ff                                  	call   0x10247350
109961bc:	84 c0                                           	test   al,al
109961be:	74 03                                           	je     0x109961c3
109961c0:	b0 01                                           	mov    al,0x1
109961c2:	c3                                              	ret
109961c3:	32 c0                                           	xor    al,al
109961c5:	c3                                              	ret
109961c6:	cc                                              	int3
109961c7:	cc                                              	int3
109961c8:	cc                                              	int3
109961c9:	cc                                              	int3
109961ca:	cc                                              	int3
109961cb:	cc                                              	int3
109961cc:	cc                                              	int3
109961cd:	cc                                              	int3
109961ce:	cc                                              	int3
109961cf:	cc                                              	int3
