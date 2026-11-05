# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fed0 (Camera_TetherToObject)
Paired Ghidra pseudocode: 1052FED0_Camera_TetherToObject.c
Window: [0x1052fed0, 0x1052ff20) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ff20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fed0: e8 5b c7 22 00 85 c0 74 39 8b c8 e8 a0 7b 40 00
1052fee0: 85 c0 74 2e 8b c8 e8 65 ca 22 00 85 c0 74 23 8b
1052fef0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052ff00: 11 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 ce 7d
1052ff10: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052fed0 <.text+0x52eed0>:
1052fed0:	e8 5b c7 22 00                                  	call   0x1075c630
1052fed5:	85 c0                                           	test   eax,eax
1052fed7:	74 39                                           	je     0x1052ff12
1052fed9:	8b c8                                           	mov    ecx,eax
1052fedb:	e8 a0 7b 40 00                                  	call   0x10937a80
1052fee0:	85 c0                                           	test   eax,eax
1052fee2:	74 2e                                           	je     0x1052ff12
1052fee4:	8b c8                                           	mov    ecx,eax
1052fee6:	e8 65 ca 22 00                                  	call   0x1075c950
1052feeb:	85 c0                                           	test   eax,eax
1052feed:	74 23                                           	je     0x1052ff12
1052feef:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052fef1:	8b c8                                           	mov    ecx,eax
1052fef3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052fef6:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fefb:	ff d0                                           	call   eax
1052fefd:	85 c0                                           	test   eax,eax
1052feff:	74 11                                           	je     0x1052ff12
1052ff01:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052ff05:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052ff09:	51                                              	push   ecx
1052ff0a:	52                                              	push   edx
1052ff0b:	8b c8                                           	mov    ecx,eax
1052ff0d:	e8 ce 7d 23 00                                  	call   0x10767ce0
1052ff12:	c3                                              	ret
1052ff13:	cc                                              	int3
1052ff14:	cc                                              	int3
1052ff15:	cc                                              	int3
1052ff16:	cc                                              	int3
1052ff17:	cc                                              	int3
1052ff18:	cc                                              	int3
1052ff19:	cc                                              	int3
1052ff1a:	cc                                              	int3
1052ff1b:	cc                                              	int3
1052ff1c:	cc                                              	int3
1052ff1d:	cc                                              	int3
1052ff1e:	cc                                              	int3
1052ff1f:	cc                                              	int3
