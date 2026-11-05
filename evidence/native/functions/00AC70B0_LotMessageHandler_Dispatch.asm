# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ac70b0 (LotMessageHandler_Dispatch)
Full Ghidra function-body envelope: 0x00ac70b0..0x00ac7478 (exclusive end)
Ghidra body ranges: [[00ac70b0, 00ac7477]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ac70b0 <.text+0x6c60b0>:
  ac70b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  ac70b4:	3d 1d 7e e7 05       	cmp    eax,0x5e77e1d
  ac70b9:	53                   	push   ebx
  ac70ba:	56                   	push   esi
  ac70bb:	57                   	push   edi
  ac70bc:	8b f1                	mov    esi,ecx
  ac70be:	0f 87 aa 01 00 00    	ja     0xac726e
  ac70c4:	0f 84 75 01 00 00    	je     0xac723f
  ac70ca:	3d bb 19 e1 04       	cmp    eax,0x4e119bb
  ac70cf:	0f 87 f0 00 00 00    	ja     0xac71c5
  ac70d5:	0f 84 ca 00 00 00    	je     0xac71a5
  ac70db:	3d 68 6e a0 04       	cmp    eax,0x4a06e68
  ac70e0:	0f 84 82 00 00 00    	je     0xac7168
  ac70e6:	3d 67 f6 ad 04       	cmp    eax,0x4adf667
  ac70eb:	74 43                	je     0xac7130
  ac70ed:	3d 76 19 e1 04       	cmp    eax,0x4e11976
  ac70f2:	0f 85 1a 02 00 00    	jne    0xac7312
  ac70f8:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac70fc:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac70ff:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac7102:	0f 85 64 03 00 00    	jne    0xac746c
  ac7108:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac710b:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac710e:	0f 85 58 03 00 00    	jne    0xac746c
  ac7114:	81 c6 60 ff ff ff    	add    esi,0xffffff60
  ac711a:	8b ce                	mov    ecx,esi
  ac711c:	e8 8f d5 fe ff       	call   0xab46b0
  ac7121:	8b ce                	mov    ecx,esi
  ac7123:	e8 88 39 ff ff       	call   0xabaab0
  ac7128:	5f                   	pop    edi
  ac7129:	5e                   	pop    esi
  ac712a:	b0 01                	mov    al,0x1
  ac712c:	5b                   	pop    ebx
  ac712d:	c2 08 00             	ret    0x8
  ac7130:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac7134:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac7137:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac713a:	0f 85 2c 03 00 00    	jne    0xac746c
  ac7140:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac7143:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac7146:	0f 85 20 03 00 00    	jne    0xac746c
  ac714c:	0f b6 48 14          	movzx  ecx,BYTE PTR [eax+0x14]
  ac7150:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  ac7153:	51                   	push   ecx
  ac7154:	52                   	push   edx
  ac7155:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac715b:	e8 e0 e7 ff ff       	call   0xac5940
  ac7160:	5f                   	pop    edi
  ac7161:	5e                   	pop    esi
  ac7162:	b0 01                	mov    al,0x1
  ac7164:	5b                   	pop    ebx
  ac7165:	c2 08 00             	ret    0x8
  ac7168:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac716c:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac716f:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac7172:	0f 85 f4 02 00 00    	jne    0xac746c
  ac7178:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac717b:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac717e:	0f 85 e8 02 00 00    	jne    0xac746c
  ac7184:	0f b6 48 17          	movzx  ecx,BYTE PTR [eax+0x17]
  ac7188:	0f b6 50 16          	movzx  edx,BYTE PTR [eax+0x16]
  ac718c:	51                   	push   ecx
  ac718d:	52                   	push   edx
  ac718e:	83 c0 10             	add    eax,0x10
  ac7191:	50                   	push   eax
  ac7192:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac7198:	e8 f3 b6 ff ff       	call   0xac2890
  ac719d:	5f                   	pop    edi
  ac719e:	5e                   	pop    esi
  ac719f:	b0 01                	mov    al,0x1
  ac71a1:	5b                   	pop    ebx
  ac71a2:	c2 08 00             	ret    0x8
  ac71a5:	80 be 05 03 00 00 00 	cmp    BYTE PTR [esi+0x305],0x0
  ac71ac:	0f 84 ba 02 00 00    	je     0xac746c
  ac71b2:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac71b8:	e8 f3 37 ff ff       	call   0xaba9b0
  ac71bd:	5f                   	pop    edi
  ac71be:	5e                   	pop    esi
  ac71bf:	b0 01                	mov    al,0x1
  ac71c1:	5b                   	pop    ebx
  ac71c2:	c2 08 00             	ret    0x8
  ac71c5:	3d 0e 7a e7 05       	cmp    eax,0x5e77a0e
  ac71ca:	74 3f                	je     0xac720b
  ac71cc:	3d 4f 7c e7 05       	cmp    eax,0x5e77c4f
  ac71d1:	0f 85 3b 01 00 00    	jne    0xac7312
  ac71d7:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac71db:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac71de:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac71e1:	0f 85 85 02 00 00    	jne    0xac746c
  ac71e7:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac71ea:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac71ed:	0f 85 79 02 00 00    	jne    0xac746c
  ac71f3:	0f b6 40 10          	movzx  eax,BYTE PTR [eax+0x10]
  ac71f7:	50                   	push   eax
  ac71f8:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac71fe:	e8 3d 03 ff ff       	call   0xab7540
  ac7203:	5f                   	pop    edi
  ac7204:	5e                   	pop    esi
  ac7205:	b0 01                	mov    al,0x1
  ac7207:	5b                   	pop    ebx
  ac7208:	c2 08 00             	ret    0x8
  ac720b:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac720f:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac7212:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac7215:	0f 85 51 02 00 00    	jne    0xac746c
  ac721b:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac721e:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac7221:	0f 85 45 02 00 00    	jne    0xac746c
  ac7227:	0f b6 40 10          	movzx  eax,BYTE PTR [eax+0x10]
  ac722b:	50                   	push   eax
  ac722c:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac7232:	e8 29 49 ff ff       	call   0xabbb60
  ac7237:	5f                   	pop    edi
  ac7238:	5e                   	pop    esi
  ac7239:	b0 01                	mov    al,0x1
  ac723b:	5b                   	pop    ebx
  ac723c:	c2 08 00             	ret    0x8
  ac723f:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac7243:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac7246:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac7249:	0f 85 1d 02 00 00    	jne    0xac746c
  ac724f:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac7252:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac7255:	0f 85 11 02 00 00    	jne    0xac746c
  ac725b:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac7261:	e8 fa 53 ff ff       	call   0xabc660
  ac7266:	5f                   	pop    edi
  ac7267:	5e                   	pop    esi
  ac7268:	b0 01                	mov    al,0x1
  ac726a:	5b                   	pop    ebx
  ac726b:	c2 08 00             	ret    0x8
  ac726e:	3d 5f 54 81 0e       	cmp    eax,0xe81545f
  ac7273:	0f 87 80 00 00 00    	ja     0xac72f9
  ac7279:	74 63                	je     0xac72de
  ac727b:	3d 0d 26 b6 09       	cmp    eax,0x9b6260d
  ac7280:	0f 85 8c 00 00 00    	jne    0xac7312
  ac7286:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac728a:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac728d:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac7290:	0f 85 d6 01 00 00    	jne    0xac746c
  ac7296:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac7299:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac729c:	0f 85 ca 01 00 00    	jne    0xac746c
  ac72a2:	8a 40 10             	mov    al,BYTE PTR [eax+0x10]
  ac72a5:	84 c0                	test   al,al
  ac72a7:	88 86 c8 02 00 00    	mov    BYTE PTR [esi+0x2c8],al
  ac72ad:	0f 84 b9 01 00 00    	je     0xac746c
  ac72b3:	8b 8e 3c 02 00 00    	mov    ecx,DWORD PTR [esi+0x23c]
  ac72b9:	83 79 0c 00          	cmp    DWORD PTR [ecx+0xc],0x0
  ac72bd:	0f 84 a9 01 00 00    	je     0xac746c
  ac72c3:	8b 96 c4 02 00 00    	mov    edx,DWORD PTR [esi+0x2c4]
  ac72c9:	8d 86 60 ff ff ff    	lea    eax,[esi-0xa0]
  ac72cf:	50                   	push   eax
  ac72d0:	52                   	push   edx
  ac72d1:	e8 fa 34 ff ff       	call   0xaba7d0
  ac72d6:	5f                   	pop    edi
  ac72d7:	5e                   	pop    esi
  ac72d8:	b0 01                	mov    al,0x1
  ac72da:	5b                   	pop    ebx
  ac72db:	c2 08 00             	ret    0x8
  ac72de:	8b 8e 40 02 00 00    	mov    ecx,DWORD PTR [esi+0x240]
  ac72e4:	85 c9                	test   ecx,ecx
  ac72e6:	0f 84 80 01 00 00    	je     0xac746c
  ac72ec:	e8 9f 70 0a 00       	call   0xb6e390
  ac72f1:	5f                   	pop    edi
  ac72f2:	5e                   	pop    esi
  ac72f3:	b0 01                	mov    al,0x1
  ac72f5:	5b                   	pop    ebx
  ac72f6:	c2 08 00             	ret    0x8
  ac72f9:	3d ea eb cc a7       	cmp    eax,0xa7ccebea
  ac72fe:	0f 84 ca 00 00 00    	je     0xac73ce
  ac7304:	3d 60 4d af b5       	cmp    eax,0xb5af4d60
  ac7309:	74 65                	je     0xac7370
  ac730b:	3d 39 1d 7d b7       	cmp    eax,0xb77d1d39
  ac7310:	74 08                	je     0xac731a
  ac7312:	5f                   	pop    edi
  ac7313:	5e                   	pop    esi
  ac7314:	32 c0                	xor    al,al
  ac7316:	5b                   	pop    ebx
  ac7317:	c2 08 00             	ret    0x8
  ac731a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ac731e:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  ac7321:	3b 4e a8             	cmp    ecx,DWORD PTR [esi-0x58]
  ac7324:	0f 85 42 01 00 00    	jne    0xac746c
  ac732a:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  ac732d:	3b 56 ac             	cmp    edx,DWORD PTR [esi-0x54]
  ac7330:	0f 85 36 01 00 00    	jne    0xac746c
  ac7336:	8b 78 10             	mov    edi,DWORD PTR [eax+0x10]
  ac7339:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
  ac733c:	3b fb                	cmp    edi,ebx
  ac733e:	0f 84 28 01 00 00    	je     0xac746c
  ac7344:	81 c6 60 ff ff ff    	add    esi,0xffffff60
  ac734a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  ac7350:	68 ff ff 00 00       	push   0xffff
  ac7355:	6a 00                	push   0x0
  ac7357:	6a 08                	push   0x8
  ac7359:	57                   	push   edi
  ac735a:	8b ce                	mov    ecx,esi
  ac735c:	e8 8f 42 ff ff       	call   0xabb5f0
  ac7361:	83 c7 03             	add    edi,0x3
  ac7364:	3b fb                	cmp    edi,ebx
  ac7366:	75 e8                	jne    0xac7350
  ac7368:	5f                   	pop    edi
  ac7369:	5e                   	pop    esi
  ac736a:	b0 01                	mov    al,0x1
  ac736c:	5b                   	pop    ebx
  ac736d:	c2 08 00             	ret    0x8
  ac7370:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  ac7374:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  ac7377:	3b 46 a8             	cmp    eax,DWORD PTR [esi-0x58]
  ac737a:	0f 85 ec 00 00 00    	jne    0xac746c
  ac7380:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  ac7383:	3b 4e ac             	cmp    ecx,DWORD PTR [esi-0x54]
  ac7386:	0f 85 e0 00 00 00    	jne    0xac746c
  ac738c:	83 be fc 02 00 00 00 	cmp    DWORD PTR [esi+0x2fc],0x0
  ac7393:	7d 19                	jge    0xac73ae
  ac7395:	80 7f 10 00          	cmp    BYTE PTR [edi+0x10],0x0
  ac7399:	75 13                	jne    0xac73ae
  ac739b:	6a 00                	push   0x0
  ac739d:	6a 01                	push   0x1
  ac739f:	6a 01                	push   0x1
  ac73a1:	6a 00                	push   0x0
  ac73a3:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac73a9:	e8 72 82 ff ff       	call   0xabf620
  ac73ae:	8b 86 48 02 00 00    	mov    eax,DWORD PTR [esi+0x248]
  ac73b4:	8a 57 10             	mov    dl,BYTE PTR [edi+0x10]
  ac73b7:	50                   	push   eax
  ac73b8:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac73be:	88 56 22             	mov    BYTE PTR [esi+0x22],dl
  ac73c1:	e8 fa 20 ff ff       	call   0xab94c0
  ac73c6:	5f                   	pop    edi
  ac73c7:	5e                   	pop    esi
  ac73c8:	b0 01                	mov    al,0x1
  ac73ca:	5b                   	pop    ebx
  ac73cb:	c2 08 00             	ret    0x8
  ac73ce:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  ac73d2:	8d 8e 60 ff ff ff    	lea    ecx,[esi-0xa0]
  ac73d8:	39 4f 08             	cmp    DWORD PTR [edi+0x8],ecx
  ac73db:	0f 85 8b 00 00 00    	jne    0xac746c
  ac73e1:	0f b6 57 0c          	movzx  edx,BYTE PTR [edi+0xc]
  ac73e5:	8d 9e 60 ff ff ff    	lea    ebx,[esi-0xa0]
  ac73eb:	52                   	push   edx
  ac73ec:	8b cb                	mov    ecx,ebx
  ac73ee:	e8 ed 9b fe ff       	call   0xab0fe0
  ac73f3:	80 7f 0c 00          	cmp    BYTE PTR [edi+0xc],0x0
  ac73f7:	74 17                	je     0xac7410
  ac73f9:	8b 86 e0 00 00 00    	mov    eax,DWORD PTR [esi+0xe0]
  ac73ff:	8b 8e 48 02 00 00    	mov    ecx,DWORD PTR [esi+0x248]
  ac7405:	50                   	push   eax
  ac7406:	51                   	push   ecx
  ac7407:	8b cb                	mov    ecx,ebx
  ac7409:	e8 52 be fe ff       	call   0xab3260
  ac740e:	eb 0e                	jmp    0xac741e
  ac7410:	8b 96 48 02 00 00    	mov    edx,DWORD PTR [esi+0x248]
  ac7416:	52                   	push   edx
  ac7417:	8b cb                	mov    ecx,ebx
  ac7419:	e8 a2 20 ff ff       	call   0xab94c0
  ac741e:	6a 10                	push   0x10
  ac7420:	e8 2b 7d 01 00       	call   0xadf150
  ac7425:	83 c4 04             	add    esp,0x4
  ac7428:	85 c0                	test   eax,eax
  ac742a:	74 48                	je     0xac7474
  ac742c:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  ac7432:	33 c9                	xor    ecx,ecx
  ac7434:	8d 50 04             	lea    edx,[eax+0x4]
  ac7437:	87 0a                	xchg   DWORD PTR [edx],ecx
  ac7439:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  ac743f:	8b 10                	mov    edx,DWORD PTR [eax]
  ac7441:	8b f8                	mov    edi,eax
  ac7443:	8b c8                	mov    ecx,eax
  ac7445:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  ac7448:	ff d0                	call   eax
  ac744a:	8b 4e a8             	mov    ecx,DWORD PTR [esi-0x58]
  ac744d:	89 4f 08             	mov    DWORD PTR [edi+0x8],ecx
  ac7450:	8b 56 ac             	mov    edx,DWORD PTR [esi-0x54]
  ac7453:	57                   	push   edi
  ac7454:	68 e4 de a5 0a       	push   0xaa5dee4
  ac7459:	8b cb                	mov    ecx,ebx
  ac745b:	89 57 0c             	mov    DWORD PTR [edi+0xc],edx
  ac745e:	e8 6d be fe ff       	call   0xab32d0
  ac7463:	8b 07                	mov    eax,DWORD PTR [edi]
  ac7465:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  ac7468:	8b cf                	mov    ecx,edi
  ac746a:	ff d2                	call   edx
  ac746c:	5f                   	pop    edi
  ac746d:	5e                   	pop    esi
  ac746e:	b0 01                	mov    al,0x1
  ac7470:	5b                   	pop    ebx
  ac7471:	c2 08 00             	ret    0x8
  ac7474:	33 ff                	xor    edi,edi
  ac7476:	eb d2                	jmp    0xac744a
