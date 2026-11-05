# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a61e0 (ScriptCore.CASUtils::CASUtils_SimBuilderGetMorphWeightBImpl)
Paired Ghidra pseudocode: 005A61E0_ScriptCore_CASUtils_CASUtils_SimBuilderGetMorphWeightBImpl.c
Window: [0x005a61e0, 0x005a6220) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a61e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a61f0: 35 75 1b e8 98 31 1c 00 8b 10 8b c8 8b 82 cc 00
005a6200: 00 00 56 ff d0 85 c0 74 05 d9 40 54 5e c3 d9 ee
005a6210: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a61e0 <.text+0x1a51e0>:
  5a61e0:	56                                              	push   esi
  5a61e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a61e5:	8b c6                                           	mov    eax,esi
  5a61e7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a61ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a61f1:	75 1b                                           	jne    0x5a620e
  5a61f3:	e8 98 31 1c 00                                  	call   0x769390
  5a61f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a61fa:	8b c8                                           	mov    ecx,eax
  5a61fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6202:	56                                              	push   esi
  5a6203:	ff d0                                           	call   eax
  5a6205:	85 c0                                           	test   eax,eax
  5a6207:	74 05                                           	je     0x5a620e
  5a6209:	d9 40 54                                        	fld    DWORD PTR [eax+0x54]
  5a620c:	5e                                              	pop    esi
  5a620d:	c3                                              	ret
  5a620e:	d9 ee                                           	fldz
  5a6210:	5e                                              	pop    esi
  5a6211:	c3                                              	ret
  5a6212:	cc                                              	int3
  5a6213:	cc                                              	int3
  5a6214:	cc                                              	int3
  5a6215:	cc                                              	int3
  5a6216:	cc                                              	int3
  5a6217:	cc                                              	int3
  5a6218:	cc                                              	int3
  5a6219:	cc                                              	int3
  5a621a:	cc                                              	int3
  5a621b:	cc                                              	int3
  5a621c:	cc                                              	int3
  5a621d:	cc                                              	int3
  5a621e:	cc                                              	int3
  5a621f:	cc                                              	int3
