# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577f60 (World_LotSetVisibilityImpl)
Paired Ghidra pseudocode: 10577F60_World_LotSetVisibilityImpl.c
Window: [0x10577f60, 0x10577fa0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577f60: 8b 0d c4 00 c7 10 85 c9 74 26 8b 44 24 08 8b 54
10577f70: 24 04 6a 00 50 52 e8 95 f0 cb ff 85 c0 74 11 8b
10577f80: 4c 24 10 8b 54 24 0c 51 52 8b c8 e8 60 2f b0 ff
10577f90: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577f60 <.text+0x576f60>:
10577f60:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577f66:	85 c9                                           	test   ecx,ecx
10577f68:	74 26                                           	je     0x10577f90
10577f6a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10577f6e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577f72:	6a 00                                           	push   0x0
10577f74:	50                                              	push   eax
10577f75:	52                                              	push   edx
10577f76:	e8 95 f0 cb ff                                  	call   0x10237010
10577f7b:	85 c0                                           	test   eax,eax
10577f7d:	74 11                                           	je     0x10577f90
10577f7f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10577f83:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10577f87:	51                                              	push   ecx
10577f88:	52                                              	push   edx
10577f89:	8b c8                                           	mov    ecx,eax
10577f8b:	e8 60 2f b0 ff                                  	call   0x1007aef0
10577f90:	c3                                              	ret
10577f91:	cc                                              	int3
10577f92:	cc                                              	int3
10577f93:	cc                                              	int3
10577f94:	cc                                              	int3
10577f95:	cc                                              	int3
10577f96:	cc                                              	int3
10577f97:	cc                                              	int3
10577f98:	cc                                              	int3
10577f99:	cc                                              	int3
10577f9a:	cc                                              	int3
10577f9b:	cc                                              	int3
10577f9c:	cc                                              	int3
10577f9d:	cc                                              	int3
10577f9e:	cc                                              	int3
10577f9f:	cc                                              	int3
