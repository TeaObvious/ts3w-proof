# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c88280..00c88328; TerrainOptimizer_CopyHeightSamples
  c88280:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  c88284:	53                   	push   ebx
  c88285:	55                   	push   ebp
  c88286:	56                   	push   esi
  c88287:	33 ed                	xor    ebp,ebp
  c88289:	85 d2                	test   edx,edx
  c8828b:	57                   	push   edi
  c8828c:	8b f1                	mov    esi,ecx
  c8828e:	76 49                	jbe    0xc882d9
  c88290:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  c88294:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c88297:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c88299:	0f af c5             	imul   eax,ebp
  c8829c:	8b 09                	mov    ecx,DWORD PTR [ecx]
  c8829e:	8d 04 81             	lea    eax,[ecx+eax*4]
  c882a1:	33 c9                	xor    ecx,ecx
  c882a3:	66 8b 3c 4b          	mov    di,WORD PTR [ebx+ecx*2]
  c882a7:	66 89 38             	mov    WORD PTR [eax],di
  c882aa:	83 c1 01             	add    ecx,0x1
  c882ad:	83 c0 04             	add    eax,0x4
  c882b0:	3b ca                	cmp    ecx,edx
  c882b2:	72 ef                	jb     0xc882a3
  c882b4:	3b 56 08             	cmp    edx,DWORD PTR [esi+0x8]
  c882b7:	0f b7 7c 53 fe       	movzx  edi,WORD PTR [ebx+edx*2-0x2]
  c882bc:	8b ca                	mov    ecx,edx
  c882be:	73 0e                	jae    0xc882ce
  c882c0:	66 89 38             	mov    WORD PTR [eax],di
  c882c3:	83 c1 01             	add    ecx,0x1
  c882c6:	83 c0 04             	add    eax,0x4
  c882c9:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  c882cc:	72 f2                	jb     0xc882c0
  c882ce:	03 5c 24 18          	add    ebx,DWORD PTR [esp+0x18]
  c882d2:	83 c5 01             	add    ebp,0x1
  c882d5:	3b ea                	cmp    ebp,edx
  c882d7:	72 bb                	jb     0xc88294
  c882d9:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c882dc:	8b 3e                	mov    edi,DWORD PTR [esi]
  c882de:	8b 3f                	mov    edi,DWORD PTR [edi]
  c882e0:	8d 4a ff             	lea    ecx,[edx-0x1]
  c882e3:	0f af c8             	imul   ecx,eax
  c882e6:	3b d0                	cmp    edx,eax
  c882e8:	8d 1c 8f             	lea    ebx,[edi+ecx*4]
  c882eb:	8b fa                	mov    edi,edx
  c882ed:	73 28                	jae    0xc88317
  c882ef:	90                   	nop
  c882f0:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c882f3:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c882f5:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
  c882fc:	0f af c7             	imul   eax,edi
  c882ff:	52                   	push   edx
  c88300:	8b 11                	mov    edx,DWORD PTR [ecx]
  c88302:	8d 04 82             	lea    eax,[edx+eax*4]
  c88305:	53                   	push   ebx
  c88306:	50                   	push   eax
  c88307:	e8 7a 6f 2f 00       	call   0xf7f286
  c8830c:	83 c7 01             	add    edi,0x1
  c8830f:	83 c4 0c             	add    esp,0xc
  c88312:	3b 7e 08             	cmp    edi,DWORD PTR [esi+0x8]
  c88315:	72 d9                	jb     0xc882f0
  c88317:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c8831a:	51                   	push   ecx
  c8831b:	8b ce                	mov    ecx,esi
  c8831d:	e8 5e f8 ff ff       	call   0xc87b80
  c88322:	5f                   	pop    edi
  c88323:	5e                   	pop    esi
  c88324:	5d                   	pop    ebp
  c88325:	5b                   	pop    ebx
  c88326:	c2 0c 00             	ret    0xc
