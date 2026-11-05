# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9290 (ScriptCore.CASUtils::CASUtils_SimOutfitGetNumPartsImpl)
Paired Ghidra pseudocode: 005A9290_ScriptCore_CASUtils_CASUtils_SimOutfitGetNumPartsImpl.c
Window: [0x005a9290, 0x005a92e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a92e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9290: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a92a0: 35 74 04 33 c0 5e c3 e8 e4 00 1c 00 8b 10 8b c8
005a92b0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 88 9c
005a92c0: 00 00 00 2b 88 98 00 00 00 b8 4f ec c4 4e f7 e9
005a92d0: c1 fa 05 8b c2 c1 e8 1f 03 c2 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
005a9290 <.text+0x1a8290>:
  5a9290:	56                                              	push   esi
  5a9291:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a9295:	8b c6                                           	mov    eax,esi
  5a9297:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a929c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a92a1:	74 04                                           	je     0x5a92a7
  5a92a3:	33 c0                                           	xor    eax,eax
  5a92a5:	5e                                              	pop    esi
  5a92a6:	c3                                              	ret
  5a92a7:	e8 e4 00 1c 00                                  	call   0x769390
  5a92ac:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a92ae:	8b c8                                           	mov    ecx,eax
  5a92b0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a92b6:	56                                              	push   esi
  5a92b7:	ff d0                                           	call   eax
  5a92b9:	85 c0                                           	test   eax,eax
  5a92bb:	74 e6                                           	je     0x5a92a3
  5a92bd:	8b 88 9c 00 00 00                               	mov    ecx,DWORD PTR [eax+0x9c]
  5a92c3:	2b 88 98 00 00 00                               	sub    ecx,DWORD PTR [eax+0x98]
  5a92c9:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
  5a92ce:	f7 e9                                           	imul   ecx
  5a92d0:	c1 fa 05                                        	sar    edx,0x5
  5a92d3:	8b c2                                           	mov    eax,edx
  5a92d5:	c1 e8 1f                                        	shr    eax,0x1f
  5a92d8:	03 c2                                           	add    eax,edx
  5a92da:	5e                                              	pop    esi
  5a92db:	c3                                              	ret
  5a92dc:	cc                                              	int3
  5a92dd:	cc                                              	int3
  5a92de:	cc                                              	int3
  5a92df:	cc                                              	int3
