# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009470e0, 0x0094731b); analyst name FootprintComponent_CollectNamedPolygons.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009470e0 <.text+0x5460e0>:
  9470e0:	51                   	push   ecx
  9470e1:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  9470e5:	53                   	push   ebx
  9470e6:	55                   	push   ebp
  9470e7:	56                   	push   esi
  9470e8:	8b f1                	mov    esi,ecx
  9470ea:	c6 00 80             	mov    BYTE PTR [eax],0x80
  9470ed:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  9470f0:	85 c0                	test   eax,eax
  9470f2:	57                   	push   edi
  9470f3:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  9470f7:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  9470fb:	0f 84 c9 00 00 00    	je     0x9471ca
  947101:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  947104:	85 c9                	test   ecx,ecx
  947106:	74 61                	je     0x947169
  947108:	e8 43 bc fe ff       	call   0x932d50
  94710d:	8b e8                	mov    ebp,eax
  94710f:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  947112:	2b 45 00             	sub    eax,DWORD PTR [ebp+0x0]
  947115:	c1 f8 06             	sar    eax,0x6
  947118:	0f 84 ac 00 00 00    	je     0x9471ca
  94711e:	33 db                	xor    ebx,ebx
  947120:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  947124:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  947127:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  94712b:	03 f3                	add    esi,ebx
  94712d:	39 0e                	cmp    DWORD PTR [esi],ecx
  94712f:	75 2c                	jne    0x94715d
  947131:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  947134:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  947137:	73 12                	jae    0x94714b
  947139:	85 c9                	test   ecx,ecx
  94713b:	8d 51 40             	lea    edx,[ecx+0x40]
  94713e:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  947141:	74 11                	je     0x947154
  947143:	56                   	push   esi
  947144:	e8 67 46 ee ff       	call   0x82b7b0
  947149:	eb 09                	jmp    0x947154
  94714b:	56                   	push   esi
  94714c:	51                   	push   ecx
  94714d:	8b cf                	mov    ecx,edi
  94714f:	e8 cc 80 ee ff       	call   0x82f220
  947154:	8a 46 05             	mov    al,BYTE PTR [esi+0x5]
  947157:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  94715b:	88 01                	mov    BYTE PTR [ecx],al
  94715d:	83 c3 40             	add    ebx,0x40
  947160:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  947165:	75 bd                	jne    0x947124
  947167:	eb 5d                	jmp    0x9471c6
  947169:	8b c8                	mov    ecx,eax
  94716b:	e8 e0 bb fe ff       	call   0x932d50
  947170:	8b e8                	mov    ebp,eax
  947172:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  947175:	2b 45 00             	sub    eax,DWORD PTR [ebp+0x0]
  947178:	c1 f8 06             	sar    eax,0x6
  94717b:	74 4d                	je     0x9471ca
  94717d:	33 db                	xor    ebx,ebx
  94717f:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  947183:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  947186:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  94718a:	03 f3                	add    esi,ebx
  94718c:	39 16                	cmp    DWORD PTR [esi],edx
  94718e:	75 2c                	jne    0x9471bc
  947190:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  947193:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  947196:	73 12                	jae    0x9471aa
  947198:	85 c9                	test   ecx,ecx
  94719a:	8d 41 40             	lea    eax,[ecx+0x40]
  94719d:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  9471a0:	74 11                	je     0x9471b3
  9471a2:	56                   	push   esi
  9471a3:	e8 08 46 ee ff       	call   0x82b7b0
  9471a8:	eb 09                	jmp    0x9471b3
  9471aa:	56                   	push   esi
  9471ab:	51                   	push   ecx
  9471ac:	8b cf                	mov    ecx,edi
  9471ae:	e8 6d 80 ee ff       	call   0x82f220
  9471b3:	8a 4e 05             	mov    cl,BYTE PTR [esi+0x5]
  9471b6:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  9471ba:	88 0a                	mov    BYTE PTR [edx],cl
  9471bc:	83 c3 40             	add    ebx,0x40
  9471bf:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  9471c4:	75 bd                	jne    0x947183
  9471c6:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  9471ca:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  9471cd:	85 c9                	test   ecx,ecx
  9471cf:	74 66                	je     0x947237
  9471d1:	e8 7a bb fe ff       	call   0x932d50
  9471d6:	8b e8                	mov    ebp,eax
  9471d8:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  9471db:	2b 45 00             	sub    eax,DWORD PTR [ebp+0x0]
  9471de:	c1 f8 06             	sar    eax,0x6
  9471e1:	74 54                	je     0x947237
  9471e3:	33 db                	xor    ebx,ebx
  9471e5:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  9471e9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  9471f0:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  9471f3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  9471f7:	03 f3                	add    esi,ebx
  9471f9:	39 06                	cmp    DWORD PTR [esi],eax
  9471fb:	75 2c                	jne    0x947229
  9471fd:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  947200:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  947203:	73 12                	jae    0x947217
  947205:	85 c9                	test   ecx,ecx
  947207:	8d 51 40             	lea    edx,[ecx+0x40]
  94720a:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  94720d:	74 11                	je     0x947220
  94720f:	56                   	push   esi
  947210:	e8 9b 45 ee ff       	call   0x82b7b0
  947215:	eb 09                	jmp    0x947220
  947217:	56                   	push   esi
  947218:	51                   	push   ecx
  947219:	8b cf                	mov    ecx,edi
  94721b:	e8 00 80 ee ff       	call   0x82f220
  947220:	8a 46 05             	mov    al,BYTE PTR [esi+0x5]
  947223:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  947227:	88 01                	mov    BYTE PTR [ecx],al
  947229:	83 c3 40             	add    ebx,0x40
  94722c:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  947231:	75 bd                	jne    0x9471f0
  947233:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  947237:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  94723a:	85 c9                	test   ecx,ecx
  94723c:	0f 84 d1 00 00 00    	je     0x947313
  947242:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  947245:	85 c0                	test   eax,eax
  947247:	74 69                	je     0x9472b2
  947249:	8b c8                	mov    ecx,eax
  94724b:	e8 10 bb fe ff       	call   0x932d60
  947250:	8b e8                	mov    ebp,eax
  947252:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  947255:	2b 45 00             	sub    eax,DWORD PTR [ebp+0x0]
  947258:	c1 f8 06             	sar    eax,0x6
  94725b:	0f 84 b2 00 00 00    	je     0x947313
  947261:	33 db                	xor    ebx,ebx
  947263:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  947267:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  94726a:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  94726e:	03 f3                	add    esi,ebx
  947270:	39 16                	cmp    DWORD PTR [esi],edx
  947272:	75 2c                	jne    0x9472a0
  947274:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  947277:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  94727a:	73 12                	jae    0x94728e
  94727c:	85 c9                	test   ecx,ecx
  94727e:	8d 41 40             	lea    eax,[ecx+0x40]
  947281:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  947284:	74 11                	je     0x947297
  947286:	56                   	push   esi
  947287:	e8 24 45 ee ff       	call   0x82b7b0
  94728c:	eb 09                	jmp    0x947297
  94728e:	56                   	push   esi
  94728f:	51                   	push   ecx
  947290:	8b cf                	mov    ecx,edi
  947292:	e8 89 7f ee ff       	call   0x82f220
  947297:	8a 4e 05             	mov    cl,BYTE PTR [esi+0x5]
  94729a:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  94729e:	88 0a                	mov    BYTE PTR [edx],cl
  9472a0:	83 c3 40             	add    ebx,0x40
  9472a3:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  9472a8:	75 bd                	jne    0x947267
  9472aa:	5f                   	pop    edi
  9472ab:	5e                   	pop    esi
  9472ac:	5d                   	pop    ebp
  9472ad:	5b                   	pop    ebx
  9472ae:	59                   	pop    ecx
  9472af:	c2 0c 00             	ret    0xc
  9472b2:	e8 a9 ba fe ff       	call   0x932d60
  9472b7:	8b e8                	mov    ebp,eax
  9472b9:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  9472bc:	2b 45 00             	sub    eax,DWORD PTR [ebp+0x0]
  9472bf:	c1 f8 06             	sar    eax,0x6
  9472c2:	74 4f                	je     0x947313
  9472c4:	33 db                	xor    ebx,ebx
  9472c6:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  9472ca:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  9472d0:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  9472d3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  9472d7:	03 f3                	add    esi,ebx
  9472d9:	39 06                	cmp    DWORD PTR [esi],eax
  9472db:	75 2c                	jne    0x947309
  9472dd:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  9472e0:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  9472e3:	73 12                	jae    0x9472f7
  9472e5:	85 c9                	test   ecx,ecx
  9472e7:	8d 51 40             	lea    edx,[ecx+0x40]
  9472ea:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  9472ed:	74 11                	je     0x947300
  9472ef:	56                   	push   esi
  9472f0:	e8 bb 44 ee ff       	call   0x82b7b0
  9472f5:	eb 09                	jmp    0x947300
  9472f7:	56                   	push   esi
  9472f8:	51                   	push   ecx
  9472f9:	8b cf                	mov    ecx,edi
  9472fb:	e8 20 7f ee ff       	call   0x82f220
  947300:	8a 46 05             	mov    al,BYTE PTR [esi+0x5]
  947303:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  947307:	88 01                	mov    BYTE PTR [ecx],al
  947309:	83 c3 40             	add    ebx,0x40
  94730c:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  947311:	75 bd                	jne    0x9472d0
  947313:	5f                   	pop    edi
  947314:	5e                   	pop    esi
  947315:	5d                   	pop    ebp
  947316:	5b                   	pop    ebx
  947317:	59                   	pop    ecx
  947318:	c2 0c 00             	ret    0xc
