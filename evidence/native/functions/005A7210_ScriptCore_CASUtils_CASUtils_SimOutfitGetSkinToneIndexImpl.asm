# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7210 (ScriptCore.CASUtils::CASUtils_SimOutfitGetSkinToneIndexImpl)
Paired Ghidra pseudocode: 005A7210_ScriptCore_CASUtils_CASUtils_SimOutfitGetSkinToneIndexImpl.c
Window: [0x005a7210, 0x005a7250) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7210: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7220: 35 74 04 d9 ee 5e c3 e8 64 21 1c 00 8b 10 8b c8
005a7230: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 40 50
005a7240: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7210 <.text+0x1a6210>:
  5a7210:	56                                              	push   esi
  5a7211:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7215:	8b c6                                           	mov    eax,esi
  5a7217:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a721c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7221:	74 04                                           	je     0x5a7227
  5a7223:	d9 ee                                           	fldz
  5a7225:	5e                                              	pop    esi
  5a7226:	c3                                              	ret
  5a7227:	e8 64 21 1c 00                                  	call   0x769390
  5a722c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a722e:	8b c8                                           	mov    ecx,eax
  5a7230:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7236:	56                                              	push   esi
  5a7237:	ff d0                                           	call   eax
  5a7239:	85 c0                                           	test   eax,eax
  5a723b:	74 e6                                           	je     0x5a7223
  5a723d:	d9 40 50                                        	fld    DWORD PTR [eax+0x50]
  5a7240:	5e                                              	pop    esi
  5a7241:	c3                                              	ret
  5a7242:	cc                                              	int3
  5a7243:	cc                                              	int3
  5a7244:	cc                                              	int3
  5a7245:	cc                                              	int3
  5a7246:	cc                                              	int3
  5a7247:	cc                                              	int3
  5a7248:	cc                                              	int3
  5a7249:	cc                                              	int3
  5a724a:	cc                                              	int3
  5a724b:	cc                                              	int3
  5a724c:	cc                                              	int3
  5a724d:	cc                                              	int3
  5a724e:	cc                                              	int3
  5a724f:	cc                                              	int3
