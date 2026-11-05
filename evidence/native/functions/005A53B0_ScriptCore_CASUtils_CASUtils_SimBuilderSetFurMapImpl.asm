# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a53b0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetFurMapImpl)
Paired Ghidra pseudocode: 005A53B0_ScriptCore_CASUtils_CASUtils_SimBuilderSetFurMapImpl.c
Window: [0x005a53b0, 0x005a5410) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a53b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a53c0: 35 75 47 e8 c8 3f 1c 00 8b 10 8b c8 8b 82 cc 00
005a53d0: 00 00 56 ff d0 85 c0 74 31 8b 4c 24 14 8b 54 24
005a53e0: 18 8b 74 24 10 81 48 1c 00 00 02 00 57 8b 7c 24
005a53f0: 10 89 88 70 02 00 00 89 90 74 02 00 00 89 b8 78
005a5400: 02 00 00 89 b0 7c 02 00 00 5f 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
005a53b0 <.text+0x1a43b0>:
  5a53b0:	56                                              	push   esi
  5a53b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a53b5:	8b c6                                           	mov    eax,esi
  5a53b7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a53bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a53c1:	75 47                                           	jne    0x5a540a
  5a53c3:	e8 c8 3f 1c 00                                  	call   0x769390
  5a53c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a53ca:	8b c8                                           	mov    ecx,eax
  5a53cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a53d2:	56                                              	push   esi
  5a53d3:	ff d0                                           	call   eax
  5a53d5:	85 c0                                           	test   eax,eax
  5a53d7:	74 31                                           	je     0x5a540a
  5a53d9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a53dd:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5a53e1:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  5a53e5:	81 48 1c 00 00 02 00                            	or     DWORD PTR [eax+0x1c],0x20000
  5a53ec:	57                                              	push   edi
  5a53ed:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5a53f1:	89 88 70 02 00 00                               	mov    DWORD PTR [eax+0x270],ecx
  5a53f7:	89 90 74 02 00 00                               	mov    DWORD PTR [eax+0x274],edx
  5a53fd:	89 b8 78 02 00 00                               	mov    DWORD PTR [eax+0x278],edi
  5a5403:	89 b0 7c 02 00 00                               	mov    DWORD PTR [eax+0x27c],esi
  5a5409:	5f                                              	pop    edi
  5a540a:	5e                                              	pop    esi
  5a540b:	c3                                              	ret
  5a540c:	cc                                              	int3
  5a540d:	cc                                              	int3
  5a540e:	cc                                              	int3
  5a540f:	cc                                              	int3
