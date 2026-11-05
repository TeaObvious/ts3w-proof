# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005acd00 (ScriptCore.CASUtils::CASUtils_TextSearchSearchImpl)
Paired Ghidra pseudocode: 005ACD00_ScriptCore_CASUtils_CASUtils_TextSearchSearchImpl.c
Window: [0x005acd00, 0x005acd50) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005acd50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005acd00: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005acd10: 35 74 04 b0 01 5e c3 e8 74 c6 1b 00 8b 10 8b c8
005acd20: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 44 24
005acd30: 10 51 8b 4c 24 10 d9 1c 24 51 8b c8 e8 df fb ff
005acd40: ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005acd00 <.text+0x1abd00>:
  5acd00:	56                                              	push   esi
  5acd01:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5acd05:	8b c6                                           	mov    eax,esi
  5acd07:	25 00 00 00 ff                                  	and    eax,0xff000000
  5acd0c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5acd11:	74 04                                           	je     0x5acd17
  5acd13:	b0 01                                           	mov    al,0x1
  5acd15:	5e                                              	pop    esi
  5acd16:	c3                                              	ret
  5acd17:	e8 74 c6 1b 00                                  	call   0x769390
  5acd1c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5acd1e:	8b c8                                           	mov    ecx,eax
  5acd20:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5acd26:	56                                              	push   esi
  5acd27:	ff d0                                           	call   eax
  5acd29:	85 c0                                           	test   eax,eax
  5acd2b:	74 e6                                           	je     0x5acd13
  5acd2d:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  5acd31:	51                                              	push   ecx
  5acd32:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5acd36:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5acd39:	51                                              	push   ecx
  5acd3a:	8b c8                                           	mov    ecx,eax
  5acd3c:	e8 df fb ff ff                                  	call   0x5ac920
  5acd41:	5e                                              	pop    esi
  5acd42:	c3                                              	ret
  5acd43:	cc                                              	int3
  5acd44:	cc                                              	int3
  5acd45:	cc                                              	int3
  5acd46:	cc                                              	int3
  5acd47:	cc                                              	int3
  5acd48:	cc                                              	int3
  5acd49:	cc                                              	int3
  5acd4a:	cc                                              	int3
  5acd4b:	cc                                              	int3
  5acd4c:	cc                                              	int3
  5acd4d:	cc                                              	int3
  5acd4e:	cc                                              	int3
  5acd4f:	cc                                              	int3
