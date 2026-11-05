# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079d1e0, 0x0079d406); analyst name ShaderPackage_ReadSPKG.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079d1e0 <.text+0x39c1e0>:
  79d1e0:	83 ec 0c             	sub    esp,0xc
  79d1e3:	55                   	push   ebp
  79d1e4:	56                   	push   esi
  79d1e5:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  79d1e9:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79d1ec:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79d1ef:	8b e9                	mov    ebp,ecx
  79d1f1:	50                   	push   eax
  79d1f2:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  79d1f6:	51                   	push   ecx
  79d1f7:	52                   	push   edx
  79d1f8:	e8 83 07 d4 ff       	call   0x4dd980
  79d1fd:	83 c4 0c             	add    esp,0xc
  79d200:	8b ce                	mov    ecx,esi
  79d202:	50                   	push   eax
  79d203:	e8 e8 a7 03 00       	call   0x7d79f0
  79d208:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79d20b:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79d20e:	50                   	push   eax
  79d20f:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  79d213:	51                   	push   ecx
  79d214:	52                   	push   edx
  79d215:	e8 66 07 d4 ff       	call   0x4dd980
  79d21a:	83 c4 0c             	add    esp,0xc
  79d21d:	8b ce                	mov    ecx,esi
  79d21f:	50                   	push   eax
  79d220:	e8 cb a7 03 00       	call   0x7d79f0
  79d225:	81 7c 24 0c 53 50 4b 47 	cmp    DWORD PTR [esp+0xc],0x474b5053
  79d22d:	0f 85 bc 01 00 00    	jne    0x79d3ef
  79d233:	83 7c 24 08 02       	cmp    DWORD PTR [esp+0x8],0x2
  79d238:	0f 85 b1 01 00 00    	jne    0x79d3ef
  79d23e:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79d241:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79d244:	50                   	push   eax
  79d245:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  79d249:	51                   	push   ecx
  79d24a:	52                   	push   edx
  79d24b:	e8 30 07 d4 ff       	call   0x4dd980
  79d250:	83 c4 0c             	add    esp,0xc
  79d253:	8b ce                	mov    ecx,esi
  79d255:	50                   	push   eax
  79d256:	e8 95 a7 03 00       	call   0x7d79f0
  79d25b:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d25f:	0f 84 8a 01 00 00    	je     0x79d3ef
  79d265:	81 7c 24 18 53 48 44 42 	cmp    DWORD PTR [esp+0x18],0x42444853
  79d26d:	0f 85 7c 01 00 00    	jne    0x79d3ef
  79d273:	53                   	push   ebx
  79d274:	57                   	push   edi
  79d275:	8d 44 24 18          	lea    eax,[esp+0x18]
  79d279:	50                   	push   eax
  79d27a:	8b ce                	mov    ecx,esi
  79d27c:	e8 2f b2 dc ff       	call   0x5684b0
  79d281:	8b ce                	mov    ecx,esi
  79d283:	e8 e8 b1 03 00       	call   0x7d8470
  79d288:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  79d28c:	8b f8                	mov    edi,eax
  79d28e:	03 7c 24 18          	add    edi,DWORD PTR [esp+0x18]
  79d292:	80 7c 24 28 00       	cmp    BYTE PTR [esp+0x28],0x0
  79d297:	74 0f                	je     0x79d2a8
  79d299:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  79d29d:	51                   	push   ecx
  79d29e:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  79d2a1:	53                   	push   ebx
  79d2a2:	56                   	push   esi
  79d2a3:	e8 58 da ff ff       	call   0x79ad00
  79d2a8:	6a 00                	push   0x0
  79d2aa:	57                   	push   edi
  79d2ab:	8b ce                	mov    ecx,esi
  79d2ad:	e8 de b1 03 00       	call   0x7d8490
  79d2b2:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d2b6:	0f 84 13 01 00 00    	je     0x79d3cf
  79d2bc:	8d 54 24 20          	lea    edx,[esp+0x20]
  79d2c0:	52                   	push   edx
  79d2c1:	8b ce                	mov    ecx,esi
  79d2c3:	e8 e8 b1 dc ff       	call   0x5684b0
  79d2c8:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d2cc:	0f 84 f0 00 00 00    	je     0x79d3c2
  79d2d2:	81 7c 24 20 53 4d 44 42 	cmp    DWORD PTR [esp+0x20],0x42444d53
  79d2da:	0f 85 e2 00 00 00    	jne    0x79d3c2
  79d2e0:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  79d2e3:	56                   	push   esi
  79d2e4:	e8 17 dd ff ff       	call   0x79b000
  79d2e9:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d2ed:	0f 84 dc 00 00 00    	je     0x79d3cf
  79d2f3:	8d 44 24 20          	lea    eax,[esp+0x20]
  79d2f7:	50                   	push   eax
  79d2f8:	8b ce                	mov    ecx,esi
  79d2fa:	e8 b1 b1 dc ff       	call   0x5684b0
  79d2ff:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d303:	0f 84 b9 00 00 00    	je     0x79d3c2
  79d309:	81 7c 24 20 53 45 54 53 	cmp    DWORD PTR [esp+0x20],0x53544553
  79d311:	0f 85 ab 00 00 00    	jne    0x79d3c2
  79d317:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  79d31b:	51                   	push   ecx
  79d31c:	56                   	push   esi
  79d31d:	8b cd                	mov    ecx,ebp
  79d31f:	e8 3c fe ff ff       	call   0x79d160
  79d324:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d328:	0f 84 a1 00 00 00    	je     0x79d3cf
  79d32e:	8d 54 24 20          	lea    edx,[esp+0x20]
  79d332:	52                   	push   edx
  79d333:	8b ce                	mov    ecx,esi
  79d335:	e8 76 b1 dc ff       	call   0x5684b0
  79d33a:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d33e:	0f 84 7e 00 00 00    	je     0x79d3c2
  79d344:	81 7c 24 20 53 48 44 53 	cmp    DWORD PTR [esp+0x20],0x53444853
  79d34c:	75 74                	jne    0x79d3c2
  79d34e:	53                   	push   ebx
  79d34f:	56                   	push   esi
  79d350:	8b cd                	mov    ecx,ebp
  79d352:	e8 89 f1 ff ff       	call   0x79c4e0
  79d357:	8d 44 24 20          	lea    eax,[esp+0x20]
  79d35b:	50                   	push   eax
  79d35c:	8b ce                	mov    ecx,esi
  79d35e:	e8 4d b1 dc ff       	call   0x5684b0
  79d363:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d367:	74 59                	je     0x79d3c2
  79d369:	8a 5c 24 2c          	mov    bl,BYTE PTR [esp+0x2c]
  79d36d:	8d 49 00             	lea    ecx,[ecx+0x0]
  79d370:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  79d374:	3d 4b 4e 4d 20       	cmp    eax,0x204d4e4b
  79d379:	75 60                	jne    0x79d3db
  79d37b:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  79d37f:	51                   	push   ecx
  79d380:	8b ce                	mov    ecx,esi
  79d382:	e8 29 b1 dc ff       	call   0x5684b0
  79d387:	8b ce                	mov    ecx,esi
  79d389:	e8 e2 b0 03 00       	call   0x7d8470
  79d38e:	84 db                	test   bl,bl
  79d390:	8b f8                	mov    edi,eax
  79d392:	74 0c                	je     0x79d3a0
  79d394:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79d397:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  79d39a:	52                   	push   edx
  79d39b:	e8 e0 20 f9 ff       	call   0x72f480
  79d3a0:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  79d3a4:	6a 00                	push   0x0
  79d3a6:	03 f8                	add    edi,eax
  79d3a8:	57                   	push   edi
  79d3a9:	8b ce                	mov    ecx,esi
  79d3ab:	e8 e0 b0 03 00       	call   0x7d8490
  79d3b0:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  79d3b4:	51                   	push   ecx
  79d3b5:	8b ce                	mov    ecx,esi
  79d3b7:	e8 f4 b0 dc ff       	call   0x5684b0
  79d3bc:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79d3c0:	75 ae                	jne    0x79d370
  79d3c2:	6a 00                	push   0x0
  79d3c4:	8b ce                	mov    ecx,esi
  79d3c6:	e8 25 a6 03 00       	call   0x7d79f0
  79d3cb:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  79d3cf:	5f                   	pop    edi
  79d3d0:	5b                   	pop    ebx
  79d3d1:	5e                   	pop    esi
  79d3d2:	32 c0                	xor    al,al
  79d3d4:	5d                   	pop    ebp
  79d3d5:	83 c4 0c             	add    esp,0xc
  79d3d8:	c2 14 00             	ret    0x14
  79d3db:	3d 45 4e 44 20       	cmp    eax,0x20444e45
  79d3e0:	75 e0                	jne    0x79d3c2
  79d3e2:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  79d3e5:	5f                   	pop    edi
  79d3e6:	5b                   	pop    ebx
  79d3e7:	5e                   	pop    esi
  79d3e8:	5d                   	pop    ebp
  79d3e9:	83 c4 0c             	add    esp,0xc
  79d3ec:	c2 14 00             	ret    0x14
  79d3ef:	6a 00                	push   0x0
  79d3f1:	8b ce                	mov    ecx,esi
  79d3f3:	e8 f8 a5 03 00       	call   0x7d79f0
  79d3f8:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  79d3fc:	5e                   	pop    esi
  79d3fd:	32 c0                	xor    al,al
  79d3ff:	5d                   	pop    ebp
  79d400:	83 c4 0c             	add    esp,0xc
  79d403:	c2 14 00             	ret    0x14
