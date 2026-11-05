# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008633b0 (ScriptCore.Audio::Audio_SetSoundArrayGainImpl)
Paired Ghidra pseudocode: 008633B0_ScriptCore_Audio_Audio_SetSoundArrayGainImpl.c
Window: [0x008633b0, 0x00863420) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008633b0: a1 40 9c 1d 01 85 c0 56 57 74 53 8d b0 30 84 fd
008633c0: ff 85 f6 74 49 8b 7c 24 0c 85 ff 74 41 8b 06 8b
008633d0: 50 44 68 e5 f7 c8 0c 8b ce ff d2 8b 06 8b 50 4c
008633e0: 57 68 85 53 47 03 8b ce ff d2 d9 44 24 10 8b 06
008633f0: 8b 50 48 51 d9 1c 24 68 a4 53 47 03 8b ce ff d2
00863400: 8b 06 8b 50 68 8b ce ff d2 5f b0 01 5e c3 5f 32
00863410: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008633b0 <.text+0x4623b0>:
  8633b0:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  8633b5:	85 c0                                           	test   eax,eax
  8633b7:	56                                              	push   esi
  8633b8:	57                                              	push   edi
  8633b9:	74 53                                           	je     0x86340e
  8633bb:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
  8633c1:	85 f6                                           	test   esi,esi
  8633c3:	74 49                                           	je     0x86340e
  8633c5:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  8633c9:	85 ff                                           	test   edi,edi
  8633cb:	74 41                                           	je     0x86340e
  8633cd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8633cf:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  8633d2:	68 e5 f7 c8 0c                                  	push   0xcc8f7e5
  8633d7:	8b ce                                           	mov    ecx,esi
  8633d9:	ff d2                                           	call   edx
  8633db:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8633dd:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  8633e0:	57                                              	push   edi
  8633e1:	68 85 53 47 03                                  	push   0x3475385
  8633e6:	8b ce                                           	mov    ecx,esi
  8633e8:	ff d2                                           	call   edx
  8633ea:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  8633ee:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8633f0:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  8633f3:	51                                              	push   ecx
  8633f4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8633f7:	68 a4 53 47 03                                  	push   0x34753a4
  8633fc:	8b ce                                           	mov    ecx,esi
  8633fe:	ff d2                                           	call   edx
  863400:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863402:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  863405:	8b ce                                           	mov    ecx,esi
  863407:	ff d2                                           	call   edx
  863409:	5f                                              	pop    edi
  86340a:	b0 01                                           	mov    al,0x1
  86340c:	5e                                              	pop    esi
  86340d:	c3                                              	ret
  86340e:	5f                                              	pop    edi
  86340f:	32 c0                                           	xor    al,al
  863411:	5e                                              	pop    esi
  863412:	c3                                              	ret
  863413:	cc                                              	int3
  863414:	cc                                              	int3
  863415:	cc                                              	int3
  863416:	cc                                              	int3
  863417:	cc                                              	int3
  863418:	cc                                              	int3
  863419:	cc                                              	int3
  86341a:	cc                                              	int3
  86341b:	cc                                              	int3
  86341c:	cc                                              	int3
  86341d:	cc                                              	int3
  86341e:	cc                                              	int3
  86341f:	cc                                              	int3
