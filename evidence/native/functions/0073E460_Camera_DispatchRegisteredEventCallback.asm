# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e460 (Camera_DispatchRegisteredEventCallback)
Paired Ghidra pseudocode: 0073E460_Camera_DispatchRegisteredEventCallback.c
Window: [0x0073e460, 0x0073e540) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e460: 83 ec 40 8b 44 24 48 55 56 c1 e0 05 8b 88 5c 4e
0073e470: 1d 01 33 ed 57 33 f6 33 ff 2b 88 58 4e 1d 01 c7
0073e480: 44 24 0c f4 a6 fb 00 66 89 6c 24 14 66 89 6c 24
0073e490: 16 74 06 8b b0 58 4e 1d 01 8b 90 6c 4e 1d 01 2b
0073e4a0: 90 68 4e 1d 01 74 06 8b b8 68 4e 1d 01 3b f5 74
0073e4b0: 49 3b fd 74 45 e8 d6 ae 02 00 8b 4c 24 5c 8b 10
0073e4c0: 8b 92 38 01 00 00 51 8b 4c 24 5c 51 57 56 8d 4c
0073e4d0: 24 3c 51 8b c8 ff d2 50 8d 4c 24 10 e8 cf 7f db
0073e4e0: ff f6 44 24 34 04 c7 44 24 2c f4 a6 fb 00 74 0a
0073e4f0: 55 8d 4c 24 30 e8 66 72 db ff 8b 74 24 50 8d 44
0073e500: 24 0c 50 8b ce c7 06 f4 a6 fb 00 66 89 6e 08 66
0073e510: 89 6e 0a e8 98 7f db ff f6 44 24 14 04 c7 44 24
0073e520: 0c f4 a6 fb 00 74 0a 55 8d 4c 24 10 e8 2f 72 db
0073e530: ff 5f 8b c6 5e 5d 83 c4 40 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e460 <.text+0x33d460>:
  73e460:	83 ec 40                                        	sub    esp,0x40
  73e463:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  73e467:	55                                              	push   ebp
  73e468:	56                                              	push   esi
  73e469:	c1 e0 05                                        	shl    eax,0x5
  73e46c:	8b 88 5c 4e 1d 01                               	mov    ecx,DWORD PTR [eax+0x11d4e5c]
  73e472:	33 ed                                           	xor    ebp,ebp
  73e474:	57                                              	push   edi
  73e475:	33 f6                                           	xor    esi,esi
  73e477:	33 ff                                           	xor    edi,edi
  73e479:	2b 88 58 4e 1d 01                               	sub    ecx,DWORD PTR [eax+0x11d4e58]
  73e47f:	c7 44 24 0c f4 a6 fb 00                         	mov    DWORD PTR [esp+0xc],0xfba6f4
  73e487:	66 89 6c 24 14                                  	mov    WORD PTR [esp+0x14],bp
  73e48c:	66 89 6c 24 16                                  	mov    WORD PTR [esp+0x16],bp
  73e491:	74 06                                           	je     0x73e499
  73e493:	8b b0 58 4e 1d 01                               	mov    esi,DWORD PTR [eax+0x11d4e58]
  73e499:	8b 90 6c 4e 1d 01                               	mov    edx,DWORD PTR [eax+0x11d4e6c]
  73e49f:	2b 90 68 4e 1d 01                               	sub    edx,DWORD PTR [eax+0x11d4e68]
  73e4a5:	74 06                                           	je     0x73e4ad
  73e4a7:	8b b8 68 4e 1d 01                               	mov    edi,DWORD PTR [eax+0x11d4e68]
  73e4ad:	3b f5                                           	cmp    esi,ebp
  73e4af:	74 49                                           	je     0x73e4fa
  73e4b1:	3b fd                                           	cmp    edi,ebp
  73e4b3:	74 45                                           	je     0x73e4fa
  73e4b5:	e8 d6 ae 02 00                                  	call   0x769390
  73e4ba:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  73e4be:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e4c0:	8b 92 38 01 00 00                               	mov    edx,DWORD PTR [edx+0x138]
  73e4c6:	51                                              	push   ecx
  73e4c7:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  73e4cb:	51                                              	push   ecx
  73e4cc:	57                                              	push   edi
  73e4cd:	56                                              	push   esi
  73e4ce:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  73e4d2:	51                                              	push   ecx
  73e4d3:	8b c8                                           	mov    ecx,eax
  73e4d5:	ff d2                                           	call   edx
  73e4d7:	50                                              	push   eax
  73e4d8:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73e4dc:	e8 cf 7f db ff                                  	call   0x4f64b0
  73e4e1:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
  73e4e6:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  73e4ee:	74 0a                                           	je     0x73e4fa
  73e4f0:	55                                              	push   ebp
  73e4f1:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73e4f5:	e8 66 72 db ff                                  	call   0x4f5760
  73e4fa:	8b 74 24 50                                     	mov    esi,DWORD PTR [esp+0x50]
  73e4fe:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  73e502:	50                                              	push   eax
  73e503:	8b ce                                           	mov    ecx,esi
  73e505:	c7 06 f4 a6 fb 00                               	mov    DWORD PTR [esi],0xfba6f4
  73e50b:	66 89 6e 08                                     	mov    WORD PTR [esi+0x8],bp
  73e50f:	66 89 6e 0a                                     	mov    WORD PTR [esi+0xa],bp
  73e513:	e8 98 7f db ff                                  	call   0x4f64b0
  73e518:	f6 44 24 14 04                                  	test   BYTE PTR [esp+0x14],0x4
  73e51d:	c7 44 24 0c f4 a6 fb 00                         	mov    DWORD PTR [esp+0xc],0xfba6f4
  73e525:	74 0a                                           	je     0x73e531
  73e527:	55                                              	push   ebp
  73e528:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73e52c:	e8 2f 72 db ff                                  	call   0x4f5760
  73e531:	5f                                              	pop    edi
  73e532:	8b c6                                           	mov    eax,esi
  73e534:	5e                                              	pop    esi
  73e535:	5d                                              	pop    ebp
  73e536:	83 c4 40                                        	add    esp,0x40
  73e539:	c3                                              	ret
  73e53a:	cc                                              	int3
  73e53b:	cc                                              	int3
  73e53c:	cc                                              	int3
  73e53d:	cc                                              	int3
  73e53e:	cc                                              	int3
  73e53f:	cc                                              	int3
