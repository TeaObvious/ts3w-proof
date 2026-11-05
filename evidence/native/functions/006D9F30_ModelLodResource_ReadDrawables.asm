# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006d9f30 <.text+0x2d8f30>:
  6d9f30:	55                   	push   ebp
  6d9f31:	8b ec                	mov    ebp,esp
  6d9f33:	83 e4 f0             	and    esp,0xfffffff0
  6d9f36:	81 ec 84 01 00 00    	sub    esp,0x184
  6d9f3c:	53                   	push   ebx
  6d9f3d:	56                   	push   esi
  6d9f3e:	8b f1                	mov    esi,ecx
  6d9f40:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  6d9f43:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  6d9f46:	85 c0                	test   eax,eax
  6d9f48:	57                   	push   edi
  6d9f49:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  6d9f4d:	74 05                	je     0x6d9f54
  6d9f4f:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  6d9f52:	eb 02                	jmp    0x6d9f56
  6d9f54:	33 ff                	xor    edi,edi
  6d9f56:	8b 01                	mov    eax,DWORD PTR [ecx]
  6d9f58:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  6d9f5b:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  6d9f5f:	ff d2                	call   edx
  6d9f61:	83 f8 0c             	cmp    eax,0xc
  6d9f64:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  6d9f68:	0f 82 3b 09 00 00    	jb     0x6da8a9
  6d9f6e:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  6d9f72:	74 0d                	je     0x6d9f81
  6d9f74:	c1 e8 02             	shr    eax,0x2
  6d9f77:	50                   	push   eax
  6d9f78:	57                   	push   edi
  6d9f79:	e8 f2 90 0f 00       	call   0x7d3070
  6d9f7e:	83 c4 08             	add    esp,0x8
  6d9f81:	81 3f 4d 4c 4f 44    	cmp    DWORD PTR [edi],0x444f4c4d
  6d9f87:	0f 85 1c 09 00 00    	jne    0x6da8a9
  6d9f8d:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  6d9f90:	83 f8 01             	cmp    eax,0x1
  6d9f93:	0f 82 10 09 00 00    	jb     0x6da8a9
  6d9f99:	3d ff 02 00 00       	cmp    eax,0x2ff
  6d9f9e:	0f 87 05 09 00 00    	ja     0x6da8a9
  6d9fa4:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  6d9fa7:	50                   	push   eax
  6d9fa8:	8b ce                	mov    ecx,esi
  6d9faa:	e8 e1 09 00 00       	call   0x6da990
  6d9faf:	84 c0                	test   al,al
  6d9fb1:	0f 84 f2 08 00 00    	je     0x6da8a9
  6d9fb7:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6d9fba:	0f b7 51 20          	movzx  edx,WORD PTR [ecx+0x20]
  6d9fbe:	66 83 ea 01          	sub    dx,0x1
  6d9fc2:	8b ce                	mov    ecx,esi
  6d9fc4:	52                   	push   edx
  6d9fc5:	e8 36 0c 00 00       	call   0x6dac00
  6d9fca:	bb 90 00 00 00       	mov    ebx,0x90
  6d9fcf:	8d 8c 24 b8 00 00 00 	lea    ecx,[esp+0xb8]
  6d9fd6:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  6d9fda:	e8 e1 f4 ff ff       	call   0x6d94c0
  6d9fdf:	c7 84 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],0xff7e90
  6d9fe6:	90 7e ff 00 
  6d9fea:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
  6d9fee:	8d 77 0c             	lea    esi,[edi+0xc]
  6d9ff1:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
  6d9ff8:	00 
  6d9ff9:	0f 86 17 08 00 00    	jbe    0x6da816
  6d9fff:	90                   	nop
  6da000:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  6da004:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  6da007:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  6da00b:	8b 3c 91             	mov    edi,DWORD PTR [ecx+edx*4]
  6da00e:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  6da012:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  6da015:	33 c0                	xor    eax,eax
  6da017:	81 f9 00 02 00 00    	cmp    ecx,0x200
  6da01d:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  6da021:	72 2b                	jb     0x6da04e
  6da023:	8b 06                	mov    eax,DWORD PTR [esi]
  6da025:	8b 5c 24 58          	mov    ebx,DWORD PTR [esp+0x58]
  6da029:	83 c6 04             	add    esi,0x4
  6da02c:	2b de                	sub    ebx,esi
  6da02e:	03 da                	add    ebx,edx
  6da030:	3b d8                	cmp    ebx,eax
  6da032:	0f 82 54 08 00 00    	jb     0x6da88c
  6da038:	03 c6                	add    eax,esi
  6da03a:	81 f9 03 02 00 00    	cmp    ecx,0x203
  6da040:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  6da044:	72 05                	jb     0x6da04b
  6da046:	8b 40 ec             	mov    eax,DWORD PTR [eax-0x14]
  6da049:	eb 03                	jmp    0x6da04e
  6da04b:	8b 40 fc             	mov    eax,DWORD PTR [eax-0x4]
  6da04e:	50                   	push   eax
  6da04f:	8b cf                	mov    ecx,edi
  6da051:	e8 ca 51 fb ff       	call   0x68f220
  6da056:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  6da059:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
  6da05c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da05f:	50                   	push   eax
  6da060:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  6da064:	c1 eb 08             	shr    ebx,0x8
  6da067:	e8 c4 c5 04 00       	call   0x726630
  6da06c:	85 c0                	test   eax,eax
  6da06e:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  6da072:	0f 85 41 02 00 00    	jne    0x6da2b9
  6da078:	39 46 08             	cmp    DWORD PTR [esi+0x8],eax
  6da07b:	0f 85 0b 08 00 00    	jne    0x6da88c
  6da081:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  6da084:	51                   	push   ecx
  6da085:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da088:	e8 a3 c5 04 00       	call   0x726630
  6da08d:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  6da090:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da093:	52                   	push   edx
  6da094:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  6da098:	e8 93 c5 04 00       	call   0x726630
  6da09d:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  6da0a1:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6da0a5:	83 78 24 00          	cmp    DWORD PTR [eax+0x24],0x0
  6da0a9:	75 1f                	jne    0x6da0ca
  6da0ab:	8b c8                	mov    ecx,eax
  6da0ad:	8d 54 24 18          	lea    edx,[esp+0x18]
  6da0b1:	52                   	push   edx
  6da0b2:	8d 84 24 64 01 00 00 	lea    eax,[esp+0x164]
  6da0b9:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  6da0bd:	50                   	push   eax
  6da0be:	8d 8c 24 c0 00 00 00 	lea    ecx,[esp+0xc0]
  6da0c5:	e8 06 fe ff ff       	call   0x6d9ed0
  6da0ca:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  6da0ce:	83 79 24 00          	cmp    DWORD PTR [ecx+0x24],0x0
  6da0d2:	75 1f                	jne    0x6da0f3
  6da0d4:	8b d1                	mov    edx,ecx
  6da0d6:	8d 44 24 18          	lea    eax,[esp+0x18]
  6da0da:	50                   	push   eax
  6da0db:	8d 8c 24 5c 01 00 00 	lea    ecx,[esp+0x15c]
  6da0e2:	51                   	push   ecx
  6da0e3:	8d 8c 24 c0 00 00 00 	lea    ecx,[esp+0xc0]
  6da0ea:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  6da0ee:	e8 dd fd ff ff       	call   0x6d9ed0
  6da0f3:	f6 c3 08             	test   bl,0x8
  6da0f6:	a1 30 25 1d 01       	mov    eax,ds:0x11d2530
  6da0fb:	75 16                	jne    0x6da113
  6da0fd:	8b 90 f8 00 00 00    	mov    edx,DWORD PTR [eax+0xf8]
  6da103:	8b 80 f4 00 00 00    	mov    eax,DWORD PTR [eax+0xf4]
  6da109:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  6da10d:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6da111:	eb 14                	jmp    0x6da127
  6da113:	8b 88 00 01 00 00    	mov    ecx,DWORD PTR [eax+0x100]
  6da119:	8b 90 fc 00 00 00    	mov    edx,DWORD PTR [eax+0xfc]
  6da11f:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  6da123:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  6da127:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  6da12b:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  6da12e:	8b 11                	mov    edx,DWORD PTR [ecx]
  6da130:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  6da134:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6da138:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  6da13b:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  6da13f:	8b 51 2c             	mov    edx,DWORD PTR [ecx+0x2c]
  6da142:	52                   	push   edx
  6da143:	50                   	push   eax
  6da144:	d1 ea                	shr    edx,1
  6da146:	52                   	push   edx
  6da147:	33 d2                	xor    edx,edx
  6da149:	f7 74 24 34          	div    DWORD PTR [esp+0x34]
  6da14d:	8b 49 28             	mov    ecx,DWORD PTR [ecx+0x28]
  6da150:	51                   	push   ecx
  6da151:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  6da155:	50                   	push   eax
  6da156:	8b 41 28             	mov    eax,DWORD PTR [ecx+0x28]
  6da159:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  6da15d:	50                   	push   eax
  6da15e:	e8 cd 5c ff ff       	call   0x6cfe30
  6da163:	85 c0                	test   eax,eax
  6da165:	0f 85 3c 01 00 00    	jne    0x6da2a7
  6da16b:	50                   	push   eax
  6da16c:	50                   	push   eax
  6da16d:	50                   	push   eax
  6da16e:	50                   	push   eax
  6da16f:	68 60 7e ff 00       	push   0xff7e60
  6da174:	6a 20                	push   0x20
  6da176:	e8 85 a3 e0 ff       	call   0x4e4500
  6da17b:	83 c4 18             	add    esp,0x18
  6da17e:	85 c0                	test   eax,eax
  6da180:	74 09                	je     0x6da18b
  6da182:	8b c8                	mov    ecx,eax
  6da184:	e8 d7 08 f4 ff       	call   0x61aa60
  6da189:	eb 02                	jmp    0x6da18d
  6da18b:	33 c0                	xor    eax,eax
  6da18d:	50                   	push   eax
  6da18e:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  6da192:	e8 69 77 ea ff       	call   0x581900
  6da197:	6a 00                	push   0x0
  6da199:	6a 00                	push   0x0
  6da19b:	6a 00                	push   0x0
  6da19d:	6a 00                	push   0x0
  6da19f:	68 34 7e ff 00       	push   0xff7e34
  6da1a4:	6a 24                	push   0x24
  6da1a6:	e8 55 a3 e0 ff       	call   0x4e4500
  6da1ab:	83 c4 18             	add    esp,0x18
  6da1ae:	85 c0                	test   eax,eax
  6da1b0:	74 09                	je     0x6da1bb
  6da1b2:	8b c8                	mov    ecx,eax
  6da1b4:	e8 e7 d4 f3 ff       	call   0x6176a0
  6da1b9:	eb 02                	jmp    0x6da1bd
  6da1bb:	33 c0                	xor    eax,eax
  6da1bd:	50                   	push   eax
  6da1be:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  6da1c2:	e8 39 77 ea ff       	call   0x581900
  6da1c7:	83 7c 24 24 00       	cmp    DWORD PTR [esp+0x24],0x0
  6da1cc:	0f 84 e2 06 00 00    	je     0x6da8b4
  6da1d2:	83 7c 24 20 00       	cmp    DWORD PTR [esp+0x20],0x0
  6da1d7:	0f 84 e6 06 00 00    	je     0x6da8c3
  6da1dd:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  6da1e1:	8b 42 2c             	mov    eax,DWORD PTR [edx+0x2c]
  6da1e4:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  6da1e8:	8b 51 2c             	mov    edx,DWORD PTR [ecx+0x2c]
  6da1eb:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  6da1ef:	68 14 76 ff 00       	push   0xff7614
  6da1f4:	6a 00                	push   0x0
  6da1f6:	50                   	push   eax
  6da1f7:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  6da1fb:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  6da1ff:	e8 9c 06 f4 ff       	call   0x61a8a0
  6da204:	84 c0                	test   al,al
  6da206:	0f 84 6a 06 00 00    	je     0x6da876
  6da20c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6da210:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6da214:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
  6da217:	51                   	push   ecx
  6da218:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  6da21c:	50                   	push   eax
  6da21d:	e8 fe 06 f4 ff       	call   0x61a920
  6da222:	84 c0                	test   al,al
  6da224:	0f 84 4c 06 00 00    	je     0x6da876
  6da22a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  6da22e:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6da232:	6a 00                	push   0x0
  6da234:	6a 00                	push   0x0
  6da236:	d1 e8                	shr    eax,1
  6da238:	50                   	push   eax
  6da239:	e8 72 d3 f3 ff       	call   0x6175b0
  6da23e:	84 c0                	test   al,al
  6da240:	0f 84 30 06 00 00    	je     0x6da876
  6da246:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  6da24a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6da24e:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  6da251:	51                   	push   ecx
  6da252:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  6da256:	50                   	push   eax
  6da257:	e8 b4 d3 f3 ff       	call   0x617610
  6da25c:	84 c0                	test   al,al
  6da25e:	0f 84 12 06 00 00    	je     0x6da876
  6da264:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  6da268:	52                   	push   edx
  6da269:	8b cf                	mov    ecx,edi
  6da26b:	e8 00 4d fb ff       	call   0x68ef70
  6da270:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  6da274:	6a 00                	push   0x0
  6da276:	50                   	push   eax
  6da277:	6a 00                	push   0x0
  6da279:	8b cf                	mov    ecx,edi
  6da27b:	e8 50 4d fb ff       	call   0x68efd0
  6da280:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6da284:	51                   	push   ecx
  6da285:	8b cf                	mov    ecx,edi
  6da287:	e8 94 4d fb ff       	call   0x68f020
  6da28c:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6da290:	8b 11                	mov    edx,DWORD PTR [ecx]
  6da292:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  6da295:	ff d0                	call   eax
  6da297:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  6da29b:	8b 11                	mov    edx,DWORD PTR [ecx]
  6da29d:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  6da2a0:	ff d0                	call   eax
  6da2a2:	e9 b7 00 00 00       	jmp    0x6da35e
  6da2a7:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6da2ab:	50                   	push   eax
  6da2ac:	51                   	push   ecx
  6da2ad:	8b cf                	mov    ecx,edi
  6da2af:	e8 6c 59 fb ff       	call   0x68fc20
  6da2b4:	e9 a5 00 00 00       	jmp    0x6da35e
  6da2b9:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  6da2bc:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da2bf:	52                   	push   edx
  6da2c0:	e8 6b c3 04 00       	call   0x726630
  6da2c5:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da2c8:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6da2cc:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  6da2cf:	50                   	push   eax
  6da2d0:	e8 5b c3 04 00       	call   0x726630
  6da2d5:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6da2d9:	83 79 24 00          	cmp    DWORD PTR [ecx+0x24],0x0
  6da2dd:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6da2e1:	75 1f                	jne    0x6da302
  6da2e3:	8b d1                	mov    edx,ecx
  6da2e5:	8d 44 24 28          	lea    eax,[esp+0x28]
  6da2e9:	50                   	push   eax
  6da2ea:	8d 8c 24 54 01 00 00 	lea    ecx,[esp+0x154]
  6da2f1:	51                   	push   ecx
  6da2f2:	8d 8c 24 c0 00 00 00 	lea    ecx,[esp+0xc0]
  6da2f9:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
  6da2fd:	e8 ce fb ff ff       	call   0x6d9ed0
  6da302:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  6da306:	83 7a 24 00          	cmp    DWORD PTR [edx+0x24],0x0
  6da30a:	75 1f                	jne    0x6da32b
  6da30c:	8b c2                	mov    eax,edx
  6da30e:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  6da312:	51                   	push   ecx
  6da313:	8d 94 24 6c 01 00 00 	lea    edx,[esp+0x16c]
  6da31a:	52                   	push   edx
  6da31b:	8d 8c 24 c0 00 00 00 	lea    ecx,[esp+0xc0]
  6da322:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  6da326:	e8 a5 fb ff ff       	call   0x6d9ed0
  6da32b:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  6da32f:	8b 48 28             	mov    ecx,DWORD PTR [eax+0x28]
  6da332:	51                   	push   ecx
  6da333:	8b cf                	mov    ecx,edi
  6da335:	e8 36 4c fb ff       	call   0x68ef70
  6da33a:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  6da33d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  6da341:	52                   	push   edx
  6da342:	83 c0 28             	add    eax,0x28
  6da345:	50                   	push   eax
  6da346:	6a 00                	push   0x0
  6da348:	8b cf                	mov    ecx,edi
  6da34a:	e8 81 4c fb ff       	call   0x68efd0
  6da34f:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  6da353:	83 c1 28             	add    ecx,0x28
  6da356:	51                   	push   ecx
  6da357:	8b cf                	mov    ecx,edi
  6da359:	e8 c2 4c fb ff       	call   0x68f020
  6da35e:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  6da361:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da364:	52                   	push   edx
  6da365:	e8 c6 c2 04 00       	call   0x726630
  6da36a:	85 c0                	test   eax,eax
  6da36c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6da370:	c7 44 24 38 00 00 00 	mov    DWORD PTR [esp+0x38],0x0
  6da377:	00 
  6da378:	74 56                	je     0x6da3d0
  6da37a:	8b c8                	mov    ecx,eax
  6da37c:	8b 01                	mov    eax,DWORD PTR [ecx]
  6da37e:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  6da381:	68 d5 f7 02 02       	push   0x202f7d5
  6da386:	ff d2                	call   edx
  6da388:	85 c0                	test   eax,eax
  6da38a:	74 0a                	je     0x6da396
  6da38c:	50                   	push   eax
  6da38d:	8b cf                	mov    ecx,edi
  6da38f:	e8 0c 4e fb ff       	call   0x68f1a0
  6da394:	eb 3a                	jmp    0x6da3d0
  6da396:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  6da399:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
  6da39c:	83 c0 ff             	add    eax,0xffffffff
  6da39f:	50                   	push   eax
  6da3a0:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  6da3a4:	e8 f7 4b 07 00       	call   0x74efa0
  6da3a9:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  6da3ad:	50                   	push   eax
  6da3ae:	e8 0d 0b ff ff       	call   0x6caec0
  6da3b3:	84 c0                	test   al,al
  6da3b5:	74 19                	je     0x6da3d0
  6da3b7:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  6da3bb:	6a 00                	push   0x0
  6da3bd:	6a 01                	push   0x1
  6da3bf:	51                   	push   ecx
  6da3c0:	8b cf                	mov    ecx,edi
  6da3c2:	e8 39 70 fb ff       	call   0x691400
  6da3c7:	6a 00                	push   0x0
  6da3c9:	8b cf                	mov    ecx,edi
  6da3cb:	e8 30 5a fb ff       	call   0x68fe00
  6da3d0:	f3 0f 10 66 38       	movss  xmm4,DWORD PTR [esi+0x38]
  6da3d5:	f3 0f 10 46 30       	movss  xmm0,DWORD PTR [esi+0x30]
  6da3da:	f3 0f 10 4e 3c       	movss  xmm1,DWORD PTR [esi+0x3c]
  6da3df:	f3 0f 10 56 40       	movss  xmm2,DWORD PTR [esi+0x40]
  6da3e4:	f3 0f 10 5e 44       	movss  xmm3,DWORD PTR [esi+0x44]
  6da3e9:	f3 0f 11 a4 24 88 00 	movss  DWORD PTR [esp+0x88],xmm4
  6da3f0:	00 00 
  6da3f2:	f3 0f 10 66 34       	movss  xmm4,DWORD PTR [esi+0x34]
  6da3f7:	f3 0f 11 84 24 8c 00 	movss  DWORD PTR [esp+0x8c],xmm0
  6da3fe:	00 00 
  6da400:	f3 0f 11 84 24 80 00 	movss  DWORD PTR [esp+0x80],xmm0
  6da407:	00 00 
  6da409:	f3 0f 11 a4 24 84 00 	movss  DWORD PTR [esp+0x84],xmm4
  6da410:	00 00 
  6da412:	0f 28 84 24 80 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  6da419:	00 
  6da41a:	f3 0f 11 8c 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm1
  6da421:	00 00 
  6da423:	f3 0f 11 9c 24 98 00 	movss  DWORD PTR [esp+0x98],xmm3
  6da42a:	00 00 
  6da42c:	f3 0f 11 94 24 94 00 	movss  DWORD PTR [esp+0x94],xmm2
  6da433:	00 00 
  6da435:	f3 0f 11 8c 24 90 00 	movss  DWORD PTR [esp+0x90],xmm1
  6da43c:	00 00 
  6da43e:	8d 94 24 70 01 00 00 	lea    edx,[esp+0x170]
  6da445:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [esp+0x170],xmm0
  6da44c:	00 
  6da44d:	0f 28 84 24 90 00 00 	movaps xmm0,XMMWORD PTR [esp+0x90]
  6da454:	00 
  6da455:	52                   	push   edx
  6da456:	8b cf                	mov    ecx,edi
  6da458:	0f 29 84 24 84 01 00 	movaps XMMWORD PTR [esp+0x184],xmm0
  6da45f:	00 
  6da460:	e8 6b 59 fb ff       	call   0x68fdd0
  6da465:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  6da468:	89 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],eax
  6da46f:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  6da472:	89 8c 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],ecx
  6da479:	0f b6 56 14          	movzx  edx,BYTE PTR [esi+0x14]
  6da47d:	89 94 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],edx
  6da484:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  6da487:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  6da48e:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  6da491:	89 8c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ecx
  6da498:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  6da49b:	8d 84 24 a0 00 00 00 	lea    eax,[esp+0xa0]
  6da4a2:	50                   	push   eax
  6da4a3:	8b cf                	mov    ecx,edi
  6da4a5:	89 94 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],edx
  6da4ac:	e8 9f 4b fb ff       	call   0x68f050
  6da4b1:	0f b6 cb             	movzx  ecx,bl
  6da4b4:	81 e1 01 ff ff ff    	and    ecx,0xffffff01
  6da4ba:	51                   	push   ecx
  6da4bb:	8b cf                	mov    ecx,edi
  6da4bd:	e8 ce 4e fb ff       	call   0x68f390
  6da4c2:	8b d3                	mov    edx,ebx
  6da4c4:	c1 ea 02             	shr    edx,0x2
  6da4c7:	83 e2 01             	and    edx,0x1
  6da4ca:	52                   	push   edx
  6da4cb:	8b cf                	mov    ecx,edi
  6da4cd:	e8 6e 5c d3 ff       	call   0x410140
  6da4d2:	8b c3                	mov    eax,ebx
  6da4d4:	d1 e8                	shr    eax,1
  6da4d6:	24 01                	and    al,0x1
  6da4d8:	88 44 24 54          	mov    BYTE PTR [esp+0x54],al
  6da4dc:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  6da4e0:	50                   	push   eax
  6da4e1:	8b cf                	mov    ecx,edi
  6da4e3:	e8 c8 4e fb ff       	call   0x68f3b0
  6da4e8:	80 7c 24 54 00       	cmp    BYTE PTR [esp+0x54],0x0
  6da4ed:	74 08                	je     0x6da4f7
  6da4ef:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  6da4f3:	c6 41 71 01          	mov    BYTE PTR [ecx+0x71],0x1
  6da4f7:	8b d3                	mov    edx,ebx
  6da4f9:	c1 ea 03             	shr    edx,0x3
  6da4fc:	81 e2 01 ff ff ff    	and    edx,0xffffff01
  6da502:	52                   	push   edx
  6da503:	8b cf                	mov    ecx,edi
  6da505:	e8 d6 4e fb ff       	call   0x68f3e0
  6da50a:	8b c3                	mov    eax,ebx
  6da50c:	c1 e8 04             	shr    eax,0x4
  6da50f:	25 01 ff ff ff       	and    eax,0xffffff01
  6da514:	50                   	push   eax
  6da515:	8b cf                	mov    ecx,edi
  6da517:	e8 f4 4d fb ff       	call   0x68f310
  6da51c:	8b cb                	mov    ecx,ebx
  6da51e:	c1 e9 05             	shr    ecx,0x5
  6da521:	81 e1 01 ff ff ff    	and    ecx,0xffffff01
  6da527:	51                   	push   ecx
  6da528:	8b cf                	mov    ecx,edi
  6da52a:	e8 11 4f fb ff       	call   0x68f440
  6da52f:	8b d3                	mov    edx,ebx
  6da531:	c1 ea 06             	shr    edx,0x6
  6da534:	81 e2 01 ff ff ff    	and    edx,0xffffff01
  6da53a:	52                   	push   edx
  6da53b:	8b cf                	mov    ecx,edi
  6da53d:	e8 2e 4f fb ff       	call   0x68f470
  6da542:	8b c3                	mov    eax,ebx
  6da544:	c1 e8 07             	shr    eax,0x7
  6da547:	25 01 ff ff ff       	and    eax,0xffffff01
  6da54c:	50                   	push   eax
  6da54d:	8b cf                	mov    ecx,edi
  6da54f:	e8 4c 4f fb ff       	call   0x68f4a0
  6da554:	c1 eb 08             	shr    ebx,0x8
  6da557:	81 e3 01 ff ff ff    	and    ebx,0xffffff01
  6da55d:	53                   	push   ebx
  6da55e:	8b cf                	mov    ecx,edi
  6da560:	e8 6b 4f fb ff       	call   0x68f4d0
  6da565:	8b 4e 48             	mov    ecx,DWORD PTR [esi+0x48]
  6da568:	51                   	push   ecx
  6da569:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da56c:	e8 bf c0 04 00       	call   0x726630
  6da571:	8b d8                	mov    ebx,eax
  6da573:	53                   	push   ebx
  6da574:	8b cf                	mov    ecx,edi
  6da576:	e8 75 4c fb ff       	call   0x68f1f0
  6da57b:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
  6da57f:	8b 42 4c             	mov    eax,DWORD PTR [edx+0x4c]
  6da582:	83 c6 50             	add    esi,0x50
  6da585:	85 c0                	test   eax,eax
  6da587:	76 23                	jbe    0x6da5ac
  6da589:	85 db                	test   ebx,ebx
  6da58b:	74 09                	je     0x6da596
  6da58d:	50                   	push   eax
  6da58e:	56                   	push   esi
  6da58f:	8b cb                	mov    ecx,ebx
  6da591:	e8 ea 29 03 00       	call   0x70cf80
  6da596:	8b 5c 24 4c          	mov    ebx,DWORD PTR [esp+0x4c]
  6da59a:	8b 43 4c             	mov    eax,DWORD PTR [ebx+0x4c]
  6da59d:	50                   	push   eax
  6da59e:	56                   	push   esi
  6da59f:	8b cf                	mov    ecx,edi
  6da5a1:	e8 8a 4c fb ff       	call   0x68f230
  6da5a6:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  6da5a9:	8d 34 8e             	lea    esi,[esi+ecx*4]
  6da5ac:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  6da5b0:	81 7a 04 00 01 00 00 	cmp    DWORD PTR [edx+0x4],0x100
  6da5b7:	72 57                	jb     0x6da610
  6da5b9:	8b 06                	mov    eax,DWORD PTR [esi]
  6da5bb:	85 c0                	test   eax,eax
  6da5bd:	74 49                	je     0x6da608
  6da5bf:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da5c2:	50                   	push   eax
  6da5c3:	e8 68 c0 04 00       	call   0x726630
  6da5c8:	8b d8                	mov    ebx,eax
  6da5ca:	85 db                	test   ebx,ebx
  6da5cc:	74 3a                	je     0x6da608
  6da5ce:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  6da5d5:	00 
  6da5d6:	e8 85 09 ff ff       	call   0x6caf60
  6da5db:	50                   	push   eax
  6da5dc:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  6da5e0:	e8 bb 49 07 00       	call   0x74efa0
  6da5e5:	50                   	push   eax
  6da5e6:	8b cb                	mov    ecx,ebx
  6da5e8:	e8 d3 08 ff ff       	call   0x6caec0
  6da5ed:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  6da5f1:	50                   	push   eax
  6da5f2:	8b cf                	mov    ecx,edi
  6da5f4:	e8 47 4b fb ff       	call   0x68f140
  6da5f9:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6da5fd:	85 c9                	test   ecx,ecx
  6da5ff:	74 07                	je     0x6da608
  6da601:	8b 11                	mov    edx,DWORD PTR [ecx]
  6da603:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6da606:	ff d0                	call   eax
  6da608:	83 c6 04             	add    esi,0x4
  6da60b:	e9 f5 00 00 00       	jmp    0x6da705
  6da610:	6a 00                	push   0x0
  6da612:	6a 00                	push   0x0
  6da614:	6a 00                	push   0x0
  6da616:	6a 00                	push   0x0
  6da618:	68 0c 7e ff 00       	push   0xff7e0c
  6da61d:	6a 40                	push   0x40
  6da61f:	e8 dc 9e e0 ff       	call   0x4e4500
  6da624:	83 c4 18             	add    esp,0x18
  6da627:	85 c0                	test   eax,eax
  6da629:	74 09                	je     0x6da634
  6da62b:	8b c8                	mov    ecx,eax
  6da62d:	e8 de 0b ff ff       	call   0x6cb210
  6da632:	eb 02                	jmp    0x6da636
  6da634:	33 c0                	xor    eax,eax
  6da636:	50                   	push   eax
  6da637:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  6da63b:	e8 30 2d 12 00       	call   0x7fd370
  6da640:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  6da644:	e8 37 f0 0b 00       	call   0x799680
  6da649:	6a 04                	push   0x4
  6da64b:	68 fc 7d ff 00       	push   0xff7dfc
  6da650:	68 f0 7d ff 00       	push   0xff7df0
  6da655:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  6da659:	e8 72 f4 0b 00       	call   0x799ad0
  6da65e:	6a 04                	push   0x4
  6da660:	68 18 90 fe 00       	push   0xfe9018
  6da665:	68 e4 7d ff 00       	push   0xff7de4
  6da66a:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  6da66e:	e8 5d f4 0b 00       	call   0x799ad0
  6da673:	6a 04                	push   0x4
  6da675:	68 fc 7d ff 00       	push   0xff7dfc
  6da67a:	68 dc 7d ff 00       	push   0xff7ddc
  6da67f:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  6da683:	e8 48 f4 0b 00       	call   0x799ad0
  6da688:	6a 04                	push   0x4
  6da68a:	68 18 90 fe 00       	push   0xfe9018
  6da68f:	68 d0 7d ff 00       	push   0xff7dd0
  6da694:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  6da698:	e8 33 f4 0b 00       	call   0x799ad0
  6da69d:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  6da6a1:	e8 ea ed 0b 00       	call   0x799490
  6da6a6:	8b 5c 24 5c          	mov    ebx,DWORD PTR [esp+0x5c]
  6da6aa:	50                   	push   eax
  6da6ab:	6a 00                	push   0x0
  6da6ad:	8b cb                	mov    ecx,ebx
  6da6af:	e8 ec 09 ff ff       	call   0x6cb0a0
  6da6b4:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6da6b7:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  6da6ba:	50                   	push   eax
  6da6bb:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  6da6bf:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [esp+0x4c],0x0
  6da6c6:	00 
  6da6c7:	e8 d4 48 07 00       	call   0x74efa0
  6da6cc:	50                   	push   eax
  6da6cd:	8b cb                	mov    ecx,ebx
  6da6cf:	e8 ec 07 ff ff       	call   0x6caec0
  6da6d4:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  6da6d8:	52                   	push   edx
  6da6d9:	8b cf                	mov    ecx,edi
  6da6db:	e8 60 4a fb ff       	call   0x68f140
  6da6e0:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  6da6e4:	85 c9                	test   ecx,ecx
  6da6e6:	74 07                	je     0x6da6ef
  6da6e8:	8b 01                	mov    eax,DWORD PTR [ecx]
  6da6ea:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6da6ed:	ff d2                	call   edx
  6da6ef:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  6da6f3:	e8 b8 ef 0b 00       	call   0x7996b0
  6da6f8:	85 db                	test   ebx,ebx
  6da6fa:	74 09                	je     0x6da705
  6da6fc:	8b 03                	mov    eax,DWORD PTR [ebx]
  6da6fe:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6da701:	8b cb                	mov    ecx,ebx
  6da703:	ff d2                	call   edx
  6da705:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  6da709:	81 78 04 02 02 00 00 	cmp    DWORD PTR [eax+0x4],0x202
  6da710:	0f 82 86 00 00 00    	jb     0x6da79c
  6da716:	8b 1e                	mov    ebx,DWORD PTR [esi]
  6da718:	53                   	push   ebx
  6da719:	8b cf                	mov    ecx,edi
  6da71b:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  6da71f:	83 c6 04             	add    esi,0x4
  6da722:	e8 59 49 fb ff       	call   0x68f080
  6da727:	85 db                	test   ebx,ebx
  6da729:	76 71                	jbe    0x6da79c
  6da72b:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  6da730:	8b de                	mov    ebx,esi
  6da732:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  6da739:	00 
  6da73a:	76 56                	jbe    0x6da792
  6da73c:	8d 64 24 00          	lea    esp,[esp+0x0]
  6da740:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  6da742:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  6da745:	83 c3 04             	add    ebx,0x4
  6da748:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  6da74b:	83 c3 04             	add    ebx,0x4
  6da74e:	89 4c 24 60          	mov    DWORD PTR [esp+0x60],ecx
  6da752:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  6da755:	83 c3 04             	add    ebx,0x4
  6da758:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  6da75c:	89 4c 24 6c          	mov    DWORD PTR [esp+0x6c],ecx
  6da760:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6da764:	8d 44 24 60          	lea    eax,[esp+0x60]
  6da768:	83 c3 04             	add    ebx,0x4
  6da76b:	50                   	push   eax
  6da76c:	89 54 24 68          	mov    DWORD PTR [esp+0x68],edx
  6da770:	8b 13                	mov    edx,DWORD PTR [ebx]
  6da772:	51                   	push   ecx
  6da773:	8b cf                	mov    ecx,edi
  6da775:	89 54 24 78          	mov    DWORD PTR [esp+0x78],edx
  6da779:	83 c3 04             	add    ebx,0x4
  6da77c:	e8 6f 49 fb ff       	call   0x68f0f0
  6da781:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  6da785:	83 c0 01             	add    eax,0x1
  6da788:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
  6da78c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6da790:	72 ae                	jb     0x6da740
  6da792:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  6da796:	8d 14 80             	lea    edx,[eax+eax*4]
  6da799:	8d 34 96             	lea    esi,[esi+edx*4]
  6da79c:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
  6da7a0:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  6da7a3:	3d 00 02 00 00       	cmp    eax,0x200
  6da7a8:	72 03                	jb     0x6da7ad
  6da7aa:	83 c6 04             	add    esi,0x4
  6da7ad:	3d 03 02 00 00       	cmp    eax,0x203
  6da7b2:	72 27                	jb     0x6da7db
  6da7b4:	d9 46 0c             	fld    DWORD PTR [esi+0xc]
  6da7b7:	83 ec 10             	sub    esp,0x10
  6da7ba:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  6da7be:	8b cf                	mov    ecx,edi
  6da7c0:	d9 46 08             	fld    DWORD PTR [esi+0x8]
  6da7c3:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  6da7c7:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  6da7ca:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6da7ce:	d9 06                	fld    DWORD PTR [esi]
  6da7d0:	d9 1c 24             	fstp   DWORD PTR [esp]
  6da7d3:	e8 c8 56 fb ff       	call   0x68fea0
  6da7d8:	83 c6 10             	add    esi,0x10
  6da7db:	8b cf                	mov    ecx,edi
  6da7dd:	e8 be 46 fb ff       	call   0x68eea0
  6da7e2:	01 44 24 3c          	add    DWORD PTR [esp+0x3c],eax
  6da7e6:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  6da7ea:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  6da7ee:	85 c0                	test   eax,eax
  6da7f0:	0f 45 f0             	cmovne esi,eax
  6da7f3:	85 c9                	test   ecx,ecx
  6da7f5:	74 07                	je     0x6da7fe
  6da7f7:	8b 01                	mov    eax,DWORD PTR [ecx]
  6da7f9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6da7fc:	ff d2                	call   edx
  6da7fe:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  6da802:	83 c0 01             	add    eax,0x1
  6da805:	3b 43 08             	cmp    eax,DWORD PTR [ebx+0x8]
  6da808:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  6da80c:	0f 82 ee f7 ff ff    	jb     0x6da000
  6da812:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  6da816:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
  6da81d:	8b 8c 24 bc 00 00 00 	mov    ecx,DWORD PTR [esp+0xbc]
  6da824:	3b c1                	cmp    eax,ecx
  6da826:	74 0c                	je     0x6da834
  6da828:	8b 10                	mov    edx,DWORD PTR [eax]
  6da82a:	03 5a 20             	add    ebx,DWORD PTR [edx+0x20]
  6da82d:	83 c0 04             	add    eax,0x4
  6da830:	3b c1                	cmp    eax,ecx
  6da832:	75 f4                	jne    0x6da828
  6da834:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  6da838:	53                   	push   ebx
  6da839:	8b ce                	mov    ecx,esi
  6da83b:	e8 a0 73 05 00       	call   0x731be0
  6da840:	8b ce                	mov    ecx,esi
  6da842:	e8 89 04 00 00       	call   0x6dacd0
  6da847:	8b ce                	mov    ecx,esi
  6da849:	e8 d2 02 00 00       	call   0x6dab20
  6da84e:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
  6da855:	85 c0                	test   eax,eax
  6da857:	74 12                	je     0x6da86b
  6da859:	3b 84 24 c8 00 00 00 	cmp    eax,DWORD PTR [esp+0xc8]
  6da860:	74 09                	je     0x6da86b
  6da862:	50                   	push   eax
  6da863:	e8 78 9c e0 ff       	call   0x4e44e0
  6da868:	83 c4 04             	add    esp,0x4
  6da86b:	b0 01                	mov    al,0x1
  6da86d:	5f                   	pop    edi
  6da86e:	5e                   	pop    esi
  6da86f:	5b                   	pop    ebx
  6da870:	8b e5                	mov    esp,ebp
  6da872:	5d                   	pop    ebp
  6da873:	c2 0c 00             	ret    0xc
  6da876:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6da87a:	8b 01                	mov    eax,DWORD PTR [ecx]
  6da87c:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  6da87f:	ff d2                	call   edx
  6da881:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  6da885:	8b 01                	mov    eax,DWORD PTR [ecx]
  6da887:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  6da88a:	ff d2                	call   edx
  6da88c:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
  6da893:	85 c0                	test   eax,eax
  6da895:	74 12                	je     0x6da8a9
  6da897:	3b 84 24 c8 00 00 00 	cmp    eax,DWORD PTR [esp+0xc8]
  6da89e:	74 09                	je     0x6da8a9
  6da8a0:	50                   	push   eax
  6da8a1:	e8 3a 9c e0 ff       	call   0x4e44e0
  6da8a6:	83 c4 04             	add    esp,0x4
  6da8a9:	5f                   	pop    edi
  6da8aa:	5e                   	pop    esi
  6da8ab:	32 c0                	xor    al,al
  6da8ad:	5b                   	pop    ebx
  6da8ae:	8b e5                	mov    esp,ebp
  6da8b0:	5d                   	pop    ebp
  6da8b1:	c2 0c 00             	ret    0xc
  6da8b4:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6da8b8:	85 c9                	test   ecx,ecx
  6da8ba:	74 07                	je     0x6da8c3
  6da8bc:	8b 01                	mov    eax,DWORD PTR [ecx]
  6da8be:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  6da8c1:	ff d2                	call   edx
  6da8c3:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  6da8c7:	85 c9                	test   ecx,ecx
  6da8c9:	74 c1                	je     0x6da88c
  6da8cb:	eb b8                	jmp    0x6da885
