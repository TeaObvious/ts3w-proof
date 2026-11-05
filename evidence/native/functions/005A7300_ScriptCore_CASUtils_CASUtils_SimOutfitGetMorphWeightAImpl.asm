# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7300 (ScriptCore.CASUtils::CASUtils_SimOutfitGetMorphWeightAImpl)
Paired Ghidra pseudocode: 005A7300_ScriptCore_CASUtils_CASUtils_SimOutfitGetMorphWeightAImpl.c
Window: [0x005a7300, 0x005a7340) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7300: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7310: 35 74 04 d9 ee 5e c3 e8 74 20 1c 00 8b 10 8b c8
005a7320: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 40 68
005a7330: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7300 <.text+0x1a6300>:
  5a7300:	56                                              	push   esi
  5a7301:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7305:	8b c6                                           	mov    eax,esi
  5a7307:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a730c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7311:	74 04                                           	je     0x5a7317
  5a7313:	d9 ee                                           	fldz
  5a7315:	5e                                              	pop    esi
  5a7316:	c3                                              	ret
  5a7317:	e8 74 20 1c 00                                  	call   0x769390
  5a731c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a731e:	8b c8                                           	mov    ecx,eax
  5a7320:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7326:	56                                              	push   esi
  5a7327:	ff d0                                           	call   eax
  5a7329:	85 c0                                           	test   eax,eax
  5a732b:	74 e6                                           	je     0x5a7313
  5a732d:	d9 40 68                                        	fld    DWORD PTR [eax+0x68]
  5a7330:	5e                                              	pop    esi
  5a7331:	c3                                              	ret
  5a7332:	cc                                              	int3
  5a7333:	cc                                              	int3
  5a7334:	cc                                              	int3
  5a7335:	cc                                              	int3
  5a7336:	cc                                              	int3
  5a7337:	cc                                              	int3
  5a7338:	cc                                              	int3
  5a7339:	cc                                              	int3
  5a733a:	cc                                              	int3
  5a733b:	cc                                              	int3
  5a733c:	cc                                              	int3
  5a733d:	cc                                              	int3
  5a733e:	cc                                              	int3
  5a733f:	cc                                              	int3
