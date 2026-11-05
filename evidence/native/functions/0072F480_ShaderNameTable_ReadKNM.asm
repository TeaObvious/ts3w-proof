# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0072f480,0x0072f669); analyst name ShaderNameTable_ReadKNM.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0072f480 <.text+0x32e480>:
  72f480:	81 ec 44 01 00 00    	sub    esp,0x144
  72f486:	55                   	push   ebp
  72f487:	8b ac 24 4c 01 00 00 	mov    ebp,DWORD PTR [esp+0x14c]
  72f48e:	56                   	push   esi
  72f48f:	57                   	push   edi
  72f490:	6a 01                	push   0x1
  72f492:	8b f9                	mov    edi,ecx
  72f494:	55                   	push   ebp
  72f495:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  72f499:	e8 42 9f 0a 00       	call   0x7d93e0
  72f49e:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  72f4a1:	8b 4f 2c             	mov    ecx,DWORD PTR [edi+0x2c]
  72f4a4:	8d 77 28             	lea    esi,[edi+0x28]
  72f4a7:	50                   	push   eax
  72f4a8:	51                   	push   ecx
  72f4a9:	8b ce                	mov    ecx,esi
  72f4ab:	e8 10 ff ff ff       	call   0x72f3c0
  72f4b0:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  72f4b4:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  72f4b8:	52                   	push   edx
  72f4b9:	8d 44 24 34          	lea    eax,[esp+0x34]
  72f4bd:	50                   	push   eax
  72f4be:	51                   	push   ecx
  72f4bf:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
  72f4c6:	e8 b5 e4 da ff       	call   0x4dd980
  72f4cb:	83 c4 0c             	add    esp,0xc
  72f4ce:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  72f4d2:	50                   	push   eax
  72f4d3:	e8 18 85 0a 00       	call   0x7d79f0
  72f4d8:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  72f4dc:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  72f4e0:	52                   	push   edx
  72f4e1:	8d 44 24 18          	lea    eax,[esp+0x18]
  72f4e5:	50                   	push   eax
  72f4e6:	51                   	push   ecx
  72f4e7:	e8 94 e4 da ff       	call   0x4dd980
  72f4ec:	83 c4 0c             	add    esp,0xc
  72f4ef:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  72f4f3:	50                   	push   eax
  72f4f4:	e8 f7 84 0a 00       	call   0x7d79f0
  72f4f9:	80 7c 24 2c 00       	cmp    BYTE PTR [esp+0x2c],0x0
  72f4fe:	0f 84 4e 01 00 00    	je     0x72f652
  72f504:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  72f508:	6a 0c                	push   0xc
  72f50a:	52                   	push   edx
  72f50b:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  72f50f:	e8 ec 84 0a 00       	call   0x7d7a00
  72f514:	84 c0                	test   al,al
  72f516:	0f 84 36 01 00 00    	je     0x72f652
  72f51c:	8d 44 24 50          	lea    eax,[esp+0x50]
  72f520:	33 f6                	xor    esi,esi
  72f522:	39 74 24 14          	cmp    DWORD PTR [esp+0x14],esi
  72f526:	8b c8                	mov    ecx,eax
  72f528:	8d 94 24 50 01 00 00 	lea    edx,[esp+0x150]
  72f52f:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  72f533:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  72f537:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  72f53b:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
  72f53f:	c7 44 24 48 10 ec ff 00 	mov    DWORD PTR [esp+0x48],0xffec10
  72f547:	0f 86 c4 00 00 00    	jbe    0x72f611
  72f54d:	8d 49 00             	lea    ecx,[ecx+0x0]
  72f550:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  72f554:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  72f558:	50                   	push   eax
  72f559:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  72f55d:	51                   	push   ecx
  72f55e:	52                   	push   edx
  72f55f:	e8 4c e5 da ff       	call   0x4ddab0
  72f564:	83 c4 0c             	add    esp,0xc
  72f567:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  72f56b:	50                   	push   eax
  72f56c:	e8 7f 84 0a 00       	call   0x7d79f0
  72f571:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  72f575:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  72f579:	50                   	push   eax
  72f57a:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  72f57e:	51                   	push   ecx
  72f57f:	52                   	push   edx
  72f580:	e8 fb e3 da ff       	call   0x4dd980
  72f585:	83 c4 0c             	add    esp,0xc
  72f588:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  72f58c:	50                   	push   eax
  72f58d:	e8 5e 84 0a 00       	call   0x7d79f0
  72f592:	80 7c 24 2c 00       	cmp    BYTE PTR [esp+0x2c],0x0
  72f597:	0f 84 9e 00 00 00    	je     0x72f63b
  72f59d:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  72f5a1:	6a 01                	push   0x1
  72f5a3:	50                   	push   eax
  72f5a4:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  72f5a8:	e8 53 84 0a 00       	call   0x7d7a00
  72f5ad:	84 c0                	test   al,al
  72f5af:	0f 84 86 00 00 00    	je     0x72f63b
  72f5b5:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  72f5b9:	8d 4c 24 0f          	lea    ecx,[esp+0xf]
  72f5bd:	51                   	push   ecx
  72f5be:	83 c2 01             	add    edx,0x1
  72f5c1:	52                   	push   edx
  72f5c2:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  72f5c6:	c6 44 24 17 00       	mov    BYTE PTR [esp+0x17],0x0
  72f5cb:	e8 50 fe ff ff       	call   0x72f420
  72f5d0:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  72f5d4:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  72f5d8:	c6 04 01 00          	mov    BYTE PTR [ecx+eax*1],0x0
  72f5dc:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  72f5e0:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  72f5e4:	52                   	push   edx
  72f5e5:	50                   	push   eax
  72f5e6:	55                   	push   ebp
  72f5e7:	e8 c4 e2 da ff       	call   0x4dd8b0
  72f5ec:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  72f5f0:	83 c4 0c             	add    esp,0xc
  72f5f3:	51                   	push   ecx
  72f5f4:	8d 54 24 38          	lea    edx,[esp+0x38]
  72f5f8:	52                   	push   edx
  72f5f9:	8b cf                	mov    ecx,edi
  72f5fb:	e8 40 fd ff ff       	call   0x72f340
  72f600:	83 c6 01             	add    esi,0x1
  72f603:	3b 74 24 14          	cmp    esi,DWORD PTR [esp+0x14]
  72f607:	0f 82 43 ff ff ff    	jb     0x72f550
  72f60d:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  72f611:	85 c0                	test   eax,eax
  72f613:	74 0f                	je     0x72f624
  72f615:	3b 44 24 4c          	cmp    eax,DWORD PTR [esp+0x4c]
  72f619:	74 09                	je     0x72f624
  72f61b:	50                   	push   eax
  72f61c:	e8 bf 4e db ff       	call   0x4e44e0
  72f621:	83 c4 04             	add    esp,0x4
  72f624:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  72f628:	e8 63 83 0a 00       	call   0x7d7990
  72f62d:	5f                   	pop    edi
  72f62e:	5e                   	pop    esi
  72f62f:	b0 01                	mov    al,0x1
  72f631:	5d                   	pop    ebp
  72f632:	81 c4 44 01 00 00    	add    esp,0x144
  72f638:	c2 04 00             	ret    0x4
  72f63b:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  72f63f:	85 c0                	test   eax,eax
  72f641:	74 0f                	je     0x72f652
  72f643:	3b 44 24 4c          	cmp    eax,DWORD PTR [esp+0x4c]
  72f647:	74 09                	je     0x72f652
  72f649:	50                   	push   eax
  72f64a:	e8 91 4e db ff       	call   0x4e44e0
  72f64f:	83 c4 04             	add    esp,0x4
  72f652:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  72f656:	e8 35 83 0a 00       	call   0x7d7990
  72f65b:	5f                   	pop    edi
  72f65c:	5e                   	pop    esi
  72f65d:	32 c0                	xor    al,al
  72f65f:	5d                   	pop    ebp
  72f660:	81 c4 44 01 00 00    	add    esp,0x144
  72f666:	c2 04 00             	ret    0x4
