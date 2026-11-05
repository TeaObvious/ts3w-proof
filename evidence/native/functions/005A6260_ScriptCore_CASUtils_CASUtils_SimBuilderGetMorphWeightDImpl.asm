# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6260 (ScriptCore.CASUtils::CASUtils_SimBuilderGetMorphWeightDImpl)
Paired Ghidra pseudocode: 005A6260_ScriptCore_CASUtils_CASUtils_SimBuilderGetMorphWeightDImpl.c
Window: [0x005a6260, 0x005a62a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a62a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6260: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6270: 35 75 1b e8 18 31 1c 00 8b 10 8b c8 8b 82 cc 00
005a6280: 00 00 56 ff d0 85 c0 74 05 d9 40 5c 5e c3 d9 ee
005a6290: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6260 <.text+0x1a5260>:
  5a6260:	56                                              	push   esi
  5a6261:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6265:	8b c6                                           	mov    eax,esi
  5a6267:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a626c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6271:	75 1b                                           	jne    0x5a628e
  5a6273:	e8 18 31 1c 00                                  	call   0x769390
  5a6278:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a627a:	8b c8                                           	mov    ecx,eax
  5a627c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6282:	56                                              	push   esi
  5a6283:	ff d0                                           	call   eax
  5a6285:	85 c0                                           	test   eax,eax
  5a6287:	74 05                                           	je     0x5a628e
  5a6289:	d9 40 5c                                        	fld    DWORD PTR [eax+0x5c]
  5a628c:	5e                                              	pop    esi
  5a628d:	c3                                              	ret
  5a628e:	d9 ee                                           	fldz
  5a6290:	5e                                              	pop    esi
  5a6291:	c3                                              	ret
  5a6292:	cc                                              	int3
  5a6293:	cc                                              	int3
  5a6294:	cc                                              	int3
  5a6295:	cc                                              	int3
  5a6296:	cc                                              	int3
  5a6297:	cc                                              	int3
  5a6298:	cc                                              	int3
  5a6299:	cc                                              	int3
  5a629a:	cc                                              	int3
  5a629b:	cc                                              	int3
  5a629c:	cc                                              	int3
  5a629d:	cc                                              	int3
  5a629e:	cc                                              	int3
  5a629f:	cc                                              	int3
