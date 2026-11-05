# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060e000 <.text+0x20d000>:
  60e000:	55                   	push   ebp
  60e001:	8b ec                	mov    ebp,esp
  60e003:	81 ec 04 01 00 00    	sub    esp,0x104
  60e009:	68 80 00 00 00       	push   0x80
  60e00e:	8d 85 58 ff ff ff    	lea    eax,[ebp-0xa8]
  60e014:	50                   	push   eax
  60e015:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60e018:	8b 11                	mov    edx,DWORD PTR [ecx]
  60e01a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60e01d:	8b 42 30             	mov    eax,DWORD PTR [edx+0x30]
  60e020:	ff d0                	call   eax
  60e022:	3d 80 00 00 00       	cmp    eax,0x80
  60e027:	74 07                	je     0x60e030
  60e029:	32 c0                	xor    al,al
  60e02b:	e9 27 08 00 00       	jmp    0x60e857
  60e030:	c6 45 fb 00          	mov    BYTE PTR [ebp-0x5],0x0
  60e034:	81 bd 58 ff ff ff 20 	cmp    DWORD PTR [ebp-0xa8],0x44445320
  60e03b:	53 44 44 
  60e03e:	75 1f                	jne    0x60e05f
  60e040:	68 80 00 00 00       	push   0x80
  60e045:	8d 8d 58 ff ff ff    	lea    ecx,[ebp-0xa8]
  60e04b:	51                   	push   ecx
  60e04c:	8d 95 58 ff ff ff    	lea    edx,[ebp-0xa8]
  60e052:	52                   	push   edx
  60e053:	e8 d8 f3 ff ff       	call   0x60d430
  60e058:	83 c4 0c             	add    esp,0xc
  60e05b:	c6 45 fb 00          	mov    BYTE PTR [ebp-0x5],0x0
  60e05f:	81 bd 58 ff ff ff 44 	cmp    DWORD PTR [ebp-0xa8],0x20534444
  60e066:	44 53 20 
  60e069:	75 1e                	jne    0x60e089
  60e06b:	83 bd 5c ff ff ff 7c 	cmp    DWORD PTR [ebp-0xa4],0x7c
  60e072:	75 15                	jne    0x60e089
  60e074:	8b 85 60 ff ff ff    	mov    eax,DWORD PTR [ebp-0xa0]
  60e07a:	f7 d0                	not    eax
  60e07c:	25 07 10 00 00       	and    eax,0x1007
  60e081:	75 06                	jne    0x60e089
  60e083:	83 7d a4 20          	cmp    DWORD PTR [ebp-0x5c],0x20
  60e087:	74 07                	je     0x60e090
  60e089:	32 c0                	xor    al,al
  60e08b:	e9 c7 07 00 00       	jmp    0x60e857
  60e090:	8b 8d 68 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x98]
  60e096:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
  60e099:	8b 95 64 ff ff ff    	mov    edx,DWORD PTR [ebp-0x9c]
  60e09f:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
  60e0a2:	8b 85 60 ff ff ff    	mov    eax,DWORD PTR [ebp-0xa0]
  60e0a8:	25 00 00 80 00       	and    eax,0x800000
  60e0ad:	74 0e                	je     0x60e0bd
  60e0af:	8b 8d 70 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x90]
  60e0b5:	89 8d 04 ff ff ff    	mov    DWORD PTR [ebp-0xfc],ecx
  60e0bb:	eb 0a                	jmp    0x60e0c7
  60e0bd:	c7 85 04 ff ff ff 01 	mov    DWORD PTR [ebp-0xfc],0x1
  60e0c4:	00 00 00 
  60e0c7:	8b 95 04 ff ff ff    	mov    edx,DWORD PTR [ebp-0xfc]
  60e0cd:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
  60e0d0:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  60e0d3:	25 00 02 00 00       	and    eax,0x200
  60e0d8:	f7 d8                	neg    eax
  60e0da:	1b c0                	sbb    eax,eax
  60e0dc:	83 e0 05             	and    eax,0x5
  60e0df:	83 c0 01             	add    eax,0x1
  60e0e2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  60e0e5:	8b 8d 60 ff ff ff    	mov    ecx,DWORD PTR [ebp-0xa0]
  60e0eb:	81 e1 00 00 02 00    	and    ecx,0x20000
  60e0f1:	74 0e                	je     0x60e101
  60e0f3:	8b 95 74 ff ff ff    	mov    edx,DWORD PTR [ebp-0x8c]
  60e0f9:	89 95 00 ff ff ff    	mov    DWORD PTR [ebp-0x100],edx
  60e0ff:	eb 0a                	jmp    0x60e10b
  60e101:	c7 85 00 ff ff ff 01 	mov    DWORD PTR [ebp-0x100],0x1
  60e108:	00 00 00 
  60e10b:	8b 85 00 ff ff ff    	mov    eax,DWORD PTR [ebp-0x100]
  60e111:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  60e114:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  60e11b:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
  60e11e:	83 e1 04             	and    ecx,0x4
  60e121:	0f 84 ad 01 00 00    	je     0x60e2d4
  60e127:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
  60e12a:	89 95 fc fe ff ff    	mov    DWORD PTR [ebp-0x104],edx
  60e130:	81 bd fc fe ff ff 44 	cmp    DWORD PTR [ebp-0x104],0x31545844
  60e137:	58 54 31 
  60e13a:	77 40                	ja     0x60e17c
  60e13c:	81 bd fc fe ff ff 44 	cmp    DWORD PTR [ebp-0x104],0x31545844
  60e143:	58 54 31 
  60e146:	0f 84 19 01 00 00    	je     0x60e265
  60e14c:	8b 85 fc fe ff ff    	mov    eax,DWORD PTR [ebp-0x104]
  60e152:	83 e8 14             	sub    eax,0x14
  60e155:	89 85 fc fe ff ff    	mov    DWORD PTR [ebp-0x104],eax
  60e15b:	83 bd fc fe ff ff 60 	cmp    DWORD PTR [ebp-0x104],0x60
  60e162:	0f 87 60 01 00 00    	ja     0x60e2c8
  60e168:	8b 8d fc fe ff ff    	mov    ecx,DWORD PTR [ebp-0x104]
  60e16e:	0f b6 91 ac e8 60 00 	movzx  edx,BYTE PTR [ecx+0x60e8ac]
  60e175:	ff 24 95 5c e8 60 00 	jmp    DWORD PTR [edx*4+0x60e85c]
  60e17c:	81 bd fc fe ff ff 44 	cmp    DWORD PTR [ebp-0x104],0x34545844
  60e183:	58 54 34 
  60e186:	77 35                	ja     0x60e1bd
  60e188:	81 bd fc fe ff ff 44 	cmp    DWORD PTR [ebp-0x104],0x34545844
  60e18f:	58 54 34 
  60e192:	0f 84 e8 00 00 00    	je     0x60e280
  60e198:	81 bd fc fe ff ff 44 	cmp    DWORD PTR [ebp-0x104],0x32545844
  60e19f:	58 54 32 
  60e1a2:	0f 84 c6 00 00 00    	je     0x60e26e
  60e1a8:	81 bd fc fe ff ff 44 	cmp    DWORD PTR [ebp-0x104],0x33545844
  60e1af:	58 54 33 
  60e1b2:	0f 84 bf 00 00 00    	je     0x60e277
  60e1b8:	e9 0b 01 00 00       	jmp    0x60e2c8
  60e1bd:	81 bd fc fe ff ff 44 	cmp    DWORD PTR [ebp-0x104],0x35545844
  60e1c4:	58 54 35 
  60e1c7:	0f 84 bc 00 00 00    	je     0x60e289
  60e1cd:	e9 f6 00 00 00       	jmp    0x60e2c8
  60e1d2:	c7 45 f0 0e 00 00 00 	mov    DWORD PTR [ebp-0x10],0xe
  60e1d9:	e9 f1 00 00 00       	jmp    0x60e2cf
  60e1de:	c7 45 f0 10 00 00 00 	mov    DWORD PTR [ebp-0x10],0x10
  60e1e5:	e9 e5 00 00 00       	jmp    0x60e2cf
  60e1ea:	c7 45 f0 24 00 00 00 	mov    DWORD PTR [ebp-0x10],0x24
  60e1f1:	e9 d9 00 00 00       	jmp    0x60e2cf
  60e1f6:	c7 45 f0 18 00 00 00 	mov    DWORD PTR [ebp-0x10],0x18
  60e1fd:	e9 cd 00 00 00       	jmp    0x60e2cf
  60e202:	c7 45 f0 1a 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1a
  60e209:	e9 c1 00 00 00       	jmp    0x60e2cf
  60e20e:	c7 45 f0 12 00 00 00 	mov    DWORD PTR [ebp-0x10],0x12
  60e215:	e9 b5 00 00 00       	jmp    0x60e2cf
  60e21a:	c7 45 f0 1c 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1c
  60e221:	e9 a9 00 00 00       	jmp    0x60e2cf
  60e226:	c7 45 f0 1e 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1e
  60e22d:	e9 9d 00 00 00       	jmp    0x60e2cf
  60e232:	c7 45 f0 96 00 00 00 	mov    DWORD PTR [ebp-0x10],0x96
  60e239:	e9 91 00 00 00       	jmp    0x60e2cf
  60e23e:	c7 45 f0 40 00 00 00 	mov    DWORD PTR [ebp-0x10],0x40
  60e245:	e9 85 00 00 00       	jmp    0x60e2cf
  60e24a:	c7 45 f0 3e 00 00 00 	mov    DWORD PTR [ebp-0x10],0x3e
  60e251:	eb 7c                	jmp    0x60e2cf
  60e253:	c7 45 f0 4a 00 00 00 	mov    DWORD PTR [ebp-0x10],0x4a
  60e25a:	eb 73                	jmp    0x60e2cf
  60e25c:	c7 45 f0 48 00 00 00 	mov    DWORD PTR [ebp-0x10],0x48
  60e263:	eb 6a                	jmp    0x60e2cf
  60e265:	c7 45 f0 02 00 00 00 	mov    DWORD PTR [ebp-0x10],0x2
  60e26c:	eb 61                	jmp    0x60e2cf
  60e26e:	c7 45 f0 04 00 00 00 	mov    DWORD PTR [ebp-0x10],0x4
  60e275:	eb 58                	jmp    0x60e2cf
  60e277:	c7 45 f0 06 00 00 00 	mov    DWORD PTR [ebp-0x10],0x6
  60e27e:	eb 4f                	jmp    0x60e2cf
  60e280:	c7 45 f0 08 00 00 00 	mov    DWORD PTR [ebp-0x10],0x8
  60e287:	eb 46                	jmp    0x60e2cf
  60e289:	c7 45 f0 0a 00 00 00 	mov    DWORD PTR [ebp-0x10],0xa
  60e290:	eb 3d                	jmp    0x60e2cf
  60e292:	c7 45 f0 2e 00 00 00 	mov    DWORD PTR [ebp-0x10],0x2e
  60e299:	eb 34                	jmp    0x60e2cf
  60e29b:	c7 45 f0 5e 00 00 00 	mov    DWORD PTR [ebp-0x10],0x5e
  60e2a2:	eb 2b                	jmp    0x60e2cf
  60e2a4:	c7 45 f0 6a 00 00 00 	mov    DWORD PTR [ebp-0x10],0x6a
  60e2ab:	eb 22                	jmp    0x60e2cf
  60e2ad:	c7 45 f0 64 00 00 00 	mov    DWORD PTR [ebp-0x10],0x64
  60e2b4:	eb 19                	jmp    0x60e2cf
  60e2b6:	c7 45 f0 74 00 00 00 	mov    DWORD PTR [ebp-0x10],0x74
  60e2bd:	eb 10                	jmp    0x60e2cf
  60e2bf:	c7 45 f0 7a 00 00 00 	mov    DWORD PTR [ebp-0x10],0x7a
  60e2c6:	eb 07                	jmp    0x60e2cf
  60e2c8:	32 c0                	xor    al,al
  60e2ca:	e9 88 05 00 00       	jmp    0x60e857
  60e2cf:	e9 57 04 00 00       	jmp    0x60e72b
  60e2d4:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60e2d7:	25 00 00 02 00       	and    eax,0x20000
  60e2dc:	0f 84 85 00 00 00    	je     0x60e367
  60e2e2:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60e2e5:	89 8d 4c ff ff ff    	mov    DWORD PTR [ebp-0xb4],ecx
  60e2eb:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60e2ee:	89 95 50 ff ff ff    	mov    DWORD PTR [ebp-0xb0],edx
  60e2f4:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60e2f7:	83 e0 01             	and    eax,0x1
  60e2fa:	f7 d8                	neg    eax
  60e2fc:	1b c0                	sbb    eax,eax
  60e2fe:	23 45 c0             	and    eax,DWORD PTR [ebp-0x40]
  60e301:	89 85 54 ff ff ff    	mov    DWORD PTR [ebp-0xac],eax
  60e307:	83 bd 4c ff ff ff 08 	cmp    DWORD PTR [ebp-0xb4],0x8
  60e30e:	75 2a                	jne    0x60e33a
  60e310:	81 bd 50 ff ff ff ff 	cmp    DWORD PTR [ebp-0xb0],0xff
  60e317:	00 00 00 
  60e31a:	75 09                	jne    0x60e325
  60e31c:	c7 45 f0 10 00 00 00 	mov    DWORD PTR [ebp-0x10],0x10
  60e323:	eb 13                	jmp    0x60e338
  60e325:	81 bd 54 ff ff ff ff 	cmp    DWORD PTR [ebp-0xac],0xff
  60e32c:	00 00 00 
  60e32f:	75 07                	jne    0x60e338
  60e331:	c7 45 f0 0e 00 00 00 	mov    DWORD PTR [ebp-0x10],0xe
  60e338:	eb 28                	jmp    0x60e362
  60e33a:	83 bd 4c ff ff ff 10 	cmp    DWORD PTR [ebp-0xb4],0x10
  60e341:	75 1f                	jne    0x60e362
  60e343:	81 bd 54 ff ff ff 00 	cmp    DWORD PTR [ebp-0xac],0xff00
  60e34a:	ff 00 00 
  60e34d:	75 13                	jne    0x60e362
  60e34f:	81 bd 50 ff ff ff ff 	cmp    DWORD PTR [ebp-0xb0],0xff
  60e356:	00 00 00 
  60e359:	75 07                	jne    0x60e362
  60e35b:	c7 45 f0 24 00 00 00 	mov    DWORD PTR [ebp-0x10],0x24
  60e362:	e9 c4 03 00 00       	jmp    0x60e72b
  60e367:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
  60e36a:	83 e1 40             	and    ecx,0x40
  60e36d:	0f 84 00 03 00 00    	je     0x60e673
  60e373:	8b 55 b0             	mov    edx,DWORD PTR [ebp-0x50]
  60e376:	89 95 38 ff ff ff    	mov    DWORD PTR [ebp-0xc8],edx
  60e37c:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  60e37f:	89 85 3c ff ff ff    	mov    DWORD PTR [ebp-0xc4],eax
  60e385:	8b 4d b8             	mov    ecx,DWORD PTR [ebp-0x48]
  60e388:	89 8d 40 ff ff ff    	mov    DWORD PTR [ebp-0xc0],ecx
  60e38e:	8b 55 bc             	mov    edx,DWORD PTR [ebp-0x44]
  60e391:	89 95 44 ff ff ff    	mov    DWORD PTR [ebp-0xbc],edx
  60e397:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60e39a:	83 e0 01             	and    eax,0x1
  60e39d:	f7 d8                	neg    eax
  60e39f:	1b c0                	sbb    eax,eax
  60e3a1:	23 45 c0             	and    eax,DWORD PTR [ebp-0x40]
  60e3a4:	89 85 48 ff ff ff    	mov    DWORD PTR [ebp-0xb8],eax
  60e3aa:	83 bd 38 ff ff ff 08 	cmp    DWORD PTR [ebp-0xc8],0x8
  60e3b1:	75 33                	jne    0x60e3e6
  60e3b3:	81 bd 48 ff ff ff ff 	cmp    DWORD PTR [ebp-0xb8],0xff
  60e3ba:	00 00 00 
  60e3bd:	75 22                	jne    0x60e3e1
  60e3bf:	83 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0x0
  60e3c6:	75 19                	jne    0x60e3e1
  60e3c8:	83 bd 40 ff ff ff 00 	cmp    DWORD PTR [ebp-0xc0],0x0
  60e3cf:	75 10                	jne    0x60e3e1
  60e3d1:	83 bd 44 ff ff ff 00 	cmp    DWORD PTR [ebp-0xbc],0x0
  60e3d8:	75 07                	jne    0x60e3e1
  60e3da:	c7 45 f0 0e 00 00 00 	mov    DWORD PTR [ebp-0x10],0xe
  60e3e1:	e9 88 02 00 00       	jmp    0x60e66e
  60e3e6:	83 bd 38 ff ff ff 10 	cmp    DWORD PTR [ebp-0xc8],0x10
  60e3ed:	0f 85 0e 01 00 00    	jne    0x60e501
  60e3f3:	83 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0x0
  60e3fa:	75 2d                	jne    0x60e429
  60e3fc:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0x7c00
  60e403:	7c 00 00 
  60e406:	75 21                	jne    0x60e429
  60e408:	81 bd 40 ff ff ff e0 	cmp    DWORD PTR [ebp-0xc0],0x3e0
  60e40f:	03 00 00 
  60e412:	75 15                	jne    0x60e429
  60e414:	83 bd 44 ff ff ff 1f 	cmp    DWORD PTR [ebp-0xbc],0x1f
  60e41b:	75 0c                	jne    0x60e429
  60e41d:	c7 45 f0 18 00 00 00 	mov    DWORD PTR [ebp-0x10],0x18
  60e424:	e9 d3 00 00 00       	jmp    0x60e4fc
  60e429:	81 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0x8000
  60e430:	80 00 00 
  60e433:	75 2d                	jne    0x60e462
  60e435:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0x7c00
  60e43c:	7c 00 00 
  60e43f:	75 21                	jne    0x60e462
  60e441:	81 bd 40 ff ff ff e0 	cmp    DWORD PTR [ebp-0xc0],0x3e0
  60e448:	03 00 00 
  60e44b:	75 15                	jne    0x60e462
  60e44d:	83 bd 44 ff ff ff 1f 	cmp    DWORD PTR [ebp-0xbc],0x1f
  60e454:	75 0c                	jne    0x60e462
  60e456:	c7 45 f0 1a 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1a
  60e45d:	e9 9a 00 00 00       	jmp    0x60e4fc
  60e462:	83 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0x0
  60e469:	75 2a                	jne    0x60e495
  60e46b:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0xf800
  60e472:	f8 00 00 
  60e475:	75 1e                	jne    0x60e495
  60e477:	81 bd 40 ff ff ff e0 	cmp    DWORD PTR [ebp-0xc0],0x7e0
  60e47e:	07 00 00 
  60e481:	75 12                	jne    0x60e495
  60e483:	83 bd 44 ff ff ff 1f 	cmp    DWORD PTR [ebp-0xbc],0x1f
  60e48a:	75 09                	jne    0x60e495
  60e48c:	c7 45 f0 12 00 00 00 	mov    DWORD PTR [ebp-0x10],0x12
  60e493:	eb 67                	jmp    0x60e4fc
  60e495:	81 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0xf000
  60e49c:	f0 00 00 
  60e49f:	75 2a                	jne    0x60e4cb
  60e4a1:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0xf00
  60e4a8:	0f 00 00 
  60e4ab:	75 1e                	jne    0x60e4cb
  60e4ad:	81 bd 40 ff ff ff f0 	cmp    DWORD PTR [ebp-0xc0],0xf0
  60e4b4:	00 00 00 
  60e4b7:	75 12                	jne    0x60e4cb
  60e4b9:	83 bd 44 ff ff ff 0f 	cmp    DWORD PTR [ebp-0xbc],0xf
  60e4c0:	75 09                	jne    0x60e4cb
  60e4c2:	c7 45 f0 1c 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1c
  60e4c9:	eb 31                	jmp    0x60e4fc
  60e4cb:	83 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0x0
  60e4d2:	75 28                	jne    0x60e4fc
  60e4d4:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0xf00
  60e4db:	0f 00 00 
  60e4de:	75 1c                	jne    0x60e4fc
  60e4e0:	81 bd 40 ff ff ff f0 	cmp    DWORD PTR [ebp-0xc0],0xf0
  60e4e7:	00 00 00 
  60e4ea:	75 10                	jne    0x60e4fc
  60e4ec:	83 bd 44 ff ff ff 0f 	cmp    DWORD PTR [ebp-0xbc],0xf
  60e4f3:	75 07                	jne    0x60e4fc
  60e4f5:	c7 45 f0 1e 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1e
  60e4fc:	e9 6d 01 00 00       	jmp    0x60e66e
  60e501:	83 bd 38 ff ff ff 18 	cmp    DWORD PTR [ebp-0xc8],0x18
  60e508:	75 39                	jne    0x60e543
  60e50a:	83 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0x0
  60e511:	75 2b                	jne    0x60e53e
  60e513:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0xff0000
  60e51a:	00 ff 00 
  60e51d:	75 1f                	jne    0x60e53e
  60e51f:	81 bd 40 ff ff ff 00 	cmp    DWORD PTR [ebp-0xc0],0xff00
  60e526:	ff 00 00 
  60e529:	75 13                	jne    0x60e53e
  60e52b:	81 bd 44 ff ff ff ff 	cmp    DWORD PTR [ebp-0xbc],0xff
  60e532:	00 00 00 
  60e535:	75 07                	jne    0x60e53e
  60e537:	c7 45 f0 96 00 00 00 	mov    DWORD PTR [ebp-0x10],0x96
  60e53e:	e9 2b 01 00 00       	jmp    0x60e66e
  60e543:	83 bd 38 ff ff ff 20 	cmp    DWORD PTR [ebp-0xc8],0x20
  60e54a:	0f 85 1e 01 00 00    	jne    0x60e66e
  60e550:	83 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0x0
  60e557:	75 30                	jne    0x60e589
  60e559:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0xff0000
  60e560:	00 ff 00 
  60e563:	75 24                	jne    0x60e589
  60e565:	81 bd 40 ff ff ff 00 	cmp    DWORD PTR [ebp-0xc0],0xff00
  60e56c:	ff 00 00 
  60e56f:	75 18                	jne    0x60e589
  60e571:	81 bd 44 ff ff ff ff 	cmp    DWORD PTR [ebp-0xbc],0xff
  60e578:	00 00 00 
  60e57b:	75 0c                	jne    0x60e589
  60e57d:	c7 45 f0 40 00 00 00 	mov    DWORD PTR [ebp-0x10],0x40
  60e584:	e9 e5 00 00 00       	jmp    0x60e66e
  60e589:	81 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0xff000000
  60e590:	00 00 ff 
  60e593:	75 30                	jne    0x60e5c5
  60e595:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0xff0000
  60e59c:	00 ff 00 
  60e59f:	75 24                	jne    0x60e5c5
  60e5a1:	81 bd 40 ff ff ff 00 	cmp    DWORD PTR [ebp-0xc0],0xff00
  60e5a8:	ff 00 00 
  60e5ab:	75 18                	jne    0x60e5c5
  60e5ad:	81 bd 44 ff ff ff ff 	cmp    DWORD PTR [ebp-0xbc],0xff
  60e5b4:	00 00 00 
  60e5b7:	75 0c                	jne    0x60e5c5
  60e5b9:	c7 45 f0 3e 00 00 00 	mov    DWORD PTR [ebp-0x10],0x3e
  60e5c0:	e9 a9 00 00 00       	jmp    0x60e66e
  60e5c5:	81 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0xff000000
  60e5cc:	00 00 ff 
  60e5cf:	75 2d                	jne    0x60e5fe
  60e5d1:	81 bd 3c ff ff ff ff 	cmp    DWORD PTR [ebp-0xc4],0xff
  60e5d8:	00 00 00 
  60e5db:	75 21                	jne    0x60e5fe
  60e5dd:	81 bd 40 ff ff ff 00 	cmp    DWORD PTR [ebp-0xc0],0xff00
  60e5e4:	ff 00 00 
  60e5e7:	75 15                	jne    0x60e5fe
  60e5e9:	81 bd 44 ff ff ff 00 	cmp    DWORD PTR [ebp-0xbc],0xff0000
  60e5f0:	00 ff 00 
  60e5f3:	75 09                	jne    0x60e5fe
  60e5f5:	c7 45 f0 42 00 00 00 	mov    DWORD PTR [ebp-0x10],0x42
  60e5fc:	eb 70                	jmp    0x60e66e
  60e5fe:	81 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0xc0000000
  60e605:	00 00 c0 
  60e608:	75 2d                	jne    0x60e637
  60e60a:	81 bd 3c ff ff ff 00 	cmp    DWORD PTR [ebp-0xc4],0x3ff00000
  60e611:	00 f0 3f 
  60e614:	75 21                	jne    0x60e637
  60e616:	81 bd 40 ff ff ff 00 	cmp    DWORD PTR [ebp-0xc0],0xffc00
  60e61d:	fc 0f 00 
  60e620:	75 15                	jne    0x60e637
  60e622:	81 bd 44 ff ff ff ff 	cmp    DWORD PTR [ebp-0xbc],0x3ff
  60e629:	03 00 00 
  60e62c:	75 09                	jne    0x60e637
  60e62e:	c7 45 f0 4a 00 00 00 	mov    DWORD PTR [ebp-0x10],0x4a
  60e635:	eb 37                	jmp    0x60e66e
  60e637:	81 bd 48 ff ff ff 00 	cmp    DWORD PTR [ebp-0xb8],0xc0000000
  60e63e:	00 00 c0 
  60e641:	75 2b                	jne    0x60e66e
  60e643:	81 bd 3c ff ff ff ff 	cmp    DWORD PTR [ebp-0xc4],0x3ff
  60e64a:	03 00 00 
  60e64d:	75 1f                	jne    0x60e66e
  60e64f:	81 bd 40 ff ff ff 00 	cmp    DWORD PTR [ebp-0xc0],0xffc00
  60e656:	fc 0f 00 
  60e659:	75 13                	jne    0x60e66e
  60e65b:	81 bd 44 ff ff ff 00 	cmp    DWORD PTR [ebp-0xbc],0xffc00000
  60e662:	00 c0 ff 
  60e665:	75 07                	jne    0x60e66e
  60e667:	c7 45 f0 48 00 00 00 	mov    DWORD PTR [ebp-0x10],0x48
  60e66e:	e9 b8 00 00 00       	jmp    0x60e72b
  60e673:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
  60e676:	81 e1 00 00 08 00    	and    ecx,0x80000
  60e67c:	0f 84 a9 00 00 00    	je     0x60e72b
  60e682:	8b 55 b0             	mov    edx,DWORD PTR [ebp-0x50]
  60e685:	89 95 24 ff ff ff    	mov    DWORD PTR [ebp-0xdc],edx
  60e68b:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  60e68e:	89 85 2c ff ff ff    	mov    DWORD PTR [ebp-0xd4],eax
  60e694:	8b 4d b8             	mov    ecx,DWORD PTR [ebp-0x48]
  60e697:	89 8d 30 ff ff ff    	mov    DWORD PTR [ebp-0xd0],ecx
  60e69d:	8b 55 bc             	mov    edx,DWORD PTR [ebp-0x44]
  60e6a0:	89 95 34 ff ff ff    	mov    DWORD PTR [ebp-0xcc],edx
  60e6a6:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  60e6a9:	89 85 28 ff ff ff    	mov    DWORD PTR [ebp-0xd8],eax
  60e6af:	83 bd 24 ff ff ff 10 	cmp    DWORD PTR [ebp-0xdc],0x10
  60e6b6:	75 33                	jne    0x60e6eb
  60e6b8:	83 bd 28 ff ff ff 00 	cmp    DWORD PTR [ebp-0xd8],0x0
  60e6bf:	75 28                	jne    0x60e6e9
  60e6c1:	83 bd 34 ff ff ff 00 	cmp    DWORD PTR [ebp-0xcc],0x0
  60e6c8:	75 1f                	jne    0x60e6e9
  60e6ca:	81 bd 30 ff ff ff 00 	cmp    DWORD PTR [ebp-0xd0],0xff00
  60e6d1:	ff 00 00 
  60e6d4:	75 13                	jne    0x60e6e9
  60e6d6:	81 bd 2c ff ff ff ff 	cmp    DWORD PTR [ebp-0xd4],0xff
  60e6dd:	00 00 00 
  60e6e0:	75 07                	jne    0x60e6e9
  60e6e2:	c7 45 f0 28 00 00 00 	mov    DWORD PTR [ebp-0x10],0x28
  60e6e9:	eb 40                	jmp    0x60e72b
  60e6eb:	83 bd 24 ff ff ff 20 	cmp    DWORD PTR [ebp-0xdc],0x20
  60e6f2:	75 37                	jne    0x60e72b
  60e6f4:	81 bd 28 ff ff ff 00 	cmp    DWORD PTR [ebp-0xd8],0xff000000
  60e6fb:	00 00 ff 
  60e6fe:	75 2b                	jne    0x60e72b
  60e700:	81 bd 34 ff ff ff 00 	cmp    DWORD PTR [ebp-0xcc],0xff0000
  60e707:	00 ff 00 
  60e70a:	75 1f                	jne    0x60e72b
  60e70c:	81 bd 30 ff ff ff 00 	cmp    DWORD PTR [ebp-0xd0],0xff00
  60e713:	ff 00 00 
  60e716:	75 13                	jne    0x60e72b
  60e718:	81 bd 2c ff ff ff ff 	cmp    DWORD PTR [ebp-0xd4],0xff
  60e71f:	00 00 00 
  60e722:	75 07                	jne    0x60e72b
  60e724:	c7 45 f0 22 00 00 00 	mov    DWORD PTR [ebp-0x10],0x22
  60e72b:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
  60e72f:	75 07                	jne    0x60e738
  60e731:	32 c0                	xor    al,al
  60e733:	e9 1f 01 00 00       	jmp    0x60e857
  60e738:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  60e73b:	51                   	push   ecx
  60e73c:	e8 bf 97 00 00       	call   0x617f00
  60e741:	83 c4 04             	add    esp,0x4
  60e744:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  60e747:	83 7d f4 01          	cmp    DWORD PTR [ebp-0xc],0x1
  60e74b:	0f 85 9b 00 00 00    	jne    0x60e7ec
  60e751:	83 7d dc 01          	cmp    DWORD PTR [ebp-0x24],0x1
  60e755:	0f 85 91 00 00 00    	jne    0x60e7ec
  60e75b:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  60e75e:	52                   	push   edx
  60e75f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  60e762:	50                   	push   eax
  60e763:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  60e766:	51                   	push   ecx
  60e767:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  60e76a:	52                   	push   edx
  60e76b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  60e76e:	50                   	push   eax
  60e76f:	e8 1c f0 ff ff       	call   0x60d790
  60e774:	83 c4 14             	add    esp,0x14
  60e777:	0f b6 c8             	movzx  ecx,al
  60e77a:	85 c9                	test   ecx,ecx
  60e77c:	74 46                	je     0x60e7c4
  60e77e:	8d 8d 18 ff ff ff    	lea    ecx,[ebp-0xe8]
  60e784:	e8 07 ed ff ff       	call   0x60d490
  60e789:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  60e78c:	83 ea 01             	sub    edx,0x1
  60e78f:	89 95 18 ff ff ff    	mov    DWORD PTR [ebp-0xe8],edx
  60e795:	c7 85 1c ff ff ff 04 	mov    DWORD PTR [ebp-0xe4],0x4
  60e79c:	00 00 00 
  60e79f:	8d 85 18 ff ff ff    	lea    eax,[ebp-0xe8]
  60e7a5:	50                   	push   eax
  60e7a6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60e7a9:	51                   	push   ecx
  60e7aa:	8d 55 ec             	lea    edx,[ebp-0x14]
  60e7ad:	52                   	push   edx
  60e7ae:	8d 45 e8             	lea    eax,[ebp-0x18]
  60e7b1:	50                   	push   eax
  60e7b2:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  60e7b5:	51                   	push   ecx
  60e7b6:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  60e7b9:	52                   	push   edx
  60e7ba:	e8 d1 ed ff ff       	call   0x60d590
  60e7bf:	83 c4 18             	add    esp,0x18
  60e7c2:	eb 28                	jmp    0x60e7ec
  60e7c4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  60e7c7:	83 38 00             	cmp    DWORD PTR [eax],0x0
  60e7ca:	7e 20                	jle    0x60e7ec
  60e7cc:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  60e7cf:	51                   	push   ecx
  60e7d0:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  60e7d3:	52                   	push   edx
  60e7d4:	8d 45 ec             	lea    eax,[ebp-0x14]
  60e7d7:	50                   	push   eax
  60e7d8:	8d 4d e8             	lea    ecx,[ebp-0x18]
  60e7db:	51                   	push   ecx
  60e7dc:	8d 55 e4             	lea    edx,[ebp-0x1c]
  60e7df:	52                   	push   edx
  60e7e0:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  60e7e3:	50                   	push   eax
  60e7e4:	e8 a7 ed ff ff       	call   0x60d590
  60e7e9:	83 c4 18             	add    esp,0x18
  60e7ec:	0f b6 4d 14          	movzx  ecx,BYTE PTR [ebp+0x14]
  60e7f0:	83 f9 01             	cmp    ecx,0x1
  60e7f3:	75 09                	jne    0x60e7fe
  60e7f5:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  60e7fc:	eb 07                	jmp    0x60e805
  60e7fe:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  60e805:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  60e808:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  60e80b:	50                   	push   eax
  60e80c:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  60e80f:	51                   	push   ecx
  60e810:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  60e813:	52                   	push   edx
  60e814:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  60e817:	50                   	push   eax
  60e818:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  60e81b:	51                   	push   ecx
  60e81c:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  60e81f:	52                   	push   edx
  60e820:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  60e823:	50                   	push   eax
  60e824:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  60e827:	51                   	push   ecx
  60e828:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  60e82b:	52                   	push   edx
  60e82c:	e8 bf ec ff ff       	call   0x60d4f0
  60e831:	83 c4 24             	add    esp,0x24
  60e834:	0f b6 c0             	movzx  eax,al
  60e837:	85 c0                	test   eax,eax
  60e839:	75 04                	jne    0x60e83f
  60e83b:	32 c0                	xor    al,al
  60e83d:	eb 18                	jmp    0x60e857
  60e83f:	8a 4d fb             	mov    cl,BYTE PTR [ebp-0x5]
  60e842:	51                   	push   ecx
  60e843:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  60e846:	52                   	push   edx
  60e847:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  60e84a:	50                   	push   eax
  60e84b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60e84e:	51                   	push   ecx
  60e84f:	e8 8c f0 ff ff       	call   0x60d8e0
  60e854:	83 c4 10             	add    esp,0x10
  60e857:	8b e5                	mov    esp,ebp
  60e859:	5d                   	pop    ebp
  60e85a:	c3                   	ret
