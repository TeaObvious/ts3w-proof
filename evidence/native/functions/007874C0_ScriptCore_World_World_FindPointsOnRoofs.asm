# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007874c0 (ScriptCore.World::World_FindPointsOnRoofs)
Paired Ghidra pseudocode: 007874C0_ScriptCore_World_World_FindPointsOnRoofs.c
Window: [0x007874c0, 0x00787570) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007874c0: 51 8b 0d c4 db 1e 01 85 c9 55 0f 84 92 00 00 00
007874d0: 8b 44 24 10 8b 54 24 0c 6a 00 50 52 e8 2f b3 4d
007874e0: 00 8b e8 85 ed 74 7b 56 57 8b 7c 24 1c 33 c9 8d
007874f0: 04 7f ba 04 00 00 00 f7 e2 6a 00 0f 90 c1 6a 00
00787500: 6a 00 6a 00 68 a8 18 01 01 c7 44 24 20 00 00 00
00787510: 00 f7 d9 0b c8 51 e8 e5 cf d5 ff 8b f0 56 8d 44
00787520: 24 28 50 57 55 e8 e6 3a 38 00 83 c4 28 84 c0 74
00787530: 21 e8 5a 1e fe ff 8b 4c 24 0c 8b 10 8b 92 a8 00
00787540: 00 00 8d 0c 49 51 8b 4c 24 24 6a 00 56 51 8b c8
00787550: ff d2 56 e8 88 cf d5 ff 83 c4 04 5f 5e b0 01 5d
00787560: 59 c3 32 c0 5d 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007874c0 <.text+0x3864c0>:
  7874c0:	51                                              	push   ecx
  7874c1:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7874c7:	85 c9                                           	test   ecx,ecx
  7874c9:	55                                              	push   ebp
  7874ca:	0f 84 92 00 00 00                               	je     0x787562
  7874d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7874d4:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7874d8:	6a 00                                           	push   0x0
  7874da:	50                                              	push   eax
  7874db:	52                                              	push   edx
  7874dc:	e8 2f b3 4d 00                                  	call   0xc62810
  7874e1:	8b e8                                           	mov    ebp,eax
  7874e3:	85 ed                                           	test   ebp,ebp
  7874e5:	74 7b                                           	je     0x787562
  7874e7:	56                                              	push   esi
  7874e8:	57                                              	push   edi
  7874e9:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  7874ed:	33 c9                                           	xor    ecx,ecx
  7874ef:	8d 04 7f                                        	lea    eax,[edi+edi*2]
  7874f2:	ba 04 00 00 00                                  	mov    edx,0x4
  7874f7:	f7 e2                                           	mul    edx
  7874f9:	6a 00                                           	push   0x0
  7874fb:	0f 90 c1                                        	seto   cl
  7874fe:	6a 00                                           	push   0x0
  787500:	6a 00                                           	push   0x0
  787502:	6a 00                                           	push   0x0
  787504:	68 a8 18 01 01                                  	push   0x10118a8
  787509:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  787511:	f7 d9                                           	neg    ecx
  787513:	0b c8                                           	or     ecx,eax
  787515:	51                                              	push   ecx
  787516:	e8 e5 cf d5 ff                                  	call   0x4e4500
  78751b:	8b f0                                           	mov    esi,eax
  78751d:	56                                              	push   esi
  78751e:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  787522:	50                                              	push   eax
  787523:	57                                              	push   edi
  787524:	55                                              	push   ebp
  787525:	e8 e6 3a 38 00                                  	call   0xb0b010
  78752a:	83 c4 28                                        	add    esp,0x28
  78752d:	84 c0                                           	test   al,al
  78752f:	74 21                                           	je     0x787552
  787531:	e8 5a 1e fe ff                                  	call   0x769390
  787536:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78753a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78753c:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  787542:	8d 0c 49                                        	lea    ecx,[ecx+ecx*2]
  787545:	51                                              	push   ecx
  787546:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  78754a:	6a 00                                           	push   0x0
  78754c:	56                                              	push   esi
  78754d:	51                                              	push   ecx
  78754e:	8b c8                                           	mov    ecx,eax
  787550:	ff d2                                           	call   edx
  787552:	56                                              	push   esi
  787553:	e8 88 cf d5 ff                                  	call   0x4e44e0
  787558:	83 c4 04                                        	add    esp,0x4
  78755b:	5f                                              	pop    edi
  78755c:	5e                                              	pop    esi
  78755d:	b0 01                                           	mov    al,0x1
  78755f:	5d                                              	pop    ebp
  787560:	59                                              	pop    ecx
  787561:	c3                                              	ret
  787562:	32 c0                                           	xor    al,al
  787564:	5d                                              	pop    ebp
  787565:	59                                              	pop    ecx
  787566:	c3                                              	ret
  787567:	cc                                              	int3
  787568:	cc                                              	int3
  787569:	cc                                              	int3
  78756a:	cc                                              	int3
  78756b:	cc                                              	int3
  78756c:	cc                                              	int3
  78756d:	cc                                              	int3
  78756e:	cc                                              	int3
  78756f:	cc                                              	int3
