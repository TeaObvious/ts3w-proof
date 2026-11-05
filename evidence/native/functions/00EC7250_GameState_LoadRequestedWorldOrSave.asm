# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00ec7250,0x00ec74c4); analyst name GameState_LoadRequestedWorldOrSave.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec7250 <.text+0xac6250>:
  ec7250:	81 ec 28 04 00 00    	sub    esp,0x428
  ec7256:	53                   	push   ebx
  ec7257:	57                   	push   edi
  ec7258:	8b f9                	mov    edi,ecx
  ec725a:	33 db                	xor    ebx,ebx
  ec725c:	39 5f 20             	cmp    DWORD PTR [edi+0x20],ebx
  ec725f:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  ec7263:	74 0b                	je     0xec7270
  ec7265:	5f                   	pop    edi
  ec7266:	32 c0                	xor    al,al
  ec7268:	5b                   	pop    ebx
  ec7269:	81 c4 28 04 00 00    	add    esp,0x428
  ec726f:	c3                   	ret
  ec7270:	e8 4b 27 be ff       	call   0xaa99c0
  ec7275:	3b c3                	cmp    eax,ebx
  ec7277:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  ec727b:	74 09                	je     0xec7286
  ec727d:	6a 01                	push   0x1
  ec727f:	8b c8                	mov    ecx,eax
  ec7281:	e8 5a 27 be ff       	call   0xaa99e0
  ec7286:	55                   	push   ebp
  ec7287:	8b 6f 10             	mov    ebp,DWORD PTR [edi+0x10]
  ec728a:	56                   	push   esi
  ec728b:	53                   	push   ebx
  ec728c:	53                   	push   ebx
  ec728d:	53                   	push   ebx
  ec728e:	53                   	push   ebx
  ec728f:	68 ec 3d fc 00       	push   0xfc3dec
  ec7294:	53                   	push   ebx
  ec7295:	6a 10                	push   0x10
  ec7297:	8d 77 10             	lea    esi,[edi+0x10]
  ec729a:	68 e0 03 00 00       	push   0x3e0
  ec729f:	e8 7c d2 61 ff       	call   0x4e4520
  ec72a4:	83 c4 20             	add    esp,0x20
  ec72a7:	3b c3                	cmp    eax,ebx
  ec72a9:	74 09                	je     0xec72b4
  ec72ab:	8b c8                	mov    ecx,eax
  ec72ad:	e8 6e fd d9 ff       	call   0xc67020
  ec72b2:	eb 02                	jmp    0xec72b6
  ec72b4:	33 c0                	xor    eax,eax
  ec72b6:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  ec72b9:	b8 e0 57 0f 01       	mov    eax,0x10f57e0
  ec72be:	8b ff                	mov    edi,edi
  ec72c0:	83 c0 02             	add    eax,0x2
  ec72c3:	66 39 18             	cmp    WORD PTR [eax],bx
  ec72c6:	75 f8                	jne    0xec72c0
  ec72c8:	2d e0 57 0f 01       	sub    eax,0x10f57e0
  ec72cd:	d1 f8                	sar    eax,1
  ec72cf:	50                   	push   eax
  ec72d0:	6a ff                	push   0xffffffff
  ec72d2:	68 e0 57 0f 01       	push   0x10f57e0
  ec72d7:	8b ce                	mov    ecx,esi
  ec72d9:	e8 72 34 be ff       	call   0xaaa750
  ec72de:	83 f8 ff             	cmp    eax,0xffffffff
  ec72e1:	0f 84 dd 00 00 00    	je     0xec73c4
  ec72e7:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  ec72eb:	3b f3                	cmp    esi,ebx
  ec72ed:	0f 84 9a 01 00 00    	je     0xec748d
  ec72f3:	55                   	push   ebp
  ec72f4:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  ec72f8:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  ec72fc:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  ec7300:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  ec7304:	c7 44 24 28 d4 57 0f 01 	mov    DWORD PTR [esp+0x28],0x10f57d4
  ec730c:	e8 7f 42 54 ff       	call   0x40b590
  ec7311:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  ec7315:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  ec7319:	e8 c2 d5 a6 ff       	call   0x9348e0
  ec731e:	50                   	push   eax
  ec731f:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  ec7323:	50                   	push   eax
  ec7324:	8b ce                	mov    ecx,esi
  ec7326:	e8 35 41 be ff       	call   0xaab460
  ec732b:	84 c0                	test   al,al
  ec732d:	74 42                	je     0xec7371
  ec732f:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  ec7333:	51                   	push   ecx
  ec7334:	8b ce                	mov    ecx,esi
  ec7336:	e8 05 88 be ff       	call   0xaafb40
  ec733b:	84 c0                	test   al,al
  ec733d:	74 32                	je     0xec7371
  ec733f:	53                   	push   ebx
  ec7340:	6a 01                	push   0x1
  ec7342:	e8 09 5e be ff       	call   0xaad150
  ec7347:	83 c4 08             	add    esp,0x8
  ec734a:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  ec734e:	e8 cd e9 69 ff       	call   0x565d20
  ec7353:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  ec7357:	e8 94 85 62 ff       	call   0x4ef8f0
  ec735c:	53                   	push   ebx
  ec735d:	8b ce                	mov    ecx,esi
  ec735f:	e8 7c 26 be ff       	call   0xaa99e0
  ec7364:	5e                   	pop    esi
  ec7365:	5d                   	pop    ebp
  ec7366:	5f                   	pop    edi
  ec7367:	b0 01                	mov    al,0x1
  ec7369:	5b                   	pop    ebx
  ec736a:	81 c4 28 04 00 00    	add    esp,0x428
  ec7370:	c3                   	ret
  ec7371:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ec7375:	3b c3                	cmp    eax,ebx
  ec7377:	74 1f                	je     0xec7398
  ec7379:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ec737c:	8b c8                	mov    ecx,eax
  ec737e:	83 c0 04             	add    eax,0x4
  ec7381:	83 c2 ff             	add    edx,0xffffffff
  ec7384:	3b d3                	cmp    edx,ebx
  ec7386:	89 10                	mov    DWORD PTR [eax],edx
  ec7388:	75 0e                	jne    0xec7398
  ec738a:	c7 00 01 00 00 00    	mov    DWORD PTR [eax],0x1
  ec7390:	8b 11                	mov    edx,DWORD PTR [ecx]
  ec7392:	8b 02                	mov    eax,DWORD PTR [edx]
  ec7394:	6a 01                	push   0x1
  ec7396:	ff d0                	call   eax
  ec7398:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  ec739c:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  ec73a0:	2b c8                	sub    ecx,eax
  ec73a2:	83 e1 fe             	and    ecx,0xfffffffe
  ec73a5:	83 f9 02             	cmp    ecx,0x2
  ec73a8:	0f 8e df 00 00 00    	jle    0xec748d
  ec73ae:	3b c3                	cmp    eax,ebx
  ec73b0:	0f 84 d7 00 00 00    	je     0xec748d
  ec73b6:	50                   	push   eax
  ec73b7:	e8 24 d1 61 ff       	call   0x4e44e0
  ec73bc:	83 c4 04             	add    esp,0x4
  ec73bf:	e9 c9 00 00 00       	jmp    0xec748d
  ec73c4:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  ec73c8:	e8 13 54 62 ff       	call   0x4ec7e0
  ec73cd:	53                   	push   ebx
  ec73ce:	55                   	push   ebp
  ec73cf:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ec73d3:	e8 28 70 62 ff       	call   0x4ee400
  ec73d8:	55                   	push   ebp
  ec73d9:	e8 92 49 61 ff       	call   0x4dbd70
  ec73de:	83 c4 04             	add    esp,0x4
  ec73e1:	84 c0                	test   al,al
  ec73e3:	75 63                	jne    0xec7448
  ec73e5:	55                   	push   ebp
  ec73e6:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  ec73ea:	e8 71 6b 62 ff       	call   0x4edf60
  ec73ef:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  ec73f4:	33 f6                	xor    esi,esi
  ec73f6:	e8 95 e1 6c ff       	call   0x595590
  ec73fb:	8b f8                	mov    edi,eax
  ec73fd:	3b fb                	cmp    edi,ebx
  ec73ff:	76 43                	jbe    0xec7444
  ec7401:	53                   	push   ebx
  ec7402:	56                   	push   esi
  ec7403:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  ec7408:	e8 a3 e1 6c ff       	call   0x5955b0
  ec740d:	8b 10                	mov    edx,DWORD PTR [eax]
  ec740f:	53                   	push   ebx
  ec7410:	52                   	push   edx
  ec7411:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ec7415:	e8 c6 6f 62 ff       	call   0x4ee3e0
  ec741a:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  ec741e:	e8 7d dd 91 ff       	call   0x7e51a0
  ec7423:	50                   	push   eax
  ec7424:	e8 47 49 61 ff       	call   0x4dbd70
  ec7429:	83 c4 04             	add    esp,0x4
  ec742c:	84 c0                	test   al,al
  ec742e:	75 09                	jne    0xec7439
  ec7430:	83 c6 01             	add    esi,0x1
  ec7433:	3b f7                	cmp    esi,edi
  ec7435:	72 ca                	jb     0xec7401
  ec7437:	eb 0b                	jmp    0xec7444
  ec7439:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  ec743d:	e8 5e dd 91 ff       	call   0x7e51a0
  ec7442:	8b e8                	mov    ebp,eax
  ec7444:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  ec7448:	e8 73 25 be ff       	call   0xaa99c0
  ec744d:	3b c3                	cmp    eax,ebx
  ec744f:	74 38                	je     0xec7489
  ec7451:	38 58 1d             	cmp    BYTE PTR [eax+0x1d],bl
  ec7454:	75 33                	jne    0xec7489
  ec7456:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  ec7459:	55                   	push   ebp
  ec745a:	e8 51 63 da ff       	call   0xc6d7b0
  ec745f:	84 c0                	test   al,al
  ec7461:	74 26                	je     0xec7489
  ec7463:	53                   	push   ebx
  ec7464:	6a 01                	push   0x1
  ec7466:	e8 e5 5c be ff       	call   0xaad150
  ec746b:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  ec746f:	83 c4 08             	add    esp,0x8
  ec7472:	3b cb                	cmp    ecx,ebx
  ec7474:	74 06                	je     0xec747c
  ec7476:	53                   	push   ebx
  ec7477:	e8 64 25 be ff       	call   0xaa99e0
  ec747c:	5e                   	pop    esi
  ec747d:	5d                   	pop    ebp
  ec747e:	5f                   	pop    edi
  ec747f:	b0 01                	mov    al,0x1
  ec7481:	5b                   	pop    ebx
  ec7482:	81 c4 28 04 00 00    	add    esp,0x428
  ec7488:	c3                   	ret
  ec7489:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  ec748d:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  ec7490:	3b cb                	cmp    ecx,ebx
  ec7492:	74 17                	je     0xec74ab
  ec7494:	e8 27 41 da ff       	call   0xc6b5c0
  ec7499:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  ec749c:	3b cb                	cmp    ecx,ebx
  ec749e:	74 08                	je     0xec74a8
  ec74a0:	8b 01                	mov    eax,DWORD PTR [ecx]
  ec74a2:	8b 10                	mov    edx,DWORD PTR [eax]
  ec74a4:	6a 01                	push   0x1
  ec74a6:	ff d2                	call   edx
  ec74a8:	89 5f 20             	mov    DWORD PTR [edi+0x20],ebx
  ec74ab:	3b f3                	cmp    esi,ebx
  ec74ad:	74 08                	je     0xec74b7
  ec74af:	53                   	push   ebx
  ec74b0:	8b ce                	mov    ecx,esi
  ec74b2:	e8 29 25 be ff       	call   0xaa99e0
  ec74b7:	5e                   	pop    esi
  ec74b8:	5d                   	pop    ebp
  ec74b9:	5f                   	pop    edi
  ec74ba:	32 c0                	xor    al,al
  ec74bc:	5b                   	pop    ebx
  ec74bd:	81 c4 28 04 00 00    	add    esp,0x428
  ec74c3:	c3                   	ret
