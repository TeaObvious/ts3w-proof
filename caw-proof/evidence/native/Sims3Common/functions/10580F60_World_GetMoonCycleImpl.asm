# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580f60 (World_GetMoonCycleImpl)
Paired Ghidra pseudocode: 10580F60_World_GetMoonCycleImpl.c
Window: [0x10580f60, 0x10580f90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580f90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580f60: a1 c4 00 c7 10 85 c0 74 13 8b 48 64 85 c9 74 0c
10580f70: e8 2b da c5 ff 0f b7 c0 0f bf c0 c3 83 c8 ff 0f
10580f80: bf c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580f60 <.text+0x57ff60>:
10580f60:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10580f65:	85 c0                                           	test   eax,eax
10580f67:	74 13                                           	je     0x10580f7c
10580f69:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10580f6c:	85 c9                                           	test   ecx,ecx
10580f6e:	74 0c                                           	je     0x10580f7c
10580f70:	e8 2b da c5 ff                                  	call   0x101de9a0
10580f75:	0f b7 c0                                        	movzx  eax,ax
10580f78:	0f bf c0                                        	movsx  eax,ax
10580f7b:	c3                                              	ret
10580f7c:	83 c8 ff                                        	or     eax,0xffffffff
10580f7f:	0f bf c0                                        	movsx  eax,ax
10580f82:	c3                                              	ret
10580f83:	cc                                              	int3
10580f84:	cc                                              	int3
10580f85:	cc                                              	int3
10580f86:	cc                                              	int3
10580f87:	cc                                              	int3
10580f88:	cc                                              	int3
10580f89:	cc                                              	int3
10580f8a:	cc                                              	int3
10580f8b:	cc                                              	int3
10580f8c:	cc                                              	int3
10580f8d:	cc                                              	int3
10580f8e:	cc                                              	int3
10580f8f:	cc                                              	int3
