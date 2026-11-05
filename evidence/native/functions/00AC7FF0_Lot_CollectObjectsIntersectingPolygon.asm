# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00ac7ff0, 0x00ac8398); analyst name Lot_CollectObjectsIntersectingPolygon.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ac7ff0 <.text+0x6c6ff0>:
  ac7ff0:	55                   	push   ebp
  ac7ff1:	8b ec                	mov    ebp,esp
  ac7ff3:	83 e4 f8             	and    esp,0xfffffff8
  ac7ff6:	81 ec 94 00 00 00    	sub    esp,0x94
  ac7ffc:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  ac7fff:	53                   	push   ebx
  ac8000:	56                   	push   esi
  ac8001:	57                   	push   edi
  ac8002:	8b f9                	mov    edi,ecx
  ac8004:	8b 08                	mov    ecx,DWORD PTR [eax]
  ac8006:	33 db                	xor    ebx,ebx
  ac8008:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  ac800b:	39 9f d0 02 00 00    	cmp    DWORD PTR [edi+0x2d0],ebx
  ac8011:	89 7c 24 58          	mov    DWORD PTR [esp+0x58],edi
  ac8015:	0f 84 74 03 00 00    	je     0xac838f
  ac801b:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  ac8023:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  ac8026:	3b 87 7c 01 00 00    	cmp    eax,DWORD PTR [edi+0x17c]
  ac802c:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  ac8032:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  ac803a:	be 01 00 00 00       	mov    esi,0x1
  ac803f:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  ac8045:	c7 44 24 54 38 66 06 01 	mov    DWORD PTR [esp+0x54],0x1066638
  ac804d:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  ac8051:	c7 44 24 3c 00 d9 14 01 	mov    DWORD PTR [esp+0x3c],0x114d900
  ac8059:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  ac805d:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
  ac8061:	0f 8c 02 03 00 00    	jl     0xac8369
  ac8067:	3b 87 80 01 00 00    	cmp    eax,DWORD PTR [edi+0x180]
  ac806d:	0f 8f f6 02 00 00    	jg     0xac8369
  ac8073:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  ac8076:	8d 54 24 20          	lea    edx,[esp+0x20]
  ac807a:	52                   	push   edx
  ac807b:	50                   	push   eax
  ac807c:	e8 3f 61 d0 ff       	call   0x7ce1c0
  ac8081:	f3 0f 10 44 24 28    	movss  xmm0,DWORD PTR [esp+0x28]
  ac8087:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  ac808d:	83 c4 08             	add    esp,0x8
  ac8090:	0f 2f c1             	comiss xmm0,xmm1
  ac8093:	76 0c                	jbe    0xac80a1
  ac8095:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  ac809b:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  ac80a1:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  ac80a7:	f3 0f 10 4c 24 2c    	movss  xmm1,DWORD PTR [esp+0x2c]
  ac80ad:	0f 2f c1             	comiss xmm0,xmm1
  ac80b0:	76 0c                	jbe    0xac80be
  ac80b2:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  ac80b8:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  ac80be:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  ac80c2:	db 54 24 10          	fist   DWORD PTR [esp+0x10]
  ac80c6:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
  ac80ca:	de e9                	fsubp  st(1),st
  ac80cc:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  ac80d0:	81 7c 24 14 01 00 00 80 	cmp    DWORD PTR [esp+0x14],0x80000001
  ac80d8:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ac80dc:	83 d0 ff             	adc    eax,0xffffffff
  ac80df:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  ac80e3:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  ac80e7:	db 54 24 10          	fist   DWORD PTR [esp+0x10]
  ac80eb:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
  ac80ef:	de e1                	fsubrp st(1),st
  ac80f1:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  ac80f5:	81 7c 24 14 01 00 00 80 	cmp    DWORD PTR [esp+0x14],0x80000001
  ac80fd:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ac8101:	83 d8 ff             	sbb    eax,0xffffffff
  ac8104:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  ac8108:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  ac810c:	db 54 24 10          	fist   DWORD PTR [esp+0x10]
  ac8110:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
  ac8114:	de e9                	fsubp  st(1),st
  ac8116:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  ac811a:	81 7c 24 14 01 00 00 80 	cmp    DWORD PTR [esp+0x14],0x80000001
  ac8122:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ac8126:	83 d0 ff             	adc    eax,0xffffffff
  ac8129:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  ac812d:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  ac8131:	db 54 24 10          	fist   DWORD PTR [esp+0x10]
  ac8135:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
  ac8139:	de e1                	fsubrp st(1),st
  ac813b:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  ac813f:	81 7c 24 14 01 00 00 80 	cmp    DWORD PTR [esp+0x14],0x80000001
  ac8147:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ac814b:	83 d8 ff             	sbb    eax,0xffffffff
  ac814e:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  ac8152:	51                   	push   ecx
  ac8153:	8d 54 24 60          	lea    edx,[esp+0x60]
  ac8157:	52                   	push   edx
  ac8158:	8b cf                	mov    ecx,edi
  ac815a:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  ac815e:	e8 6d 2b fc ff       	call   0xa8acd0
  ac8163:	8d 44 24 30          	lea    eax,[esp+0x30]
  ac8167:	50                   	push   eax
  ac8168:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ac816c:	51                   	push   ecx
  ac816d:	8b cf                	mov    ecx,edi
  ac816f:	e8 5c 2b fc ff       	call   0xa8acd0
  ac8174:	33 f6                	xor    esi,esi
  ac8176:	89 74 24 60          	mov    DWORD PTR [esp+0x60],esi
  ac817a:	89 5c 24 64          	mov    DWORD PTR [esp+0x64],ebx
  ac817e:	89 5c 24 68          	mov    DWORD PTR [esp+0x68],ebx
  ac8182:	c7 44 24 6c 20 66 06 01 	mov    DWORD PTR [esp+0x6c],0x1066620
  ac818a:	e8 e1 f3 e6 ff       	call   0x937570
  ac818f:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  ac8193:	3b 44 24 30          	cmp    eax,DWORD PTR [esp+0x30]
  ac8197:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  ac819b:	0f 8d 87 01 00 00    	jge    0xac8328
  ac81a1:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  ac81a5:	3b 44 24 34          	cmp    eax,DWORD PTR [esp+0x34]
  ac81a9:	8b d8                	mov    ebx,eax
  ac81ab:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  ac81af:	0f 8d 5c 01 00 00    	jge    0xac8311
  ac81b5:	8a 54 24 18          	mov    dl,BYTE PTR [esp+0x18]
  ac81b9:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  ac81bc:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
  ac81bf:	6a 05                	push   0x5
  ac81c1:	6a 00                	push   0x0
  ac81c3:	6a 0f                	push   0xf
  ac81c5:	6a 00                	push   0x0
  ac81c7:	51                   	push   ecx
  ac81c8:	88 54 24 31          	mov    BYTE PTR [esp+0x31],dl
  ac81cc:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  ac81cf:	88 44 24 32          	mov    BYTE PTR [esp+0x32],al
  ac81d3:	52                   	push   edx
  ac81d4:	8d 44 24 78          	lea    eax,[esp+0x78]
  ac81d8:	50                   	push   eax
  ac81d9:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ac81dd:	51                   	push   ecx
  ac81de:	8b cf                	mov    ecx,edi
  ac81e0:	88 5c 24 3c          	mov    BYTE PTR [esp+0x3c],bl
  ac81e4:	89 b4 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],esi
  ac81eb:	e8 90 f2 ff ff       	call   0xac7480
  ac81f0:	8b 7c 24 64          	mov    edi,DWORD PTR [esp+0x64]
  ac81f4:	8b 74 24 60          	mov    esi,DWORD PTR [esp+0x60]
  ac81f8:	2b fe                	sub    edi,esi
  ac81fa:	c1 ff 02             	sar    edi,0x2
  ac81fd:	33 c0                	xor    eax,eax
  ac81ff:	85 ff                	test   edi,edi
  ac8201:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  ac8205:	0f 8e f1 00 00 00    	jle    0xac82fc
  ac820b:	eb 03                	jmp    0xac8210
  ac820d:	8d 49 00             	lea    ecx,[ecx+0x0]
  ac8210:	8b 34 86             	mov    esi,DWORD PTR [esi+eax*4]
  ac8213:	85 f6                	test   esi,esi
  ac8215:	89 74 24 74          	mov    DWORD PTR [esp+0x74],esi
  ac8219:	0f 84 c2 00 00 00    	je     0xac82e1
  ac821f:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  ac8222:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  ac8225:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  ac8229:	89 94 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edx
  ac8230:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  ac8234:	8b 1c 91             	mov    ebx,DWORD PTR [ecx+edx*4]
  ac8237:	89 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],eax
  ac823e:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  ac8245:	50                   	push   eax
  ac8246:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  ac824d:	51                   	push   ecx
  ac824e:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  ac8252:	e8 69 04 b6 ff       	call   0x6286c0
  ac8257:	39 18                	cmp    DWORD PTR [eax],ebx
  ac8259:	0f 85 82 00 00 00    	jne    0xac82e1
  ac825f:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  ac8262:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  ac8265:	c6 44 24 70 00       	mov    BYTE PTR [esp+0x70],0x0
  ac826a:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  ac826e:	51                   	push   ecx
  ac826f:	89 54 24 7c          	mov    DWORD PTR [esp+0x7c],edx
  ac8273:	8d 54 24 7c          	lea    edx,[esp+0x7c]
  ac8277:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  ac827e:	52                   	push   edx
  ac827f:	8d 84 24 9c 00 00 00 	lea    eax,[esp+0x9c]
  ac8286:	50                   	push   eax
  ac8287:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  ac828b:	e8 60 06 b6 ff       	call   0x6288f0
  ac8290:	80 7d 14 00          	cmp    BYTE PTR [ebp+0x14],0x0
  ac8294:	74 0b                	je     0xac82a1
  ac8296:	8b 0d fc a0 1e 01    	mov    ecx,DWORD PTR ds:0x11ea0fc
  ac829c:	85 4e 2c             	test   DWORD PTR [esi+0x2c],ecx
  ac829f:	75 1c                	jne    0xac82bd
  ac82a1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  ac82a4:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  ac82a7:	6a 05                	push   0x5
  ac82a9:	8d 54 24 24          	lea    edx,[esp+0x24]
  ac82ad:	52                   	push   edx
  ac82ae:	50                   	push   eax
  ac82af:	51                   	push   ecx
  ac82b0:	56                   	push   esi
  ac82b1:	e8 ba 65 04 00       	call   0xb0e870
  ac82b6:	83 c4 14             	add    esp,0x14
  ac82b9:	84 c0                	test   al,al
  ac82bb:	74 24                	je     0xac82e1
  ac82bd:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  ac82c0:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  ac82c3:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  ac82c6:	73 0e                	jae    0xac82d6
  ac82c8:	85 c0                	test   eax,eax
  ac82ca:	8d 50 04             	lea    edx,[eax+0x4]
  ac82cd:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  ac82d0:	74 0f                	je     0xac82e1
  ac82d2:	89 30                	mov    DWORD PTR [eax],esi
  ac82d4:	eb 0b                	jmp    0xac82e1
  ac82d6:	8d 54 24 74          	lea    edx,[esp+0x74]
  ac82da:	52                   	push   edx
  ac82db:	50                   	push   eax
  ac82dc:	e8 3f a1 eb ff       	call   0x982420
  ac82e1:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ac82e5:	8b 74 24 60          	mov    esi,DWORD PTR [esp+0x60]
  ac82e9:	83 c0 01             	add    eax,0x1
  ac82ec:	3b c7                	cmp    eax,edi
  ac82ee:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  ac82f2:	0f 8c 18 ff ff ff    	jl     0xac8210
  ac82f8:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  ac82fc:	8b 7c 24 58          	mov    edi,DWORD PTR [esp+0x58]
  ac8300:	83 c3 01             	add    ebx,0x1
  ac8303:	3b 5c 24 34          	cmp    ebx,DWORD PTR [esp+0x34]
  ac8307:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  ac830b:	0f 8c a4 fe ff ff    	jl     0xac81b5
  ac8311:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  ac8315:	83 c0 01             	add    eax,0x1
  ac8318:	3b 44 24 30          	cmp    eax,DWORD PTR [esp+0x30]
  ac831c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  ac8320:	0f 8c 7b fe ff ff    	jl     0xac81a1
  ac8326:	33 db                	xor    ebx,ebx
  ac8328:	3b f3                	cmp    esi,ebx
  ac832a:	74 09                	je     0xac8335
  ac832c:	56                   	push   esi
  ac832d:	e8 ae c1 a1 ff       	call   0x4e44e0
  ac8332:	83 c4 04             	add    esp,0x4
  ac8335:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  ac8339:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  ac833d:	50                   	push   eax
  ac833e:	51                   	push   ecx
  ac833f:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  ac8343:	e8 98 68 c7 ff       	call   0x73ebe0
  ac8348:	83 7c 24 40 01       	cmp    DWORD PTR [esp+0x40],0x1
  ac834d:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  ac8351:	76 3c                	jbe    0xac838f
  ac8353:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  ac8357:	52                   	push   edx
  ac8358:	e8 83 c1 a1 ff       	call   0x4e44e0
  ac835d:	83 c4 04             	add    esp,0x4
  ac8360:	5f                   	pop    edi
  ac8361:	5e                   	pop    esi
  ac8362:	5b                   	pop    ebx
  ac8363:	8b e5                	mov    esp,ebp
  ac8365:	5d                   	pop    ebp
  ac8366:	c2 14 00             	ret    0x14
  ac8369:	56                   	push   esi
  ac836a:	68 00 d9 14 01       	push   0x114d900
  ac836f:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  ac8373:	e8 68 68 c7 ff       	call   0x73ebe0
  ac8378:	39 74 24 40          	cmp    DWORD PTR [esp+0x40],esi
  ac837c:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  ac8380:	76 0d                	jbe    0xac838f
  ac8382:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  ac8386:	50                   	push   eax
  ac8387:	e8 54 c1 a1 ff       	call   0x4e44e0
  ac838c:	83 c4 04             	add    esp,0x4
  ac838f:	5f                   	pop    edi
  ac8390:	5e                   	pop    esi
  ac8391:	5b                   	pop    ebx
  ac8392:	8b e5                	mov    esp,ebp
  ac8394:	5d                   	pop    ebp
  ac8395:	c2 14 00             	ret    0x14
