# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5c60 (ScriptCore.CASUtils::CASUtils_SimBuilderSetSecondaryNormalMapWeightImpl)
Paired Ghidra pseudocode: 005A5C60_ScriptCore_CASUtils_CASUtils_SimBuilderSetSecondaryNormalMapWeightImpl.c
Window: [0x005a5c60, 0x005a5cb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5c60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5c70: 35 75 2d e8 18 37 1c 00 8b 10 8b c8 8b 82 cc 00
005a5c80: 00 00 56 ff d0 85 c0 74 17 8b 4c 24 0c f3 0f 10
005a5c90: 44 24 10 f3 0f 11 44 88 3c 81 48 1c 00 00 01 00
005a5ca0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5c60 <.text+0x1a4c60>:
  5a5c60:	56                                              	push   esi
  5a5c61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5c65:	8b c6                                           	mov    eax,esi
  5a5c67:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5c6c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5c71:	75 2d                                           	jne    0x5a5ca0
  5a5c73:	e8 18 37 1c 00                                  	call   0x769390
  5a5c78:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5c7a:	8b c8                                           	mov    ecx,eax
  5a5c7c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5c82:	56                                              	push   esi
  5a5c83:	ff d0                                           	call   eax
  5a5c85:	85 c0                                           	test   eax,eax
  5a5c87:	74 17                                           	je     0x5a5ca0
  5a5c89:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a5c8d:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  5a5c93:	f3 0f 11 44 88 3c                               	movss  DWORD PTR [eax+ecx*4+0x3c],xmm0
  5a5c99:	81 48 1c 00 00 01 00                            	or     DWORD PTR [eax+0x1c],0x10000
  5a5ca0:	5e                                              	pop    esi
  5a5ca1:	c3                                              	ret
  5a5ca2:	cc                                              	int3
  5a5ca3:	cc                                              	int3
  5a5ca4:	cc                                              	int3
  5a5ca5:	cc                                              	int3
  5a5ca6:	cc                                              	int3
  5a5ca7:	cc                                              	int3
  5a5ca8:	cc                                              	int3
  5a5ca9:	cc                                              	int3
  5a5caa:	cc                                              	int3
  5a5cab:	cc                                              	int3
  5a5cac:	cc                                              	int3
  5a5cad:	cc                                              	int3
  5a5cae:	cc                                              	int3
  5a5caf:	cc                                              	int3
