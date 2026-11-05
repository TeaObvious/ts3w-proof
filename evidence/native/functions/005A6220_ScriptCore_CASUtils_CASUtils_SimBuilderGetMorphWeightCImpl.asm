# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6220 (ScriptCore.CASUtils::CASUtils_SimBuilderGetMorphWeightCImpl)
Paired Ghidra pseudocode: 005A6220_ScriptCore_CASUtils_CASUtils_SimBuilderGetMorphWeightCImpl.c
Window: [0x005a6220, 0x005a6260) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6220: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6230: 35 75 1b e8 58 31 1c 00 8b 10 8b c8 8b 82 cc 00
005a6240: 00 00 56 ff d0 85 c0 74 05 d9 40 58 5e c3 d9 ee
005a6250: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6220 <.text+0x1a5220>:
  5a6220:	56                                              	push   esi
  5a6221:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6225:	8b c6                                           	mov    eax,esi
  5a6227:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a622c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6231:	75 1b                                           	jne    0x5a624e
  5a6233:	e8 58 31 1c 00                                  	call   0x769390
  5a6238:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a623a:	8b c8                                           	mov    ecx,eax
  5a623c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6242:	56                                              	push   esi
  5a6243:	ff d0                                           	call   eax
  5a6245:	85 c0                                           	test   eax,eax
  5a6247:	74 05                                           	je     0x5a624e
  5a6249:	d9 40 58                                        	fld    DWORD PTR [eax+0x58]
  5a624c:	5e                                              	pop    esi
  5a624d:	c3                                              	ret
  5a624e:	d9 ee                                           	fldz
  5a6250:	5e                                              	pop    esi
  5a6251:	c3                                              	ret
  5a6252:	cc                                              	int3
  5a6253:	cc                                              	int3
  5a6254:	cc                                              	int3
  5a6255:	cc                                              	int3
  5a6256:	cc                                              	int3
  5a6257:	cc                                              	int3
  5a6258:	cc                                              	int3
  5a6259:	cc                                              	int3
  5a625a:	cc                                              	int3
  5a625b:	cc                                              	int3
  5a625c:	cc                                              	int3
  5a625d:	cc                                              	int3
  5a625e:	cc                                              	int3
  5a625f:	cc                                              	int3
