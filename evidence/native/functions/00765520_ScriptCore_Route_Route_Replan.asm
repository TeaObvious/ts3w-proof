# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00765520 (ScriptCore.Route::Route_Replan)
Paired Ghidra pseudocode: 00765520_ScriptCore_Route_Route_Replan.c
Window: [0x00765520, 0x007655e0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x007655e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00765520: 8b 0d c4 50 1d 01 83 ec 48 56 57 33 ff 3b cf 74
00765530: 37 8b 44 24 58 50 e8 75 5f fe ff 8b f0 3b f7 74
00765540: 27 8b 16 8b 42 10 8b ce ff d0 83 86 f4 01 00 00
00765550: 01 8d 4c 24 08 51 8b ce e8 03 ed ff ff 8b 16 8b
00765560: 42 14 8b ce ff d0 eb 55 0f 57 c0 c7 44 24 08 02
00765570: 00 00 00 89 7c 24 0c 89 7c 24 14 f3 0f 11 44 24
00765580: 18 f3 0f 11 44 24 1c f3 0f 11 44 24 20 f3 0f 11
00765590: 44 24 24 89 7c 24 28 89 7c 24 2c 89 7c 24 30 f3
007655a0: 0f 11 44 24 34 f3 0f 11 44 24 38 f3 0f 11 44 24
007655b0: 3c 89 7c 24 40 89 7c 24 44 89 7c 24 48 8b 44 24
007655c0: 54 b9 12 00 00 00 8b f8 8d 74 24 08 f3 a5 5f 5e
007655d0: 83 c4 48 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00765520 <.text+0x364520>:
  765520:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  765526:	83 ec 48                                        	sub    esp,0x48
  765529:	56                                              	push   esi
  76552a:	57                                              	push   edi
  76552b:	33 ff                                           	xor    edi,edi
  76552d:	3b cf                                           	cmp    ecx,edi
  76552f:	74 37                                           	je     0x765568
  765531:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  765535:	50                                              	push   eax
  765536:	e8 75 5f fe ff                                  	call   0x74b4b0
  76553b:	8b f0                                           	mov    esi,eax
  76553d:	3b f7                                           	cmp    esi,edi
  76553f:	74 27                                           	je     0x765568
  765541:	8b 16                                           	mov    edx,DWORD PTR [esi]
  765543:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  765546:	8b ce                                           	mov    ecx,esi
  765548:	ff d0                                           	call   eax
  76554a:	83 86 f4 01 00 00 01                            	add    DWORD PTR [esi+0x1f4],0x1
  765551:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  765555:	51                                              	push   ecx
  765556:	8b ce                                           	mov    ecx,esi
  765558:	e8 03 ed ff ff                                  	call   0x764260
  76555d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76555f:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  765562:	8b ce                                           	mov    ecx,esi
  765564:	ff d0                                           	call   eax
  765566:	eb 55                                           	jmp    0x7655bd
  765568:	0f 57 c0                                        	xorps  xmm0,xmm0
  76556b:	c7 44 24 08 02 00 00 00                         	mov    DWORD PTR [esp+0x8],0x2
  765573:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
  765577:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  76557b:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  765581:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  765587:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  76558d:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  765593:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  765597:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  76559b:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  76559f:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  7655a5:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  7655ab:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  7655b1:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
  7655b5:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  7655b9:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  7655bd:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  7655c1:	b9 12 00 00 00                                  	mov    ecx,0x12
  7655c6:	8b f8                                           	mov    edi,eax
  7655c8:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  7655cc:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7655ce:	5f                                              	pop    edi
  7655cf:	5e                                              	pop    esi
  7655d0:	83 c4 48                                        	add    esp,0x48
  7655d3:	c3                                              	ret
  7655d4:	cc                                              	int3
  7655d5:	cc                                              	int3
  7655d6:	cc                                              	int3
  7655d7:	cc                                              	int3
  7655d8:	cc                                              	int3
  7655d9:	cc                                              	int3
  7655da:	cc                                              	int3
  7655db:	cc                                              	int3
  7655dc:	cc                                              	int3
  7655dd:	cc                                              	int3
  7655de:	cc                                              	int3
  7655df:	cc                                              	int3
