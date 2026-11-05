# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00756250 (ScriptCore.RouteManager::RouteManager_InitShutdownPairedAvoidance)
Paired Ghidra pseudocode: 00756250_ScriptCore_RouteManager_RouteManager_InitShutdownPairedAvoidance.c
Window: [0x00756250, 0x00756360) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x00756360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00756250: 51 56 e8 19 13 1e 00 8b 4c 24 10 8b 54 24 0c 51
00756260: 52 8b c8 e8 18 1d 1e 00 8b f0 85 f6 74 72 57 8d
00756270: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 38
00756280: a1 1e 01 52 8b ce e8 d5 df 1d 00 8b c8 85 c9 74
00756290: 31 80 7c 24 24 00 74 16 8b 44 24 20 8b 54 24 1c
007562a0: 50 8b 44 24 1c 52 50 e8 84 d7 1f 00 eb 14 8b 54
007562b0: 24 20 8b 44 24 1c 52 8b 54 24 1c 50 52 e8 ae db
007562c0: 1f 00 8b c7 83 c9 ff f0 0f c1 08 49 75 11 ba 01
007562d0: 00 00 00 87 17 8b 06 8b 10 6a 01 8b ce ff d2 5f
007562e0: 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
007562f0: 81 7c 24 04 a9 26 34 05 75 52 8b 41 34 85 c0 56
00756300: 57 8d 79 34 74 05 8d 70 f4 eb 05 33 f6 8d 49 00
00756310: 85 ff 74 05 8d 47 f4 eb 02 33 c0 3b f0 74 2b 8b
00756320: 06 8b 50 1c 8b ce ff d2 3c 25 75 12 8d 4e fc 85
00756330: c9 74 0b 83 79 18 00 74 05 e8 c2 bf ff ff 8b 76
00756340: 0c 85 f6 74 c6 83 c6 f4 eb c6 5f 5e b0 01 c2 08
00756350: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00756250 <.text+0x355250>:
  756250:	51                                              	push   ecx
  756251:	56                                              	push   esi
  756252:	e8 19 13 1e 00                                  	call   0x937570
  756257:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  75625b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  75625f:	51                                              	push   ecx
  756260:	52                                              	push   edx
  756261:	8b c8                                           	mov    ecx,eax
  756263:	e8 18 1d 1e 00                                  	call   0x937f80
  756268:	8b f0                                           	mov    esi,eax
  75626a:	85 f6                                           	test   esi,esi
  75626c:	74 72                                           	je     0x7562e0
  75626e:	57                                              	push   edi
  75626f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  756272:	8b c7                                           	mov    eax,edi
  756274:	b9 01 00 00 00                                  	mov    ecx,0x1
  756279:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  75627d:	8b 15 38 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea138
  756283:	52                                              	push   edx
  756284:	8b ce                                           	mov    ecx,esi
  756286:	e8 d5 df 1d 00                                  	call   0x934260
  75628b:	8b c8                                           	mov    ecx,eax
  75628d:	85 c9                                           	test   ecx,ecx
  75628f:	74 31                                           	je     0x7562c2
  756291:	80 7c 24 24 00                                  	cmp    BYTE PTR [esp+0x24],0x0
  756296:	74 16                                           	je     0x7562ae
  756298:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  75629c:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7562a0:	50                                              	push   eax
  7562a1:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7562a5:	52                                              	push   edx
  7562a6:	50                                              	push   eax
  7562a7:	e8 84 d7 1f 00                                  	call   0x953a30
  7562ac:	eb 14                                           	jmp    0x7562c2
  7562ae:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  7562b2:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7562b6:	52                                              	push   edx
  7562b7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7562bb:	50                                              	push   eax
  7562bc:	52                                              	push   edx
  7562bd:	e8 ae db 1f 00                                  	call   0x953e70
  7562c2:	8b c7                                           	mov    eax,edi
  7562c4:	83 c9 ff                                        	or     ecx,0xffffffff
  7562c7:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7562cb:	49                                              	dec    ecx
  7562cc:	75 11                                           	jne    0x7562df
  7562ce:	ba 01 00 00 00                                  	mov    edx,0x1
  7562d3:	87 17                                           	xchg   DWORD PTR [edi],edx
  7562d5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7562d7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7562d9:	6a 01                                           	push   0x1
  7562db:	8b ce                                           	mov    ecx,esi
  7562dd:	ff d2                                           	call   edx
  7562df:	5f                                              	pop    edi
  7562e0:	5e                                              	pop    esi
  7562e1:	59                                              	pop    ecx
  7562e2:	c3                                              	ret
  7562e3:	cc                                              	int3
  7562e4:	cc                                              	int3
  7562e5:	cc                                              	int3
  7562e6:	cc                                              	int3
  7562e7:	cc                                              	int3
  7562e8:	cc                                              	int3
  7562e9:	cc                                              	int3
  7562ea:	cc                                              	int3
  7562eb:	cc                                              	int3
  7562ec:	cc                                              	int3
  7562ed:	cc                                              	int3
  7562ee:	cc                                              	int3
  7562ef:	cc                                              	int3
  7562f0:	81 7c 24 04 a9 26 34 05                         	cmp    DWORD PTR [esp+0x4],0x53426a9
  7562f8:	75 52                                           	jne    0x75634c
  7562fa:	8b 41 34                                        	mov    eax,DWORD PTR [ecx+0x34]
  7562fd:	85 c0                                           	test   eax,eax
  7562ff:	56                                              	push   esi
  756300:	57                                              	push   edi
  756301:	8d 79 34                                        	lea    edi,[ecx+0x34]
  756304:	74 05                                           	je     0x75630b
  756306:	8d 70 f4                                        	lea    esi,[eax-0xc]
  756309:	eb 05                                           	jmp    0x756310
  75630b:	33 f6                                           	xor    esi,esi
  75630d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  756310:	85 ff                                           	test   edi,edi
  756312:	74 05                                           	je     0x756319
  756314:	8d 47 f4                                        	lea    eax,[edi-0xc]
  756317:	eb 02                                           	jmp    0x75631b
  756319:	33 c0                                           	xor    eax,eax
  75631b:	3b f0                                           	cmp    esi,eax
  75631d:	74 2b                                           	je     0x75634a
  75631f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  756321:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  756324:	8b ce                                           	mov    ecx,esi
  756326:	ff d2                                           	call   edx
  756328:	3c 25                                           	cmp    al,0x25
  75632a:	75 12                                           	jne    0x75633e
  75632c:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  75632f:	85 c9                                           	test   ecx,ecx
  756331:	74 0b                                           	je     0x75633e
  756333:	83 79 18 00                                     	cmp    DWORD PTR [ecx+0x18],0x0
  756337:	74 05                                           	je     0x75633e
  756339:	e8 c2 bf ff ff                                  	call   0x752300
  75633e:	8b 76 0c                                        	mov    esi,DWORD PTR [esi+0xc]
  756341:	85 f6                                           	test   esi,esi
  756343:	74 c6                                           	je     0x75630b
  756345:	83 c6 f4                                        	add    esi,0xfffffff4
  756348:	eb c6                                           	jmp    0x756310
  75634a:	5f                                              	pop    edi
  75634b:	5e                                              	pop    esi
  75634c:	b0 01                                           	mov    al,0x1
  75634e:	c2 08 00                                        	ret    0x8
  756351:	cc                                              	int3
  756352:	cc                                              	int3
  756353:	cc                                              	int3
  756354:	cc                                              	int3
  756355:	cc                                              	int3
  756356:	cc                                              	int3
  756357:	cc                                              	int3
  756358:	cc                                              	int3
  756359:	cc                                              	int3
  75635a:	cc                                              	int3
  75635b:	cc                                              	int3
  75635c:	cc                                              	int3
  75635d:	cc                                              	int3
  75635e:	cc                                              	int3
  75635f:	cc                                              	int3
