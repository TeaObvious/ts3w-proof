# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577cb0 (World_DesignModeSwap_IsMaterialBuiltImpl)
Paired Ghidra pseudocode: 10577CB0_World_DesignModeSwap_IsMaterialBuiltImpl.c
Window: [0x10577cb0, 0x10577cf0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577cb0: e8 6b 34 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
10577cc0: ff 81 fa 00 00 00 45 74 03 b0 01 c3 8b 10 51 8b
10577cd0: c8 8b 82 cc 00 00 00 ff d0 85 c0 74 ec 8b c8 e9
10577ce0: 9c 69 aa ff cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577cb0 <.text+0x576cb0>:
10577cb0:	e8 6b 34 fe ff                                  	call   0x1055b120
10577cb5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10577cb9:	8b d1                                           	mov    edx,ecx
10577cbb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577cc1:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577cc7:	74 03                                           	je     0x10577ccc
10577cc9:	b0 01                                           	mov    al,0x1
10577ccb:	c3                                              	ret
10577ccc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577cce:	51                                              	push   ecx
10577ccf:	8b c8                                           	mov    ecx,eax
10577cd1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577cd7:	ff d0                                           	call   eax
10577cd9:	85 c0                                           	test   eax,eax
10577cdb:	74 ec                                           	je     0x10577cc9
10577cdd:	8b c8                                           	mov    ecx,eax
10577cdf:	e9 9c 69 aa ff                                  	jmp    0x1001e680
10577ce4:	cc                                              	int3
10577ce5:	cc                                              	int3
10577ce6:	cc                                              	int3
10577ce7:	cc                                              	int3
10577ce8:	cc                                              	int3
10577ce9:	cc                                              	int3
10577cea:	cc                                              	int3
10577ceb:	cc                                              	int3
10577cec:	cc                                              	int3
10577ced:	cc                                              	int3
10577cee:	cc                                              	int3
10577cef:	cc                                              	int3
