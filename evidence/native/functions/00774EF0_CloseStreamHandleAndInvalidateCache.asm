# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x00774ef0; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774ef0 (DirectTargetOf_StreamHost_StreamHost_Close)
Paired Ghidra pseudocode: 00774EF0_CloseStreamHandleAndInvalidateCache.c
Window: [0x00774ef0, 0x00774f50) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774ef0: 56 8b 74 24 08 3b 35 38 78 1d 01 75 14 c7 05 38
00774f00: 78 1d 01 00 00 00 00 c7 05 3c 78 1d 01 00 00 00
00774f10: 00 8b c6 25 00 00 00 ff 3d 00 00 00 60 75 20 e8
00774f20: 6c 44 ff ff 8b 10 8b c8 8b 82 d8 00 00 00 56 ff
00774f30: d0 85 c0 74 0a 8b 10 8b c8 8b 42 08 5e ff e0 5e
00774f40: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774ef0 <.text+0x373ef0>:
  774ef0:	56                                              	push   esi
  774ef1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774ef5:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  774efb:	75 14                                           	jne    0x774f11
  774efd:	c7 05 38 78 1d 01 00 00 00 00                   	mov    DWORD PTR ds:0x11d7838,0x0
  774f07:	c7 05 3c 78 1d 01 00 00 00 00                   	mov    DWORD PTR ds:0x11d783c,0x0
  774f11:	8b c6                                           	mov    eax,esi
  774f13:	25 00 00 00 ff                                  	and    eax,0xff000000
  774f18:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  774f1d:	75 20                                           	jne    0x774f3f
  774f1f:	e8 6c 44 ff ff                                  	call   0x769390
  774f24:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774f26:	8b c8                                           	mov    ecx,eax
  774f28:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  774f2e:	56                                              	push   esi
  774f2f:	ff d0                                           	call   eax
  774f31:	85 c0                                           	test   eax,eax
  774f33:	74 0a                                           	je     0x774f3f
  774f35:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774f37:	8b c8                                           	mov    ecx,eax
  774f39:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  774f3c:	5e                                              	pop    esi
  774f3d:	ff e0                                           	jmp    eax
  774f3f:	5e                                              	pop    esi
  774f40:	c3                                              	ret
  774f41:	cc                                              	int3
  774f42:	cc                                              	int3
  774f43:	cc                                              	int3
  774f44:	cc                                              	int3
  774f45:	cc                                              	int3
  774f46:	cc                                              	int3
  774f47:	cc                                              	int3
  774f48:	cc                                              	int3
  774f49:	cc                                              	int3
  774f4a:	cc                                              	int3
  774f4b:	cc                                              	int3
  774f4c:	cc                                              	int3
  774f4d:	cc                                              	int3
  774f4e:	cc                                              	int3
  774f4f:	cc                                              	int3
