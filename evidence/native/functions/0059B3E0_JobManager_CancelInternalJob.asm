# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059b3e0..0059b506; JobManager_CancelInternalJob
  59b3e0:	81 ec 9c 00 00 00    	sub    esp,0x9c
  59b3e6:	53                   	push   ebx
  59b3e7:	8b 9c 24 a4 00 00 00 	mov    ebx,DWORD PTR [esp+0xa4]
  59b3ee:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  59b3f1:	83 c0 ff             	add    eax,0xffffffff
  59b3f4:	83 f8 06             	cmp    eax,0x6
  59b3f7:	55                   	push   ebp
  59b3f8:	8b e9                	mov    ebp,ecx
  59b3fa:	c6 44 24 0b 00       	mov    BYTE PTR [esp+0xb],0x0
  59b3ff:	0f 87 f3 00 00 00    	ja     0x59b4f8
  59b405:	ff 24 85 08 b5 59 00 	jmp    DWORD PTR [eax*4+0x59b508]
  59b40c:	8d 44 24 24          	lea    eax,[esp+0x24]
  59b410:	8b c8                	mov    ecx,eax
  59b412:	8b d0                	mov    edx,eax
  59b414:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  59b418:	8d 84 24 a4 00 00 00 	lea    eax,[esp+0xa4]
  59b41f:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  59b423:	8d 43 38             	lea    eax,[ebx+0x38]
  59b426:	56                   	push   esi
  59b427:	8b 30                	mov    esi,DWORD PTR [eax]
  59b429:	3b f0                	cmp    esi,eax
  59b42b:	57                   	push   edi
  59b42c:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  59b430:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  59b434:	c7 44 24 24 04 a9 fd 00 	mov    DWORD PTR [esp+0x24],0xfda904
  59b43c:	74 36                	je     0x59b474
  59b43e:	8b ff                	mov    edi,edi
  59b440:	8b 7e 10             	mov    edi,DWORD PTR [esi+0x10]
  59b443:	80 7f 4d 00          	cmp    BYTE PTR [edi+0x4d],0x0
  59b447:	74 22                	je     0x59b46b
  59b449:	8b 4f 40             	mov    ecx,DWORD PTR [edi+0x40]
  59b44c:	3b 4f 44             	cmp    ecx,DWORD PTR [edi+0x44]
  59b44f:	75 1a                	jne    0x59b46b
  59b451:	8d 54 24 14          	lea    edx,[esp+0x14]
  59b455:	52                   	push   edx
  59b456:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  59b45a:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  59b45e:	e8 4d ff ff ff       	call   0x59b3b0
  59b463:	8d 4f 08             	lea    ecx,[edi+0x8]
  59b466:	e8 b5 e9 ff ff       	call   0x599e20
  59b46b:	8b 36                	mov    esi,DWORD PTR [esi]
  59b46d:	8d 43 38             	lea    eax,[ebx+0x38]
  59b470:	3b f0                	cmp    esi,eax
  59b472:	75 cc                	jne    0x59b440
  59b474:	6a 01                	push   0x1
  59b476:	53                   	push   ebx
  59b477:	8b cd                	mov    ecx,ebp
  59b479:	e8 82 fa ff ff       	call   0x59af00
  59b47e:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  59b482:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  59b486:	3b c8                	cmp    ecx,eax
  59b488:	74 2d                	je     0x59b4b7
  59b48a:	8b bc 24 b4 00 00 00 	mov    edi,DWORD PTR [esp+0xb4]
  59b491:	8b 70 fc             	mov    esi,DWORD PTR [eax-0x4]
  59b494:	83 c0 fc             	add    eax,0xfffffffc
  59b497:	57                   	push   edi
  59b498:	56                   	push   esi
  59b499:	8b cd                	mov    ecx,ebp
  59b49b:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  59b49f:	e8 3c ff ff ff       	call   0x59b3e0
  59b4a4:	8b ce                	mov    ecx,esi
  59b4a6:	e8 15 fd ff ff       	call   0x59b1c0
  59b4ab:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  59b4af:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  59b4b3:	3b c8                	cmp    ecx,eax
  59b4b5:	75 da                	jne    0x59b491
  59b4b7:	85 c9                	test   ecx,ecx
  59b4b9:	5f                   	pop    edi
  59b4ba:	5e                   	pop    esi
  59b4bb:	74 0f                	je     0x59b4cc
  59b4bd:	3b 4c 24 20          	cmp    ecx,DWORD PTR [esp+0x20]
  59b4c1:	74 09                	je     0x59b4cc
  59b4c3:	51                   	push   ecx
  59b4c4:	e8 17 90 f4 ff       	call   0x4e44e0
  59b4c9:	83 c4 04             	add    esp,0x4
  59b4cc:	c6 44 24 0b 01       	mov    BYTE PTR [esp+0xb],0x1
  59b4d1:	8a 44 24 0b          	mov    al,BYTE PTR [esp+0xb]
  59b4d5:	5d                   	pop    ebp
  59b4d6:	5b                   	pop    ebx
  59b4d7:	81 c4 9c 00 00 00    	add    esp,0x9c
  59b4dd:	c2 08 00             	ret    0x8
  59b4e0:	53                   	push   ebx
  59b4e1:	e8 8a ed ff ff       	call   0x59a270
  59b4e6:	80 bc 24 ac 00 00 00 00 	cmp    BYTE PTR [esp+0xac],0x0
  59b4ee:	74 08                	je     0x59b4f8
  59b4f0:	53                   	push   ebx
  59b4f1:	8b cd                	mov    ecx,ebp
  59b4f3:	e8 e8 f6 ff ff       	call   0x59abe0
  59b4f8:	8a 44 24 0b          	mov    al,BYTE PTR [esp+0xb]
  59b4fc:	5d                   	pop    ebp
  59b4fd:	5b                   	pop    ebx
  59b4fe:	81 c4 9c 00 00 00    	add    esp,0x9c
  59b504:	c2 08 00             	ret    0x8
