# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fc50 (Camera_SetOnStairs)
Paired Ghidra pseudocode: 1052FC50_Camera_SetOnStairs.c
Window: [0x1052fc50, 0x1052fc90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fc90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fc50: e8 db c9 22 00 85 c0 74 34 8b c8 e8 20 7e 40 00
1052fc60: 85 c0 74 29 8b c8 e8 e5 cc 22 00 85 c0 74 1e 8b
1052fc70: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052fc80: 0c 8b 4c 24 04 51 8b c8 e8 93 31 23 00 c3 cc cc

LINEAR DISASSEMBLY
1052fc50 <.text+0x52ec50>:
1052fc50:	e8 db c9 22 00                                  	call   0x1075c630
1052fc55:	85 c0                                           	test   eax,eax
1052fc57:	74 34                                           	je     0x1052fc8d
1052fc59:	8b c8                                           	mov    ecx,eax
1052fc5b:	e8 20 7e 40 00                                  	call   0x10937a80
1052fc60:	85 c0                                           	test   eax,eax
1052fc62:	74 29                                           	je     0x1052fc8d
1052fc64:	8b c8                                           	mov    ecx,eax
1052fc66:	e8 e5 cc 22 00                                  	call   0x1075c950
1052fc6b:	85 c0                                           	test   eax,eax
1052fc6d:	74 1e                                           	je     0x1052fc8d
1052fc6f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052fc71:	8b c8                                           	mov    ecx,eax
1052fc73:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052fc76:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fc7b:	ff d0                                           	call   eax
1052fc7d:	85 c0                                           	test   eax,eax
1052fc7f:	74 0c                                           	je     0x1052fc8d
1052fc81:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1052fc85:	51                                              	push   ecx
1052fc86:	8b c8                                           	mov    ecx,eax
1052fc88:	e8 93 31 23 00                                  	call   0x10762e20
1052fc8d:	c3                                              	ret
1052fc8e:	cc                                              	int3
1052fc8f:	cc                                              	int3
