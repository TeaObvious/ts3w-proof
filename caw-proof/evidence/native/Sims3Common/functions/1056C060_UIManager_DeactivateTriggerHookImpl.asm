# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c060 (UIManager_DeactivateTriggerHookImpl)
Paired Ghidra pseudocode: 1056C060_UIManager_DeactivateTriggerHookImpl.c
Window: [0x1056c060, 0x1056c080) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c060: e8 4b 4d 07 00 85 c0 74 0d 8b 4c 24 04 51 8b c8
1056c070: e8 2b 5a 07 00 c3 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c060 <.text+0x56b060>:
1056c060:	e8 4b 4d 07 00                                  	call   0x105e0db0
1056c065:	85 c0                                           	test   eax,eax
1056c067:	74 0d                                           	je     0x1056c076
1056c069:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056c06d:	51                                              	push   ecx
1056c06e:	8b c8                                           	mov    ecx,eax
1056c070:	e8 2b 5a 07 00                                  	call   0x105e1aa0
1056c075:	c3                                              	ret
1056c076:	32 c0                                           	xor    al,al
1056c078:	c3                                              	ret
1056c079:	cc                                              	int3
1056c07a:	cc                                              	int3
1056c07b:	cc                                              	int3
1056c07c:	cc                                              	int3
1056c07d:	cc                                              	int3
1056c07e:	cc                                              	int3
1056c07f:	cc                                              	int3
