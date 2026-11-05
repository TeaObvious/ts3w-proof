# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00729150 (ResourceRequests_RetireLoad)
Complete body envelope: 0x00729150..0x00729350 (exclusive end)
Body ranges: [[00729150, 007292c9] [007292d0, 0072934f]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00729150 <.text+0x328150>:
  729150:	83 ec 20             	sub    esp,0x20
  729153:	53                   	push   ebx
  729154:	55                   	push   ebp
  729155:	56                   	push   esi
  729156:	57                   	push   edi
  729157:	8b d9                	mov    ebx,ecx
  729159:	8d 4b 40             	lea    ecx,[ebx+0x40]
  72915c:	68 44 e3 ff 00       	push   0xffe344
  729161:	e8 9a 8a db ff       	call   0x4e1c00
  729166:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  72916a:	80 bf 9c 00 00 00 00 	cmp    BYTE PTR [edi+0x9c],0x0
  729171:	74 11                	je     0x729184
  729173:	8b 4f 2c             	mov    ecx,DWORD PTR [edi+0x2c]
  729176:	c6 87 9c 00 00 00 00 	mov    BYTE PTR [edi+0x9c],0x0
  72917d:	8b 01                	mov    eax,DWORD PTR [ecx]
  72917f:	8b 50 54             	mov    edx,DWORD PTR [eax+0x54]
  729182:	ff d2                	call   edx
  729184:	80 bf 98 00 00 00 00 	cmp    BYTE PTR [edi+0x98],0x0
  72918b:	74 16                	je     0x7291a3
  72918d:	8d 47 08             	lea    eax,[edi+0x8]
  729190:	50                   	push   eax
  729191:	8d 8b 80 00 00 00    	lea    ecx,[ebx+0x80]
  729197:	e8 f4 e3 ff ff       	call   0x727590
  72919c:	c6 87 98 00 00 00 00 	mov    BYTE PTR [edi+0x98],0x0
  7291a3:	80 bf 99 00 00 00 00 	cmp    BYTE PTR [edi+0x99],0x0
  7291aa:	74 6c                	je     0x729218
  7291ac:	c6 87 99 00 00 00 00 	mov    BYTE PTR [edi+0x99],0x0
  7291b3:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  7291b6:	3b 43 1c             	cmp    eax,DWORD PTR [ebx+0x1c]
  7291b9:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
  7291bc:	8b 6b 14             	mov    ebp,DWORD PTR [ebx+0x14]
  7291bf:	8b 73 18             	mov    esi,DWORD PTR [ebx+0x18]
  7291c2:	74 54                	je     0x729218
  7291c4:	8b 10                	mov    edx,DWORD PTR [eax]
  7291c6:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  7291ca:	8b 97 a4 00 00 00    	mov    edx,DWORD PTR [edi+0xa4]
  7291d0:	3b 54 24 34          	cmp    edx,DWORD PTR [esp+0x34]
  7291d4:	74 1c                	je     0x7291f2
  7291d6:	83 c0 08             	add    eax,0x8
  7291d9:	3b c5                	cmp    eax,ebp
  7291db:	75 0e                	jne    0x7291eb
  7291dd:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7291e0:	83 c6 04             	add    esi,0x4
  7291e3:	8d a9 00 01 00 00    	lea    ebp,[ecx+0x100]
  7291e9:	8b c1                	mov    eax,ecx
  7291eb:	3b 43 1c             	cmp    eax,DWORD PTR [ebx+0x1c]
  7291ee:	75 d4                	jne    0x7291c4
  7291f0:	eb 26                	jmp    0x729218
  7291f2:	83 ec 10             	sub    esp,0x10
  7291f5:	8b d4                	mov    edx,esp
  7291f7:	89 02                	mov    DWORD PTR [edx],eax
  7291f9:	8d 44 24 30          	lea    eax,[esp+0x30]
  7291fd:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  729200:	50                   	push   eax
  729201:	8d 4b 04             	lea    ecx,[ebx+0x4]
  729204:	89 6a 08             	mov    DWORD PTR [edx+0x8],ebp
  729207:	89 72 0c             	mov    DWORD PTR [edx+0xc],esi
  72920a:	e8 41 fc ff ff       	call   0x728e50
  72920f:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  729213:	e8 38 21 e7 ff       	call   0x59b350
  729218:	80 bf a1 00 00 00 00 	cmp    BYTE PTR [edi+0xa1],0x0
  72921f:	0f 85 05 01 00 00    	jne    0x72932a
  729225:	80 bf 9e 00 00 00 00 	cmp    BYTE PTR [edi+0x9e],0x0
  72922c:	75 07                	jne    0x729235
  72922e:	c6 87 9e 00 00 00 01 	mov    BYTE PTR [edi+0x9e],0x1
  729235:	8b 8f b0 00 00 00    	mov    ecx,DWORD PTR [edi+0xb0]
  72923b:	0b 8f b4 00 00 00    	or     ecx,DWORD PTR [edi+0xb4]
  729241:	75 0f                	jne    0x729252
  729243:	0f 57 c0             	xorps  xmm0,xmm0
  729246:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  72924c:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  729250:	eb 37                	jmp    0x729289
  729252:	8d 54 24 10          	lea    edx,[esp+0x10]
  729256:	52                   	push   edx
  729257:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  72925d:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  729261:	2b 87 b0 00 00 00    	sub    eax,DWORD PTR [edi+0xb0]
  729267:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  72926b:	1b 8f b4 00 00 00    	sbb    ecx,DWORD PTR [edi+0xb4]
  729271:	6a 04                	push   0x4
  729273:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  729277:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  72927b:	e8 00 a6 dc ff       	call   0x4f3880
  729280:	df 6c 24 1c          	fild   QWORD PTR [esp+0x1c]
  729284:	83 c4 04             	add    esp,0x4
  729287:	de c9                	fmulp  st(1),st
  729289:	51                   	push   ecx
  72928a:	d9 1c 24             	fstp   DWORD PTR [esp]
  72928d:	8d 47 10             	lea    eax,[edi+0x10]
  729290:	6a 03                	push   0x3
  729292:	50                   	push   eax
  729293:	8b cb                	mov    ecx,ebx
  729295:	e8 16 eb ff ff       	call   0x727db0
  72929a:	8b 4f 28             	mov    ecx,DWORD PTR [edi+0x28]
  72929d:	85 c9                	test   ecx,ecx
  72929f:	74 1c                	je     0x7292bd
  7292a1:	8b 11                	mov    edx,DWORD PTR [ecx]
  7292a3:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  7292a6:	ff d0                	call   eax
  7292a8:	8b 4f 28             	mov    ecx,DWORD PTR [edi+0x28]
  7292ab:	85 c9                	test   ecx,ecx
  7292ad:	74 0e                	je     0x7292bd
  7292af:	c7 47 28 00 00 00 00 	mov    DWORD PTR [edi+0x28],0x0
  7292b6:	8b 11                	mov    edx,DWORD PTR [ecx]
  7292b8:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7292bb:	ff d0                	call   eax
  7292bd:	8d af b8 00 00 00    	lea    ebp,[edi+0xb8]
  7292c3:	39 6d 04             	cmp    DWORD PTR [ebp+0x4],ebp
  7292c6:	74 62                	je     0x72932a
  7292c8:	eb 06                	jmp    0x7292d0


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007292d0 <.text+0x3282d0>:
  7292d0:	8b b7 bc 00 00 00    	mov    esi,DWORD PTR [edi+0xbc]
  7292d6:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  7292d9:	85 c0                	test   eax,eax
  7292db:	74 1d                	je     0x7292fa
  7292dd:	c7 00 02 00 00 00    	mov    DWORD PTR [eax],0x2
  7292e3:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  7292e6:	85 c9                	test   ecx,ecx
  7292e8:	74 10                	je     0x7292fa
  7292ea:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  7292ed:	8b 11                	mov    edx,DWORD PTR [ecx]
  7292ef:	8b 12                	mov    edx,DWORD PTR [edx]
  7292f1:	6a 00                	push   0x0
  7292f3:	50                   	push   eax
  7292f4:	8d 47 10             	lea    eax,[edi+0x10]
  7292f7:	50                   	push   eax
  7292f8:	ff d2                	call   edx
  7292fa:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  7292fd:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  729300:	89 29                	mov    DWORD PTR [ecx],ebp
  729302:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
  729305:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  729308:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
  72930b:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  72930e:	85 c9                	test   ecx,ecx
  729310:	74 05                	je     0x729317
  729312:	e8 39 20 e7 ff       	call   0x59b350
  729317:	8b 8b 98 03 00 00    	mov    ecx,DWORD PTR [ebx+0x398]
  72931d:	89 0e                	mov    DWORD PTR [esi],ecx
  72931f:	89 b3 98 03 00 00    	mov    DWORD PTR [ebx+0x398],esi
  729325:	39 6d 04             	cmp    DWORD PTR [ebp+0x4],ebp
  729328:	75 a6                	jne    0x7292d0
  72932a:	8d 4b 40             	lea    ecx,[ebx+0x40]
  72932d:	e8 8e 89 db ff       	call   0x4e1cc0
  729332:	8d 8f c0 00 00 00    	lea    ecx,[edi+0xc0]
  729338:	e8 43 d0 ff ff       	call   0x726380
  72933d:	6a 01                	push   0x1
  72933f:	8b cb                	mov    ecx,ebx
  729341:	e8 ba e9 ff ff       	call   0x727d00
  729346:	5f                   	pop    edi
  729347:	5e                   	pop    esi
  729348:	5d                   	pop    ebp
  729349:	5b                   	pop    ebx
  72934a:	83 c4 20             	add    esp,0x20
  72934d:	c2 04 00             	ret    0x4
