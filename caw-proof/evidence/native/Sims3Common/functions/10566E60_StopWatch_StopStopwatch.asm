# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566e60 (StopWatch_StopStopwatch)
Paired Ghidra pseudocode: 10566E60_StopWatch_StopStopwatch.c
Window: [0x10566e60, 0x10566ea0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566e60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10566e70: 10 75 1e e8 a8 42 ff ff 8b 10 8b c8 8b 82 cc 00
10566e80: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 7f fa 3b
10566e90: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566e60 <.text+0x565e60>:
10566e60:	56                                              	push   esi
10566e61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10566e65:	8b c6                                           	mov    eax,esi
10566e67:	25 00 00 00 ff                                  	and    eax,0xff000000
10566e6c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10566e71:	75 1e                                           	jne    0x10566e91
10566e73:	e8 a8 42 ff ff                                  	call   0x1055b120
10566e78:	8b 10                                           	mov    edx,DWORD PTR [eax]
10566e7a:	8b c8                                           	mov    ecx,eax
10566e7c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10566e82:	56                                              	push   esi
10566e83:	ff d0                                           	call   eax
10566e85:	85 c0                                           	test   eax,eax
10566e87:	74 08                                           	je     0x10566e91
10566e89:	8b c8                                           	mov    ecx,eax
10566e8b:	5e                                              	pop    esi
10566e8c:	e9 7f fa 3b 00                                  	jmp    0x10926910
10566e91:	5e                                              	pop    esi
10566e92:	c3                                              	ret
10566e93:	cc                                              	int3
10566e94:	cc                                              	int3
10566e95:	cc                                              	int3
10566e96:	cc                                              	int3
10566e97:	cc                                              	int3
10566e98:	cc                                              	int3
10566e99:	cc                                              	int3
10566e9a:	cc                                              	int3
10566e9b:	cc                                              	int3
10566e9c:	cc                                              	int3
10566e9d:	cc                                              	int3
10566e9e:	cc                                              	int3
10566e9f:	cc                                              	int3
