# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7340 (ScriptCore.CASUtils::CASUtils_SimOutfitSetMorphWeightAImpl)
Paired Ghidra pseudocode: 005A7340_ScriptCore_CASUtils_CASUtils_SimOutfitSetMorphWeightAImpl.c
Window: [0x005a7340, 0x005a7380) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7340: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7350: 35 75 21 e8 38 20 1c 00 8b 10 8b c8 8b 82 cc 00
005a7360: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
005a7370: 0f 11 40 68 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7340 <.text+0x1a6340>:
  5a7340:	56                                              	push   esi
  5a7341:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7345:	8b c6                                           	mov    eax,esi
  5a7347:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a734c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7351:	75 21                                           	jne    0x5a7374
  5a7353:	e8 38 20 1c 00                                  	call   0x769390
  5a7358:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a735a:	8b c8                                           	mov    ecx,eax
  5a735c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7362:	56                                              	push   esi
  5a7363:	ff d0                                           	call   eax
  5a7365:	85 c0                                           	test   eax,eax
  5a7367:	74 0b                                           	je     0x5a7374
  5a7369:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a736f:	f3 0f 11 40 68                                  	movss  DWORD PTR [eax+0x68],xmm0
  5a7374:	5e                                              	pop    esi
  5a7375:	c3                                              	ret
  5a7376:	cc                                              	int3
  5a7377:	cc                                              	int3
  5a7378:	cc                                              	int3
  5a7379:	cc                                              	int3
  5a737a:	cc                                              	int3
  5a737b:	cc                                              	int3
  5a737c:	cc                                              	int3
  5a737d:	cc                                              	int3
  5a737e:	cc                                              	int3
  5a737f:	cc                                              	int3
