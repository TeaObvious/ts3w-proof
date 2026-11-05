# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784420 (ScriptCore.VideoRecorder::VideoRecorder_GetStatus)
Paired Ghidra pseudocode: 00784420_ScriptCore_VideoRecorder_VideoRecorder_GetStatus.c
Window: [0x00784420, 0x00784470) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784420: e8 6b bb 25 00 85 c0 74 2c 8b 10 8b c8 8b 02 ff
00784430: d0 83 f8 04 77 1f ff 24 85 58 44 78 00 b8 01 00
00784440: 00 00 c3 b8 02 00 00 00 c3 b8 03 00 00 00 c3 b8
00784450: 04 00 00 00 c3 33 c0 c3 55 44 78 00 3d 44 78 00
00784460: 43 44 78 00 49 44 78 00 4f 44 78 00 cc cc cc cc

LINEAR DISASSEMBLY
00784420 <.text+0x383420>:
  784420:	e8 6b bb 25 00                                  	call   0x9dff90
  784425:	85 c0                                           	test   eax,eax
  784427:	74 2c                                           	je     0x784455
  784429:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78442b:	8b c8                                           	mov    ecx,eax
  78442d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78442f:	ff d0                                           	call   eax
  784431:	83 f8 04                                        	cmp    eax,0x4
  784434:	77 1f                                           	ja     0x784455
  784436:	ff 24 85 58 44 78 00                            	jmp    DWORD PTR [eax*4+0x784458]
  78443d:	b8 01 00 00 00                                  	mov    eax,0x1
  784442:	c3                                              	ret
  784443:	b8 02 00 00 00                                  	mov    eax,0x2
  784448:	c3                                              	ret
  784449:	b8 03 00 00 00                                  	mov    eax,0x3
  78444e:	c3                                              	ret
  78444f:	b8 04 00 00 00                                  	mov    eax,0x4
  784454:	c3                                              	ret
  784455:	33 c0                                           	xor    eax,eax
  784457:	c3                                              	ret
  784458:	55                                              	push   ebp
  784459:	44                                              	inc    esp
  78445a:	78 00                                           	js     0x78445c
  78445c:	3d 44 78 00 43                                  	cmp    eax,0x43007844
  784461:	44                                              	inc    esp
  784462:	78 00                                           	js     0x784464
  784464:	49                                              	dec    ecx
  784465:	44                                              	inc    esp
  784466:	78 00                                           	js     0x784468
  784468:	4f                                              	dec    edi
  784469:	44                                              	inc    esp
  78446a:	78 00                                           	js     0x78446c
  78446c:	cc                                              	int3
  78446d:	cc                                              	int3
  78446e:	cc                                              	int3
  78446f:	cc                                              	int3
