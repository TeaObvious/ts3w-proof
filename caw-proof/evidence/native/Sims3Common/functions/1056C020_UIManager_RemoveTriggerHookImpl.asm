# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c020 (UIManager_RemoveTriggerHookImpl)
Paired Ghidra pseudocode: 1056C020_UIManager_RemoveTriggerHookImpl.c
Window: [0x1056c020, 0x1056c040) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c020: e8 8b 4d 07 00 85 c0 74 0d 8b 4c 24 04 51 8b c8
1056c030: e8 9b 5e 07 00 c3 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c020 <.text+0x56b020>:
1056c020:	e8 8b 4d 07 00                                  	call   0x105e0db0
1056c025:	85 c0                                           	test   eax,eax
1056c027:	74 0d                                           	je     0x1056c036
1056c029:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056c02d:	51                                              	push   ecx
1056c02e:	8b c8                                           	mov    ecx,eax
1056c030:	e8 9b 5e 07 00                                  	call   0x105e1ed0
1056c035:	c3                                              	ret
1056c036:	32 c0                                           	xor    al,al
1056c038:	c3                                              	ret
1056c039:	cc                                              	int3
1056c03a:	cc                                              	int3
1056c03b:	cc                                              	int3
1056c03c:	cc                                              	int3
1056c03d:	cc                                              	int3
1056c03e:	cc                                              	int3
1056c03f:	cc                                              	int3
