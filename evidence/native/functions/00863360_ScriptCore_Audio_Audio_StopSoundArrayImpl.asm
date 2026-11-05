# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863360 (ScriptCore.Audio::Audio_StopSoundArrayImpl)
Paired Ghidra pseudocode: 00863360_ScriptCore_Audio_Audio_StopSoundArrayImpl.c
Window: [0x00863360, 0x008633b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x008633b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863360: a1 40 9c 1d 01 85 c0 56 57 74 3d 8d b0 30 84 fd
00863370: ff 85 f6 74 33 8b 7c 24 0c 85 ff 74 2b 8b 06 8b
00863380: 50 44 68 c2 0c 32 0a 8b ce ff d2 8b 06 8b 50 4c
00863390: 57 68 85 53 47 03 8b ce ff d2 8b 06 8b 50 68 8b
008633a0: ce ff d2 5f b0 01 5e c3 5f 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
00863360 <.text+0x462360>:
  863360:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  863365:	85 c0                                           	test   eax,eax
  863367:	56                                              	push   esi
  863368:	57                                              	push   edi
  863369:	74 3d                                           	je     0x8633a8
  86336b:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
  863371:	85 f6                                           	test   esi,esi
  863373:	74 33                                           	je     0x8633a8
  863375:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  863379:	85 ff                                           	test   edi,edi
  86337b:	74 2b                                           	je     0x8633a8
  86337d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86337f:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  863382:	68 c2 0c 32 0a                                  	push   0xa320cc2
  863387:	8b ce                                           	mov    ecx,esi
  863389:	ff d2                                           	call   edx
  86338b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86338d:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  863390:	57                                              	push   edi
  863391:	68 85 53 47 03                                  	push   0x3475385
  863396:	8b ce                                           	mov    ecx,esi
  863398:	ff d2                                           	call   edx
  86339a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86339c:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  86339f:	8b ce                                           	mov    ecx,esi
  8633a1:	ff d2                                           	call   edx
  8633a3:	5f                                              	pop    edi
  8633a4:	b0 01                                           	mov    al,0x1
  8633a6:	5e                                              	pop    esi
  8633a7:	c3                                              	ret
  8633a8:	5f                                              	pop    edi
  8633a9:	32 c0                                           	xor    al,al
  8633ab:	5e                                              	pop    esi
  8633ac:	c3                                              	ret
  8633ad:	cc                                              	int3
  8633ae:	cc                                              	int3
  8633af:	cc                                              	int3
