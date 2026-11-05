# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7250 (ScriptCore.CASUtils::CASUtils_SimOutfitGetSecondaryNormalMapWeightImpl)
Paired Ghidra pseudocode: 005A7250_ScriptCore_CASUtils_CASUtils_SimOutfitGetSecondaryNormalMapWeightImpl.c
Window: [0x005a7250, 0x005a7290) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7250: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7260: 35 74 04 d9 ee 5e c3 e8 24 21 1c 00 8b 10 8b c8
005a7270: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 4c 24
005a7280: 0c d9 44 88 54 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7250 <.text+0x1a6250>:
  5a7250:	56                                              	push   esi
  5a7251:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7255:	8b c6                                           	mov    eax,esi
  5a7257:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a725c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7261:	74 04                                           	je     0x5a7267
  5a7263:	d9 ee                                           	fldz
  5a7265:	5e                                              	pop    esi
  5a7266:	c3                                              	ret
  5a7267:	e8 24 21 1c 00                                  	call   0x769390
  5a726c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a726e:	8b c8                                           	mov    ecx,eax
  5a7270:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7276:	56                                              	push   esi
  5a7277:	ff d0                                           	call   eax
  5a7279:	85 c0                                           	test   eax,eax
  5a727b:	74 e6                                           	je     0x5a7263
  5a727d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a7281:	d9 44 88 54                                     	fld    DWORD PTR [eax+ecx*4+0x54]
  5a7285:	5e                                              	pop    esi
  5a7286:	c3                                              	ret
  5a7287:	cc                                              	int3
  5a7288:	cc                                              	int3
  5a7289:	cc                                              	int3
  5a728a:	cc                                              	int3
  5a728b:	cc                                              	int3
  5a728c:	cc                                              	int3
  5a728d:	cc                                              	int3
  5a728e:	cc                                              	int3
  5a728f:	cc                                              	int3
