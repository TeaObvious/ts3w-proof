# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577ab0 (World_DesignModeSwap_ClearOldCompositorsImpl)
Paired Ghidra pseudocode: 10577AB0_World_DesignModeSwap_ClearOldCompositorsImpl.c
Window: [0x10577ab0, 0x10577af0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577ab0: e8 6b 36 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
10577ac0: ff 81 fa 00 00 00 45 75 18 8b 10 51 8b c8 8b 82
10577ad0: cc 00 00 00 ff d0 85 c0 74 07 8b c8 e9 df 82 aa
10577ae0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577ab0 <.text+0x576ab0>:
10577ab0:	e8 6b 36 fe ff                                  	call   0x1055b120
10577ab5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10577ab9:	8b d1                                           	mov    edx,ecx
10577abb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577ac1:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577ac7:	75 18                                           	jne    0x10577ae1
10577ac9:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577acb:	51                                              	push   ecx
10577acc:	8b c8                                           	mov    ecx,eax
10577ace:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577ad4:	ff d0                                           	call   eax
10577ad6:	85 c0                                           	test   eax,eax
10577ad8:	74 07                                           	je     0x10577ae1
10577ada:	8b c8                                           	mov    ecx,eax
10577adc:	e9 df 82 aa ff                                  	jmp    0x1001fdc0
10577ae1:	c3                                              	ret
10577ae2:	cc                                              	int3
10577ae3:	cc                                              	int3
10577ae4:	cc                                              	int3
10577ae5:	cc                                              	int3
10577ae6:	cc                                              	int3
10577ae7:	cc                                              	int3
10577ae8:	cc                                              	int3
10577ae9:	cc                                              	int3
10577aea:	cc                                              	int3
10577aeb:	cc                                              	int3
10577aec:	cc                                              	int3
10577aed:	cc                                              	int3
10577aee:	cc                                              	int3
10577aef:	cc                                              	int3
