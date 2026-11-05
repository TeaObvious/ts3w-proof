# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576f30 (World_IsCameraRoutableImpl)
Paired Ghidra pseudocode: 10576F30_World_IsCameraRoutableImpl.c
Window: [0x10576f30, 0x10576f60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576f30: 8b 0d c4 00 c7 10 85 c9 74 18 d9 44 24 08 83 ec
10576f40: 08 d9 5c 24 04 d9 44 24 0c d9 1c 24 e8 bf 95 cc
10576f50: ff c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576f30 <.text+0x575f30>:
10576f30:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10576f36:	85 c9                                           	test   ecx,ecx
10576f38:	74 18                                           	je     0x10576f52
10576f3a:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10576f3e:	83 ec 08                                        	sub    esp,0x8
10576f41:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10576f45:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10576f49:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10576f4c:	e8 bf 95 cc ff                                  	call   0x10240510
10576f51:	c3                                              	ret
10576f52:	32 c0                                           	xor    al,al
10576f54:	c3                                              	ret
10576f55:	cc                                              	int3
10576f56:	cc                                              	int3
10576f57:	cc                                              	int3
10576f58:	cc                                              	int3
10576f59:	cc                                              	int3
10576f5a:	cc                                              	int3
10576f5b:	cc                                              	int3
10576f5c:	cc                                              	int3
10576f5d:	cc                                              	int3
10576f5e:	cc                                              	int3
10576f5f:	cc                                              	int3
