# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577fa0 (World_LotRoofVisibleImpl)
Paired Ghidra pseudocode: 10577FA0_World_LotRoofVisibleImpl.c
Window: [0x10577fa0, 0x10577fe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577fa0: 8b 0d c4 00 c7 10 85 c9 74 26 8b 44 24 08 8b 54
10577fb0: 24 04 6a 00 50 52 e8 55 f0 cb ff 85 c0 74 11 8b
10577fc0: 80 ac 02 00 00 85 c0 74 07 8b c8 e9 40 b0 be ff
10577fd0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577fa0 <.text+0x576fa0>:
10577fa0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577fa6:	85 c9                                           	test   ecx,ecx
10577fa8:	74 26                                           	je     0x10577fd0
10577faa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10577fae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577fb2:	6a 00                                           	push   0x0
10577fb4:	50                                              	push   eax
10577fb5:	52                                              	push   edx
10577fb6:	e8 55 f0 cb ff                                  	call   0x10237010
10577fbb:	85 c0                                           	test   eax,eax
10577fbd:	74 11                                           	je     0x10577fd0
10577fbf:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
10577fc5:	85 c0                                           	test   eax,eax
10577fc7:	74 07                                           	je     0x10577fd0
10577fc9:	8b c8                                           	mov    ecx,eax
10577fcb:	e9 40 b0 be ff                                  	jmp    0x10163010
10577fd0:	32 c0                                           	xor    al,al
10577fd2:	c3                                              	ret
10577fd3:	cc                                              	int3
10577fd4:	cc                                              	int3
10577fd5:	cc                                              	int3
10577fd6:	cc                                              	int3
10577fd7:	cc                                              	int3
10577fd8:	cc                                              	int3
10577fd9:	cc                                              	int3
10577fda:	cc                                              	int3
10577fdb:	cc                                              	int3
10577fdc:	cc                                              	int3
10577fdd:	cc                                              	int3
10577fde:	cc                                              	int3
10577fdf:	cc                                              	int3
