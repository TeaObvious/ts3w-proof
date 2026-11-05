# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751320 (ScriptCore.RouteEvent::RouteEvent_CreateRouteEvent)
Paired Ghidra pseudocode: 00751320_ScriptCore_RouteEvent_RouteEvent_CreateRouteEvent.c
Window: [0x00751320, 0x007513c0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x007513c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751320: 56 57 e8 69 80 01 00 33 ff 57 57 57 57 68 98 53
00751330: 00 01 6a 70 e8 c7 31 d9 ff 8b f0 83 c4 18 3b f7
00751340: 74 79 c7 06 94 b3 03 01 c7 46 04 78 4a ff 00 33
00751350: c0 8d 4e 08 87 01 0f 57 c0 89 7e 14 89 7e 0c 89
00751360: 7e 10 c7 06 0c 53 00 01 c7 46 04 cc 01 05 01 66
00751370: 89 7e 18 f3 0f 11 46 50 f3 0f 11 46 54 89 7e 58
00751380: 89 7e 5c 89 7e 60 89 7e 64 8b 16 8b 02 8b ce ff
00751390: d0 8b 0d c4 50 1d 01 3b cf 74 17 56 e8 ff d1 ff
007513a0: ff 8b 16 8b 42 04 8b 7e 14 8b ce ff d0 8b c7 5f
007513b0: 5e c3 8b 16 8b 42 04 8b ce ff d0 5f 33 c0 5e c3

LINEAR DISASSEMBLY
00751320 <.text+0x350320>:
  751320:	56                                              	push   esi
  751321:	57                                              	push   edi
  751322:	e8 69 80 01 00                                  	call   0x769390
  751327:	33 ff                                           	xor    edi,edi
  751329:	57                                              	push   edi
  75132a:	57                                              	push   edi
  75132b:	57                                              	push   edi
  75132c:	57                                              	push   edi
  75132d:	68 98 53 00 01                                  	push   0x1005398
  751332:	6a 70                                           	push   0x70
  751334:	e8 c7 31 d9 ff                                  	call   0x4e4500
  751339:	8b f0                                           	mov    esi,eax
  75133b:	83 c4 18                                        	add    esp,0x18
  75133e:	3b f7                                           	cmp    esi,edi
  751340:	74 79                                           	je     0x7513bb
  751342:	c7 06 94 b3 03 01                               	mov    DWORD PTR [esi],0x103b394
  751348:	c7 46 04 78 4a ff 00                            	mov    DWORD PTR [esi+0x4],0xff4a78
  75134f:	33 c0                                           	xor    eax,eax
  751351:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  751354:	87 01                                           	xchg   DWORD PTR [ecx],eax
  751356:	0f 57 c0                                        	xorps  xmm0,xmm0
  751359:	89 7e 14                                        	mov    DWORD PTR [esi+0x14],edi
  75135c:	89 7e 0c                                        	mov    DWORD PTR [esi+0xc],edi
  75135f:	89 7e 10                                        	mov    DWORD PTR [esi+0x10],edi
  751362:	c7 06 0c 53 00 01                               	mov    DWORD PTR [esi],0x100530c
  751368:	c7 46 04 cc 01 05 01                            	mov    DWORD PTR [esi+0x4],0x10501cc
  75136f:	66 89 7e 18                                     	mov    WORD PTR [esi+0x18],di
  751373:	f3 0f 11 46 50                                  	movss  DWORD PTR [esi+0x50],xmm0
  751378:	f3 0f 11 46 54                                  	movss  DWORD PTR [esi+0x54],xmm0
  75137d:	89 7e 58                                        	mov    DWORD PTR [esi+0x58],edi
  751380:	89 7e 5c                                        	mov    DWORD PTR [esi+0x5c],edi
  751383:	89 7e 60                                        	mov    DWORD PTR [esi+0x60],edi
  751386:	89 7e 64                                        	mov    DWORD PTR [esi+0x64],edi
  751389:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75138b:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75138d:	8b ce                                           	mov    ecx,esi
  75138f:	ff d0                                           	call   eax
  751391:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751397:	3b cf                                           	cmp    ecx,edi
  751399:	74 17                                           	je     0x7513b2
  75139b:	56                                              	push   esi
  75139c:	e8 ff d1 ff ff                                  	call   0x74e5a0
  7513a1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7513a3:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7513a6:	8b 7e 14                                        	mov    edi,DWORD PTR [esi+0x14]
  7513a9:	8b ce                                           	mov    ecx,esi
  7513ab:	ff d0                                           	call   eax
  7513ad:	8b c7                                           	mov    eax,edi
  7513af:	5f                                              	pop    edi
  7513b0:	5e                                              	pop    esi
  7513b1:	c3                                              	ret
  7513b2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7513b4:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7513b7:	8b ce                                           	mov    ecx,esi
  7513b9:	ff d0                                           	call   eax
  7513bb:	5f                                              	pop    edi
  7513bc:	33 c0                                           	xor    eax,eax
  7513be:	5e                                              	pop    esi
  7513bf:	c3                                              	ret
