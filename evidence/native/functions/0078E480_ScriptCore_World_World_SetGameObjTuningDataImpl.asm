# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e480 (ScriptCore.World::World_SetGameObjTuningDataImpl)
Paired Ghidra pseudocode: 0078E480_ScriptCore_World_World_SetGameObjTuningDataImpl.c
Window: [0x0078e480, 0x0078e530) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e480: 83 ec 0c 57 8b 7c 24 1c 85 ff 0f 84 81 00 00 00
0078e490: e8 db 90 1a 00 85 c0 74 78 8b 4c 24 18 8b 54 24
0078e4a0: 14 51 52 8b c8 e8 d6 9a 1a 00 85 c0 89 44 24 1c
0078e4b0: 74 64 8d 48 04 ba 01 00 00 00 f0 0f c1 11 56 8b
0078e4c0: c8 e8 6a 0c f0 ff 8b f0 85 f6 74 3b e8 bf ae fd
0078e4d0: ff 85 c0 74 32 8b 10 8b 52 70 8d 4c 24 08 51 8d
0078e4e0: 4c 24 14 51 57 8b c8 ff d2 8b 44 24 08 8b 54 24
0078e4f0: 10 8d 4c 24 0c 51 89 44 24 10 52 8d 44 24 20 50
0078e500: 8b ce e8 d9 39 4e 00 8d 4c 24 20 e8 d0 7d fb ff
0078e510: 5e 5f 83 c4 0c c3 8d 4c 24 1c e8 c1 7d fb ff 5f
0078e520: 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e480 <.text+0x38d480>:
  78e480:	83 ec 0c                                        	sub    esp,0xc
  78e483:	57                                              	push   edi
  78e484:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  78e488:	85 ff                                           	test   edi,edi
  78e48a:	0f 84 81 00 00 00                               	je     0x78e511
  78e490:	e8 db 90 1a 00                                  	call   0x937570
  78e495:	85 c0                                           	test   eax,eax
  78e497:	74 78                                           	je     0x78e511
  78e499:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78e49d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  78e4a1:	51                                              	push   ecx
  78e4a2:	52                                              	push   edx
  78e4a3:	8b c8                                           	mov    ecx,eax
  78e4a5:	e8 d6 9a 1a 00                                  	call   0x937f80
  78e4aa:	85 c0                                           	test   eax,eax
  78e4ac:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  78e4b0:	74 64                                           	je     0x78e516
  78e4b2:	8d 48 04                                        	lea    ecx,[eax+0x4]
  78e4b5:	ba 01 00 00 00                                  	mov    edx,0x1
  78e4ba:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  78e4be:	56                                              	push   esi
  78e4bf:	8b c8                                           	mov    ecx,eax
  78e4c1:	e8 6a 0c f0 ff                                  	call   0x68f130
  78e4c6:	8b f0                                           	mov    esi,eax
  78e4c8:	85 f6                                           	test   esi,esi
  78e4ca:	74 3b                                           	je     0x78e507
  78e4cc:	e8 bf ae fd ff                                  	call   0x769390
  78e4d1:	85 c0                                           	test   eax,eax
  78e4d3:	74 32                                           	je     0x78e507
  78e4d5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e4d7:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  78e4da:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  78e4de:	51                                              	push   ecx
  78e4df:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78e4e3:	51                                              	push   ecx
  78e4e4:	57                                              	push   edi
  78e4e5:	8b c8                                           	mov    ecx,eax
  78e4e7:	ff d2                                           	call   edx
  78e4e9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78e4ed:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  78e4f1:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78e4f5:	51                                              	push   ecx
  78e4f6:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  78e4fa:	52                                              	push   edx
  78e4fb:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  78e4ff:	50                                              	push   eax
  78e500:	8b ce                                           	mov    ecx,esi
  78e502:	e8 d9 39 4e 00                                  	call   0xc71ee0
  78e507:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  78e50b:	e8 d0 7d fb ff                                  	call   0x7462e0
  78e510:	5e                                              	pop    esi
  78e511:	5f                                              	pop    edi
  78e512:	83 c4 0c                                        	add    esp,0xc
  78e515:	c3                                              	ret
  78e516:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  78e51a:	e8 c1 7d fb ff                                  	call   0x7462e0
  78e51f:	5f                                              	pop    edi
  78e520:	83 c4 0c                                        	add    esp,0xc
  78e523:	c3                                              	ret
  78e524:	cc                                              	int3
  78e525:	cc                                              	int3
  78e526:	cc                                              	int3
  78e527:	cc                                              	int3
  78e528:	cc                                              	int3
  78e529:	cc                                              	int3
  78e52a:	cc                                              	int3
  78e52b:	cc                                              	int3
  78e52c:	cc                                              	int3
  78e52d:	cc                                              	int3
  78e52e:	cc                                              	int3
  78e52f:	cc                                              	int3
