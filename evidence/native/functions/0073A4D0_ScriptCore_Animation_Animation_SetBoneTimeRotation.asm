# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a4d0 (ScriptCore.Animation::Animation_SetBoneTimeRotation)
Paired Ghidra pseudocode: 0073A4D0_ScriptCore_Animation_Animation_SetBoneTimeRotation.c
Window: [0x0073a4d0, 0x0073a570) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a4d0: 51 56 e8 99 d0 1f 00 8b 4c 24 10 8b 54 24 0c 51
0073a4e0: 52 8b c8 e8 98 da 1f 00 8b f0 85 f6 74 76 57 8d
0073a4f0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 84
0073a500: d4 1d 01 52 8b ce e8 55 9d 1f 00 85 c0 74 37 68
0073a510: 98 3a 00 00 8b c8 e8 85 26 20 00 85 c0 74 27 8d
0073a520: 48 08 8b 01 8b 50 04 68 68 fb 64 06 ff d2 85 c0
0073a530: 74 14 d9 44 24 1c 51 8b 4c 24 1c d9 1c 24 51 8b
0073a540: c8 e8 2a 25 e3 ff 8b d7 83 c8 ff f0 0f c1 02 48
0073a550: 75 11 b9 01 00 00 00 87 0f 8b 16 8b 02 6a 01 8b
0073a560: ce ff d0 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073a4d0 <.text+0x3394d0>:
  73a4d0:	51                                              	push   ecx
  73a4d1:	56                                              	push   esi
  73a4d2:	e8 99 d0 1f 00                                  	call   0x937570
  73a4d7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73a4db:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  73a4df:	51                                              	push   ecx
  73a4e0:	52                                              	push   edx
  73a4e1:	8b c8                                           	mov    ecx,eax
  73a4e3:	e8 98 da 1f 00                                  	call   0x937f80
  73a4e8:	8b f0                                           	mov    esi,eax
  73a4ea:	85 f6                                           	test   esi,esi
  73a4ec:	74 76                                           	je     0x73a564
  73a4ee:	57                                              	push   edi
  73a4ef:	8d 7e 04                                        	lea    edi,[esi+0x4]
  73a4f2:	8b c7                                           	mov    eax,edi
  73a4f4:	b9 01 00 00 00                                  	mov    ecx,0x1
  73a4f9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73a4fd:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73a503:	52                                              	push   edx
  73a504:	8b ce                                           	mov    ecx,esi
  73a506:	e8 55 9d 1f 00                                  	call   0x934260
  73a50b:	85 c0                                           	test   eax,eax
  73a50d:	74 37                                           	je     0x73a546
  73a50f:	68 98 3a 00 00                                  	push   0x3a98
  73a514:	8b c8                                           	mov    ecx,eax
  73a516:	e8 85 26 20 00                                  	call   0x93cba0
  73a51b:	85 c0                                           	test   eax,eax
  73a51d:	74 27                                           	je     0x73a546
  73a51f:	8d 48 08                                        	lea    ecx,[eax+0x8]
  73a522:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73a524:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  73a527:	68 68 fb 64 06                                  	push   0x664fb68
  73a52c:	ff d2                                           	call   edx
  73a52e:	85 c0                                           	test   eax,eax
  73a530:	74 14                                           	je     0x73a546
  73a532:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  73a536:	51                                              	push   ecx
  73a537:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  73a53b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73a53e:	51                                              	push   ecx
  73a53f:	8b c8                                           	mov    ecx,eax
  73a541:	e8 2a 25 e3 ff                                  	call   0x56ca70
  73a546:	8b d7                                           	mov    edx,edi
  73a548:	83 c8 ff                                        	or     eax,0xffffffff
  73a54b:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  73a54f:	48                                              	dec    eax
  73a550:	75 11                                           	jne    0x73a563
  73a552:	b9 01 00 00 00                                  	mov    ecx,0x1
  73a557:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  73a559:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73a55b:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73a55d:	6a 01                                           	push   0x1
  73a55f:	8b ce                                           	mov    ecx,esi
  73a561:	ff d0                                           	call   eax
  73a563:	5f                                              	pop    edi
  73a564:	5e                                              	pop    esi
  73a565:	59                                              	pop    ecx
  73a566:	c3                                              	ret
  73a567:	cc                                              	int3
  73a568:	cc                                              	int3
  73a569:	cc                                              	int3
  73a56a:	cc                                              	int3
  73a56b:	cc                                              	int3
  73a56c:	cc                                              	int3
  73a56d:	cc                                              	int3
  73a56e:	cc                                              	int3
  73a56f:	cc                                              	int3
