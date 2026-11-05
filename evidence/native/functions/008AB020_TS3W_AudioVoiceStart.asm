# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x008ab020, 0x008ab250).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

008ab020 <.text+0x4aa020>:
  8ab020:	55                   	push   ebp
  8ab021:	8b ec                	mov    ebp,esp
  8ab023:	83 e4 f8             	and    esp,0xfffffff8
  8ab026:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  8ab029:	83 ec 14             	sub    esp,0x14
  8ab02c:	56                   	push   esi
  8ab02d:	8b f1                	mov    esi,ecx
  8ab02f:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab031:	8b 50 64             	mov    edx,DWORD PTR [eax+0x64]
  8ab034:	51                   	push   ecx
  8ab035:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ab038:	ff d2                	call   edx
  8ab03a:	8b 86 dc 0a 00 00    	mov    eax,DWORD PTR [esi+0xadc]
  8ab040:	a8 20                	test   al,0x20
  8ab042:	0f 85 ff 01 00 00    	jne    0x8ab247
  8ab048:	84 c0                	test   al,al
  8ab04a:	78 4d                	js     0x8ab099
  8ab04c:	80 be af 00 00 00 00 	cmp    BYTE PTR [esi+0xaf],0x0
  8ab053:	74 11                	je     0x8ab066
  8ab055:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab057:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  8ab05a:	6a 00                	push   0x0
  8ab05c:	6a ff                	push   0xffffffff
  8ab05e:	8b ce                	mov    ecx,esi
  8ab060:	ff d2                	call   edx
  8ab062:	84 c0                	test   al,al
  8ab064:	75 33                	jne    0x8ab099
  8ab066:	f6 86 d0 00 00 00 08 	test   BYTE PTR [esi+0xd0],0x8
  8ab06d:	74 33                	je     0x8ab0a2
  8ab06f:	f3 0f 10 86 30 03 00 	movss  xmm0,DWORD PTR [esi+0x330]
  8ab076:	00
  8ab077:	0f 2f 05 c8 2b 06 01 	comiss xmm0,DWORD PTR ds:0x1062bc8
  8ab07e:	76 22                	jbe    0x8ab0a2
  8ab080:	8b ce                	mov    ecx,esi
  8ab082:	e8 f9 f8 ff ff       	call   0x8aa980
  8ab087:	84 c0                	test   al,al
  8ab089:	75 17                	jne    0x8ab0a2
  8ab08b:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab08d:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
  8ab093:	6a 01                	push   0x1
  8ab095:	6a 04                	push   0x4
  8ab097:	ff d2                	call   edx
  8ab099:	32 c0                	xor    al,al
  8ab09b:	5e                   	pop    esi
  8ab09c:	8b e5                	mov    esp,ebp
  8ab09e:	5d                   	pop    ebp
  8ab09f:	c2 08 00             	ret    0x8
  8ab0a2:	83 7e 58 00          	cmp    DWORD PTR [esi+0x58],0x0
  8ab0a6:	0f 85 82 00 00 00    	jne    0x8ab12e
  8ab0ac:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab0ae:	8b 50 7c             	mov    edx,DWORD PTR [eax+0x7c]
  8ab0b1:	8b ce                	mov    ecx,esi
  8ab0b3:	ff d2                	call   edx
  8ab0b5:	84 c0                	test   al,al
  8ab0b7:	75 19                	jne    0x8ab0d2
  8ab0b9:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab0bb:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
  8ab0c1:	6a 00                	push   0x0
  8ab0c3:	6a 04                	push   0x4
  8ab0c5:	8b ce                	mov    ecx,esi
  8ab0c7:	ff d2                	call   edx
  8ab0c9:	32 c0                	xor    al,al
  8ab0cb:	5e                   	pop    esi
  8ab0cc:	8b e5                	mov    esp,ebp
  8ab0ce:	5d                   	pop    ebp
  8ab0cf:	c2 08 00             	ret    0x8
  8ab0d2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  8ab0d5:	85 c0                	test   eax,eax
  8ab0d7:	74 0b                	je     0x8ab0e4
  8ab0d9:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab0dc:	8b 11                	mov    edx,DWORD PTR [ecx]
  8ab0de:	50                   	push   eax
  8ab0df:	8b 42 44             	mov    eax,DWORD PTR [edx+0x44]
  8ab0e2:	ff d0                	call   eax
  8ab0e4:	f7 86 dc 0a 00 00 00 	test   DWORD PTR [esi+0xadc],0x40000
  8ab0eb:	00 04 00
  8ab0ee:	74 17                	je     0x8ab107
  8ab0f0:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab0f3:	d9 e8                	fld1
  8ab0f5:	8b 11                	mov    edx,DWORD PTR [ecx]
  8ab0f7:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  8ab0fa:	6a 01                	push   0x1
  8ab0fc:	51                   	push   ecx
  8ab0fd:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ab100:	68 be f9 f8 04       	push   0x4f8f9be
  8ab105:	ff d0                	call   eax
  8ab107:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab10a:	8b 11                	mov    edx,DWORD PTR [ecx]
  8ab10c:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  8ab10f:	ff d0                	call   eax
  8ab111:	84 c0                	test   al,al
  8ab113:	75 19                	jne    0x8ab12e
  8ab115:	8b 16                	mov    edx,DWORD PTR [esi]
  8ab117:	8b 82 98 00 00 00    	mov    eax,DWORD PTR [edx+0x98]
  8ab11d:	6a 00                	push   0x0
  8ab11f:	6a 04                	push   0x4
  8ab121:	8b ce                	mov    ecx,esi
  8ab123:	ff d0                	call   eax
  8ab125:	32 c0                	xor    al,al
  8ab127:	5e                   	pop    esi
  8ab128:	8b e5                	mov    esp,ebp
  8ab12a:	5d                   	pop    ebp
  8ab12b:	c2 08 00             	ret    0x8
  8ab12e:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab131:	8b 11                	mov    edx,DWORD PTR [ecx]
  8ab133:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  8ab136:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
  8ab139:	50                   	push   eax
  8ab13a:	ff d2                	call   edx
  8ab13c:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab13e:	8b 90 cc 00 00 00    	mov    edx,DWORD PTR [eax+0xcc]
  8ab144:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  8ab148:	51                   	push   ecx
  8ab149:	68 96 89 ac 98       	push   0x98ac8996
  8ab14e:	8b ce                	mov    ecx,esi
  8ab150:	ff d2                	call   edx
  8ab152:	84 c0                	test   al,al
  8ab154:	74 0e                	je     0x8ab164
  8ab156:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  8ab15c:	f3 0f 11 86 8c 0a 00 	movss  DWORD PTR [esi+0xa8c],xmm0
  8ab163:	00
  8ab164:	0f 57 c0             	xorps  xmm0,xmm0
  8ab167:	c6 86 a4 0a 00 00 01 	mov    BYTE PTR [esi+0xaa4],0x1
  8ab16e:	f3 0f 11 86 a8 0a 00 	movss  DWORD PTR [esi+0xaa8],xmm0
  8ab175:	00
  8ab176:	c7 86 a0 0a 00 00 01 	mov    DWORD PTR [esi+0xaa0],0x1
  8ab17d:	00 00 00
  8ab180:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab183:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ab185:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  8ab188:	6a 00                	push   0x0
  8ab18a:	ff d2                	call   edx
  8ab18c:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab18e:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  8ab191:	6a 01                	push   0x1
  8ab193:	6a ff                	push   0xffffffff
  8ab195:	8b ce                	mov    ecx,esi
  8ab197:	ff d2                	call   edx
  8ab199:	84 c0                	test   al,al
  8ab19b:	74 0c                	je     0x8ab1a9
  8ab19d:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab1a0:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ab1a2:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  8ab1a5:	6a 01                	push   0x1
  8ab1a7:	ff d2                	call   edx
  8ab1a9:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab1ab:	8b 90 90 00 00 00    	mov    edx,DWORD PTR [eax+0x90]
  8ab1b1:	8b ce                	mov    ecx,esi
  8ab1b3:	ff d2                	call   edx
  8ab1b5:	d9 ee                	fldz
  8ab1b7:	8b 06                	mov    eax,DWORD PTR [esi]
  8ab1b9:	8b 90 b4 00 00 00    	mov    edx,DWORD PTR [eax+0xb4]
  8ab1bf:	6a 01                	push   0x1
  8ab1c1:	83 ec 08             	sub    esp,0x8
  8ab1c4:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  8ab1c8:	8b ce                	mov    ecx,esi
  8ab1ca:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ab1cd:	ff d2                	call   edx
  8ab1cf:	f6 86 dc 0a 00 00 80 	test   BYTE PTR [esi+0xadc],0x80
  8ab1d6:	0f 85 bd fe ff ff    	jne    0x8ab099
  8ab1dc:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab1df:	dd 86 c0 0a 00 00    	fld    QWORD PTR [esi+0xac0]
  8ab1e5:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ab1e7:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  8ab1ea:	83 ec 08             	sub    esp,0x8
  8ab1ed:	dd 1c 24             	fstp   QWORD PTR [esp]
  8ab1f0:	ff d2                	call   edx
  8ab1f2:	84 c0                	test   al,al
  8ab1f4:	0f 84 bf fe ff ff    	je     0x8ab0b9
  8ab1fa:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ab1fd:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ab1ff:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
  8ab202:	8d 54 24 0c          	lea    edx,[esp+0xc]
  8ab206:	52                   	push   edx
  8ab207:	68 cd d0 03 ba       	push   0xba03d0cd
  8ab20c:	ff d0                	call   eax
  8ab20e:	84 c0                	test   al,al
  8ab210:	74 12                	je     0x8ab224
  8ab212:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  8ab216:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
  8ab21a:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  8ab21e:	89 8e d0 0a 00 00    	mov    DWORD PTR [esi+0xad0],ecx
  8ab224:	0f 57 c0             	xorps  xmm0,xmm0
  8ab227:	f3 0f 11 86 30 03 00 	movss  DWORD PTR [esi+0x330],xmm0
  8ab22e:	00
  8ab22f:	83 8e dc 0a 00 00 20 	or     DWORD PTR [esi+0xadc],0x20
  8ab236:	e8 c5 4b 00 00       	call   0x8afe00
  8ab23b:	8b 10                	mov    edx,DWORD PTR [eax]
  8ab23d:	8b c8                	mov    ecx,eax
  8ab23f:	8b 82 2c 01 00 00    	mov    eax,DWORD PTR [edx+0x12c]
  8ab245:	ff d0                	call   eax
  8ab247:	b0 01                	mov    al,0x1
  8ab249:	5e                   	pop    esi
  8ab24a:	8b e5                	mov    esp,ebp
  8ab24c:	5d                   	pop    ebp
  8ab24d:	c2 08 00             	ret    0x8
