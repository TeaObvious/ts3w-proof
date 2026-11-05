# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995490 (ScriptCore.DownloadContent::DownloadContent_GetLocalKeyFromSourceKey)
Paired Ghidra pseudocode: 00995490_ScriptCore_DownloadContent_DownloadContent_GetLocalKeyFromSourceKey.c
Window: [0x00995490, 0x00995530) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995490: 83 ec 40 56 57 e8 c6 d9 fe ff 8b f8 85 ff 0f 84
009954a0: 80 00 00 00 8d 44 24 18 50 8d 4c 24 60 e8 2e 6c
009954b0: dd ff 8b 74 24 6c 8d 4c 24 08 51 8b ce e8 1e 6c
009954c0: dd ff 8d 54 24 28 52 8d 4c 24 50 e8 20 6b dd ff
009954d0: 8d 44 24 08 50 8d 4c 24 1c 51 83 ec 10 8d 54 24
009954e0: 40 8b cc 52 e8 a7 b7 b6 ff 8b cf e8 f0 30 ff ff
009954f0: 84 c0 74 30 8d 44 24 08 50 8d 4c 24 3c 51 e8 cd
00995500: 6a dd ff 8b 10 89 16 8b 48 04 89 4e 04 8b 50 08
00995510: 89 56 08 8b 40 0c 89 46 0c 83 c4 08 b0 01 5f 5e
00995520: 83 c4 40 c3 5f 32 c0 5e 83 c4 40 c3 cc cc cc cc

LINEAR DISASSEMBLY
00995490 <.text+0x594490>:
  995490:	83 ec 40                                        	sub    esp,0x40
  995493:	56                                              	push   esi
  995494:	57                                              	push   edi
  995495:	e8 c6 d9 fe ff                                  	call   0x982e60
  99549a:	8b f8                                           	mov    edi,eax
  99549c:	85 ff                                           	test   edi,edi
  99549e:	0f 84 80 00 00 00                               	je     0x995524
  9954a4:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  9954a8:	50                                              	push   eax
  9954a9:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  9954ad:	e8 2e 6c dd ff                                  	call   0x76c0e0
  9954b2:	8b 74 24 6c                                     	mov    esi,DWORD PTR [esp+0x6c]
  9954b6:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  9954ba:	51                                              	push   ecx
  9954bb:	8b ce                                           	mov    ecx,esi
  9954bd:	e8 1e 6c dd ff                                  	call   0x76c0e0
  9954c2:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  9954c6:	52                                              	push   edx
  9954c7:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  9954cb:	e8 20 6b dd ff                                  	call   0x76bff0
  9954d0:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  9954d4:	50                                              	push   eax
  9954d5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  9954d9:	51                                              	push   ecx
  9954da:	83 ec 10                                        	sub    esp,0x10
  9954dd:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  9954e1:	8b cc                                           	mov    ecx,esp
  9954e3:	52                                              	push   edx
  9954e4:	e8 a7 b7 b6 ff                                  	call   0x500c90
  9954e9:	8b cf                                           	mov    ecx,edi
  9954eb:	e8 f0 30 ff ff                                  	call   0x9885e0
  9954f0:	84 c0                                           	test   al,al
  9954f2:	74 30                                           	je     0x995524
  9954f4:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  9954f8:	50                                              	push   eax
  9954f9:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  9954fd:	51                                              	push   ecx
  9954fe:	e8 cd 6a dd ff                                  	call   0x76bfd0
  995503:	8b 10                                           	mov    edx,DWORD PTR [eax]
  995505:	89 16                                           	mov    DWORD PTR [esi],edx
  995507:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  99550a:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  99550d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  995510:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  995513:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  995516:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  995519:	83 c4 08                                        	add    esp,0x8
  99551c:	b0 01                                           	mov    al,0x1
  99551e:	5f                                              	pop    edi
  99551f:	5e                                              	pop    esi
  995520:	83 c4 40                                        	add    esp,0x40
  995523:	c3                                              	ret
  995524:	5f                                              	pop    edi
  995525:	32 c0                                           	xor    al,al
  995527:	5e                                              	pop    esi
  995528:	83 c4 40                                        	add    esp,0x40
  99552b:	c3                                              	ret
  99552c:	cc                                              	int3
  99552d:	cc                                              	int3
  99552e:	cc                                              	int3
  99552f:	cc                                              	int3
