# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007521c0, 0x007522f5); analyst name RouteGoal_ExpandDestinations.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007521c0 <.text+0x3511c0>:
  7521c0:	55                   	push   ebp
  7521c1:	8b ec                	mov    ebp,esp
  7521c3:	83 e4 f0             	and    esp,0xfffffff0
  7521c6:	83 ec 24             	sub    esp,0x24
  7521c9:	53                   	push   ebx
  7521ca:	8d 59 18             	lea    ebx,[ecx+0x18]
  7521cd:	56                   	push   esi
  7521ce:	8b 33                	mov    esi,DWORD PTR [ebx]
  7521d0:	3b f3                	cmp    esi,ebx
  7521d2:	57                   	push   edi
  7521d3:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  7521d6:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
  7521db:	74 4c                	je     0x752229
  7521dd:	83 c1 20             	add    ecx,0x20
  7521e0:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  7521e4:	85 f6                	test   esi,esi
  7521e6:	74 05                	je     0x7521ed
  7521e8:	8d 4e fc             	lea    ecx,[esi-0x4]
  7521eb:	eb 02                	jmp    0x7521ef
  7521ed:	33 c9                	xor    ecx,ecx
  7521ef:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  7521f2:	8b 01                	mov    eax,DWORD PTR [ecx]
  7521f4:	52                   	push   edx
  7521f5:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  7521f9:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
  7521fc:	57                   	push   edi
  7521fd:	52                   	push   edx
  7521fe:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  752201:	52                   	push   edx
  752202:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  752205:	52                   	push   edx
  752206:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  752209:	52                   	push   edx
  75220a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  75220d:	52                   	push   edx
  75220e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  752211:	52                   	push   edx
  752212:	ff d0                	call   eax
  752214:	8b 36                	mov    esi,DWORD PTR [esi]
  752216:	08 44 24 1b          	or     BYTE PTR [esp+0x1b],al
  75221a:	3b f3                	cmp    esi,ebx
  75221c:	75 c6                	jne    0x7521e4
  75221e:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  752223:	0f 85 9f 00 00 00    	jne    0x7522c8
  752229:	e8 42 53 1e 00       	call   0x937570
  75222e:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  752231:	8b 77 24             	mov    esi,DWORD PTR [edi+0x24]
  752234:	8b ca                	mov    ecx,edx
  752236:	0b ce                	or     ecx,esi
  752238:	0f 84 aa 00 00 00    	je     0x7522e8
  75223e:	56                   	push   esi
  75223f:	52                   	push   edx
  752240:	8b c8                	mov    ecx,eax
  752242:	e8 39 5d 1e 00       	call   0x937f80
  752247:	8b f0                	mov    esi,eax
  752249:	33 db                	xor    ebx,ebx
  75224b:	3b f3                	cmp    esi,ebx
  75224d:	74 71                	je     0x7522c0
  75224f:	8d 56 04             	lea    edx,[esi+0x4]
  752252:	b8 01 00 00 00       	mov    eax,0x1
  752257:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  75225b:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  752261:	51                   	push   ecx
  752262:	8b ce                	mov    ecx,esi
  752264:	e8 f7 1f 1e 00       	call   0x934260
  752269:	3b c3                	cmp    eax,ebx
  75226b:	74 53                	je     0x7522c0
  75226d:	8d 54 24 20          	lea    edx,[esp+0x20]
  752271:	52                   	push   edx
  752272:	8b c8                	mov    ecx,eax
  752274:	e8 b7 57 20 00       	call   0x957a30
  752279:	50                   	push   eax
  75227a:	8d 4f 2c             	lea    ecx,[edi+0x2c]
  75227d:	e8 7e 9e 01 00       	call   0x76c100
  752282:	c7 07 10 00 00 00    	mov    DWORD PTR [edi],0x10
  752288:	c7 47 28 03 00 00 00 	mov    DWORD PTR [edi+0x28],0x3
  75228f:	3b f3                	cmp    esi,ebx
  752291:	74 55                	je     0x7522e8
  752293:	8d 46 04             	lea    eax,[esi+0x4]
  752296:	8b c8                	mov    ecx,eax
  752298:	83 ca ff             	or     edx,0xffffffff
  75229b:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  75229f:	4a                   	dec    edx
  7522a0:	75 46                	jne    0x7522e8
  7522a2:	b9 01 00 00 00       	mov    ecx,0x1
  7522a7:	87 08                	xchg   DWORD PTR [eax],ecx
  7522a9:	8b 16                	mov    edx,DWORD PTR [esi]
  7522ab:	8b 02                	mov    eax,DWORD PTR [edx]
  7522ad:	6a 01                	push   0x1
  7522af:	8b ce                	mov    ecx,esi
  7522b1:	ff d0                	call   eax
  7522b3:	8a 44 24 1b          	mov    al,BYTE PTR [esp+0x1b]
  7522b7:	5f                   	pop    edi
  7522b8:	5e                   	pop    esi
  7522b9:	5b                   	pop    ebx
  7522ba:	8b e5                	mov    esp,ebp
  7522bc:	5d                   	pop    ebp
  7522bd:	c2 1c 00             	ret    0x1c
  7522c0:	89 5f 20             	mov    DWORD PTR [edi+0x20],ebx
  7522c3:	89 5f 24             	mov    DWORD PTR [edi+0x24],ebx
  7522c6:	eb c7                	jmp    0x75228f
  7522c8:	d9 ee                	fldz
  7522ca:	83 ec 0c             	sub    esp,0xc
  7522cd:	d9 54 24 08          	fst    DWORD PTR [esp+0x8]
  7522d1:	8d 4f 2c             	lea    ecx,[edi+0x2c]
  7522d4:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  7522d8:	d9 1c 24             	fstp   DWORD PTR [esp]
  7522db:	e8 90 9c 01 00       	call   0x76bf70
  7522e0:	33 c0                	xor    eax,eax
  7522e2:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  7522e5:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  7522e8:	8a 44 24 1b          	mov    al,BYTE PTR [esp+0x1b]
  7522ec:	5f                   	pop    edi
  7522ed:	5e                   	pop    esi
  7522ee:	5b                   	pop    ebx
  7522ef:	8b e5                	mov    esp,ebp
  7522f1:	5d                   	pop    ebp
  7522f2:	c2 1c 00             	ret    0x1c
