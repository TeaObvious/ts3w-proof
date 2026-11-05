# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0082cd70,0x0082d6b2); analyst name RoutingManager_ReconcileSlotPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082cd70 <.text+0x42bd70>:
  82cd70:	55                   	push   ebp
  82cd71:	8b ec                	mov    ebp,esp
  82cd73:	83 e4 f0             	and    esp,0xfffffff0
  82cd76:	81 ec d4 01 00 00    	sub    esp,0x1d4
  82cd7c:	80 b9 74 09 00 00 00 	cmp    BYTE PTR [ecx+0x974],0x0
  82cd83:	53                   	push   ebx
  82cd84:	56                   	push   esi
  82cd85:	57                   	push   edi
  82cd86:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  82cd8a:	0f 84 17 03 00 00    	je     0x82d0a7
  82cd90:	a1 c4 db 1e 01       	mov    eax,ds:0x11edbc4
  82cd95:	85 c0                	test   eax,eax
  82cd97:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  82cd9b:	0f 84 06 03 00 00    	je     0x82d0a7
  82cda1:	e8 ca a7 10 00       	call   0x937570
  82cda6:	85 c0                	test   eax,eax
  82cda8:	0f 84 f9 02 00 00    	je     0x82d0a7
  82cdae:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  82cdb1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  82cdb4:	51                   	push   ecx
  82cdb5:	52                   	push   edx
  82cdb6:	8b c8                	mov    ecx,eax
  82cdb8:	e8 c3 b1 10 00       	call   0x937f80
  82cdbd:	8b d8                	mov    ebx,eax
  82cdbf:	85 db                	test   ebx,ebx
  82cdc1:	0f 84 e0 02 00 00    	je     0x82d0a7
  82cdc7:	8b cb                	mov    ecx,ebx
  82cdc9:	e8 62 23 e6 ff       	call   0x68f130
  82cdce:	85 c0                	test   eax,eax
  82cdd0:	0f 84 d1 02 00 00    	je     0x82d0a7
  82cdd6:	8b cb                	mov    ecx,ebx
  82cdd8:	e8 53 23 e6 ff       	call   0x68f130
  82cddd:	8b 70 48             	mov    esi,DWORD PTR [eax+0x48]
  82cde0:	8b 78 4c             	mov    edi,DWORD PTR [eax+0x4c]
  82cde3:	e8 38 c1 45 00       	call   0xc88f20
  82cde8:	3b 70 48             	cmp    esi,DWORD PTR [eax+0x48]
  82cdeb:	75 09                	jne    0x82cdf6
  82cded:	3b 78 4c             	cmp    edi,DWORD PTR [eax+0x4c]
  82cdf0:	0f 84 b1 02 00 00    	je     0x82d0a7
  82cdf6:	8b cb                	mov    ecx,ebx
  82cdf8:	e8 33 23 e6 ff       	call   0x68f130
  82cdfd:	8b 48 48             	mov    ecx,DWORD PTR [eax+0x48]
  82ce00:	8b 40 4c             	mov    eax,DWORD PTR [eax+0x4c]
  82ce03:	6a 00                	push   0x0
  82ce05:	50                   	push   eax
  82ce06:	51                   	push   ecx
  82ce07:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  82ce0b:	e8 00 5a 43 00       	call   0xc62810
  82ce10:	8b f0                	mov    esi,eax
  82ce12:	85 f6                	test   esi,esi
  82ce14:	0f 84 8d 02 00 00    	je     0x82d0a7
  82ce1a:	53                   	push   ebx
  82ce1b:	e8 30 12 d3 ff       	call   0x55e050
  82ce20:	83 c4 04             	add    esp,0x4
  82ce23:	85 c0                	test   eax,eax
  82ce25:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  82ce29:	0f 84 78 02 00 00    	je     0x82d0a7
  82ce2f:	53                   	push   ebx
  82ce30:	e8 ab 37 d5 ff       	call   0x5805e0
  82ce35:	83 c4 04             	add    esp,0x4
  82ce38:	85 c0                	test   eax,eax
  82ce3a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  82ce3e:	0f 84 63 02 00 00    	je     0x82d0a7
  82ce44:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  82ce47:	85 ff                	test   edi,edi
  82ce49:	c6 44 24 2c 00       	mov    BYTE PTR [esp+0x2c],0x0
  82ce4e:	c6 44 24 0d 00       	mov    BYTE PTR [esp+0xd],0x0
  82ce53:	0f 85 ac 01 00 00    	jne    0x82d005
  82ce59:	68 a4 db fe 00       	push   0xfedba4
  82ce5e:	e8 8d 08 d7 ff       	call   0x59d6f0
  82ce63:	8b c8                	mov    ecx,eax
  82ce65:	e8 26 09 d7 ff       	call   0x59d790
  82ce6a:	68 8c db fe 00       	push   0xfedb8c
  82ce6f:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  82ce73:	89 54 24 58          	mov    DWORD PTR [esp+0x58],edx
  82ce77:	c7 44 24 5c 1d 4f 9e 31 	mov    DWORD PTR [esp+0x5c],0x319e4f1d
  82ce7f:	89 7c 24 60          	mov    DWORD PTR [esp+0x60],edi
  82ce83:	e8 68 08 d7 ff       	call   0x59d6f0
  82ce88:	8b c8                	mov    ecx,eax
  82ce8a:	e8 01 09 d7 ff       	call   0x59d790
  82ce8f:	68 2c d1 fe 00       	push   0xfed12c
  82ce94:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  82ce98:	89 54 24 68          	mov    DWORD PTR [esp+0x68],edx
  82ce9c:	c7 44 24 6c 1d 4f 9e 31 	mov    DWORD PTR [esp+0x6c],0x319e4f1d
  82cea4:	89 7c 24 70          	mov    DWORD PTR [esp+0x70],edi
  82cea8:	e8 43 08 d7 ff       	call   0x59d6f0
  82cead:	8b c8                	mov    ecx,eax
  82ceaf:	e8 dc 08 d7 ff       	call   0x59d790
  82ceb4:	68 6c db fe 00       	push   0xfedb6c
  82ceb9:	89 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],eax
  82cec0:	89 94 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],edx
  82cec7:	c7 84 24 9c 00 00 00 1d 4f 9e 31 	mov    DWORD PTR [esp+0x9c],0x319e4f1d
  82ced2:	89 bc 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],edi
  82ced9:	e8 12 08 d7 ff       	call   0x59d6f0
  82cede:	8b c8                	mov    ecx,eax
  82cee0:	e8 ab 08 d7 ff       	call   0x59d790
  82cee5:	68 4c db fe 00       	push   0xfedb4c
  82ceea:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
  82cef1:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
  82cef8:	c7 84 24 ac 00 00 00 1d 4f 9e 31 	mov    DWORD PTR [esp+0xac],0x319e4f1d
  82cf03:	89 bc 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edi
  82cf0a:	e8 e1 07 d7 ff       	call   0x59d6f0
  82cf0f:	8b c8                	mov    ecx,eax
  82cf11:	e8 7a 08 d7 ff       	call   0x59d790
  82cf16:	8b 4b 1c             	mov    ecx,DWORD PTR [ebx+0x1c]
  82cf19:	89 54 24 74          	mov    DWORD PTR [esp+0x74],edx
  82cf1d:	8b 53 20             	mov    edx,DWORD PTR [ebx+0x20]
  82cf20:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  82cf24:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
  82cf27:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  82cf2b:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  82cf2f:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
  82cf33:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  82cf37:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  82cf3a:	51                   	push   ecx
  82cf3b:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  82cf3f:	52                   	push   edx
  82cf40:	c7 84 24 80 00 00 00 1d 4f 9e 31 	mov    DWORD PTR [esp+0x80],0x319e4f1d
  82cf4b:	89 bc 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edi
  82cf52:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  82cf56:	e8 45 68 c7 ff       	call   0x4a37a0
  82cf5b:	83 c4 08             	add    esp,0x8
  82cf5e:	84 c0                	test   al,al
  82cf60:	0f 85 81 00 00 00    	jne    0x82cfe7
  82cf66:	8d 44 24 70          	lea    eax,[esp+0x70]
  82cf6a:	50                   	push   eax
  82cf6b:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  82cf6f:	51                   	push   ecx
  82cf70:	e8 2b 68 c7 ff       	call   0x4a37a0
  82cf75:	83 c4 08             	add    esp,0x8
  82cf78:	84 c0                	test   al,al
  82cf7a:	75 6b                	jne    0x82cfe7
  82cf7c:	8d 54 24 60          	lea    edx,[esp+0x60]
  82cf80:	52                   	push   edx
  82cf81:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  82cf85:	50                   	push   eax
  82cf86:	e8 15 68 c7 ff       	call   0x4a37a0
  82cf8b:	83 c4 08             	add    esp,0x8
  82cf8e:	84 c0                	test   al,al
  82cf90:	74 0a                	je     0x82cf9c
  82cf92:	bf 02 00 00 00       	mov    edi,0x2
  82cf97:	89 7d 10             	mov    DWORD PTR [ebp+0x10],edi
  82cf9a:	eb 69                	jmp    0x82d005
  82cf9c:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  82cfa3:	51                   	push   ecx
  82cfa4:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  82cfa8:	52                   	push   edx
  82cfa9:	e8 f2 67 c7 ff       	call   0x4a37a0
  82cfae:	83 c4 08             	add    esp,0x8
  82cfb1:	84 c0                	test   al,al
  82cfb3:	74 0a                	je     0x82cfbf
  82cfb5:	bf 03 00 00 00       	mov    edi,0x3
  82cfba:	89 7d 10             	mov    DWORD PTR [ebp+0x10],edi
  82cfbd:	eb 46                	jmp    0x82d005
  82cfbf:	8d 84 24 a0 00 00 00 	lea    eax,[esp+0xa0]
  82cfc6:	50                   	push   eax
  82cfc7:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  82cfcb:	51                   	push   ecx
  82cfcc:	e8 cf 67 c7 ff       	call   0x4a37a0
  82cfd1:	83 c4 08             	add    esp,0x8
  82cfd4:	84 c0                	test   al,al
  82cfd6:	74 2d                	je     0x82d005
  82cfd8:	bf 04 00 00 00       	mov    edi,0x4
  82cfdd:	89 7d 10             	mov    DWORD PTR [ebp+0x10],edi
  82cfe0:	c6 44 24 2c 01       	mov    BYTE PTR [esp+0x2c],0x1
  82cfe5:	eb 1e                	jmp    0x82d005
  82cfe7:	8d 54 24 70          	lea    edx,[esp+0x70]
  82cfeb:	52                   	push   edx
  82cfec:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  82cff0:	bf 01 00 00 00       	mov    edi,0x1
  82cff5:	50                   	push   eax
  82cff6:	89 7d 10             	mov    DWORD PTR [ebp+0x10],edi
  82cff9:	e8 a2 67 c7 ff       	call   0x4a37a0
  82cffe:	83 c4 08             	add    esp,0x8
  82d001:	88 44 24 0d          	mov    BYTE PTR [esp+0xd],al
  82d005:	83 ff 03             	cmp    edi,0x3
  82d008:	0f 94 44 24 16       	sete   BYTE PTR [esp+0x16]
  82d00d:	80 7c 24 0d 00       	cmp    BYTE PTR [esp+0xd],0x0
  82d012:	75 0a                	jne    0x82d01e
  82d014:	83 ff 01             	cmp    edi,0x1
  82d017:	c6 44 24 0f 01       	mov    BYTE PTR [esp+0xf],0x1
  82d01c:	74 05                	je     0x82d023
  82d01e:	c6 44 24 0f 00       	mov    BYTE PTR [esp+0xf],0x0
  82d023:	83 ff 02             	cmp    edi,0x2
  82d026:	68 00 02 00 00       	push   0x200
  82d02b:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  82d030:	0f 94 44 24 10       	sete   BYTE PTR [esp+0x10]
  82d035:	e8 66 6d cf ff       	call   0x523da0
  82d03a:	88 44 24 17          	mov    BYTE PTR [esp+0x17],al
  82d03e:	8d 47 ff             	lea    eax,[edi-0x1]
  82d041:	83 f8 05             	cmp    eax,0x5
  82d044:	77 61                	ja     0x82d0a7
  82d046:	ff 24 85 b4 d6 82 00 	jmp    DWORD PTR [eax*4+0x82d6b4]
  82d04d:	f3 0f 10 05 6c 2c 02 01 	movss  xmm0,DWORD PTR ds:0x1022c6c
  82d055:	eb 35                	jmp    0x82d08c
  82d057:	f3 0f 10 05 70 2c 02 01 	movss  xmm0,DWORD PTR ds:0x1022c70
  82d05f:	eb 2b                	jmp    0x82d08c
  82d061:	f3 0f 10 05 c8 2b 06 01 	movss  xmm0,DWORD PTR ds:0x1062bc8
  82d069:	eb 21                	jmp    0x82d08c
  82d06b:	f3 0f 10 05 78 2c 02 01 	movss  xmm0,DWORD PTR ds:0x1022c78
  82d073:	eb 17                	jmp    0x82d08c
  82d075:	f3 0f 10 05 7c 2c 02 01 	movss  xmm0,DWORD PTR ds:0x1022c7c
  82d07d:	eb 08                	jmp    0x82d087
  82d07f:	f3 0f 10 05 80 2c 02 01 	movss  xmm0,DWORD PTR ds:0x1022c80
  82d087:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  82d08c:	83 ff 05             	cmp    edi,0x5
  82d08f:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  82d093:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
  82d096:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  82d09c:	75 14                	jne    0x82d0b2
  82d09e:	83 fb 03             	cmp    ebx,0x3
  82d0a1:	0f 84 ad 00 00 00    	je     0x82d154
  82d0a7:	33 c0                	xor    eax,eax
  82d0a9:	5f                   	pop    edi
  82d0aa:	5e                   	pop    esi
  82d0ab:	5b                   	pop    ebx
  82d0ac:	8b e5                	mov    esp,ebp
  82d0ae:	5d                   	pop    ebp
  82d0af:	c2 0c 00             	ret    0xc
  82d0b2:	83 ff 06             	cmp    edi,0x6
  82d0b5:	74 e7                	je     0x82d09e
  82d0b7:	f6 c3 01             	test   bl,0x1
  82d0ba:	0f 84 94 00 00 00    	je     0x82d154
  82d0c0:	83 f8 03             	cmp    eax,0x3
  82d0c3:	c6 84 24 a0 01 00 00 00 	mov    BYTE PTR [esp+0x1a0],0x0
  82d0cb:	77 da                	ja     0x82d0a7
  82d0cd:	ff 24 85 cc d6 82 00 	jmp    DWORD PTR [eax*4+0x82d6cc]
  82d0d4:	8d 94 24 a0 01 00 00 	lea    edx,[esp+0x1a0]
  82d0db:	68 e8 2e 02 01       	push   0x1022ee8
  82d0e0:	52                   	push   edx
  82d0e1:	e8 ca 0d cd ff       	call   0x4fdeb0
  82d0e6:	83 c4 08             	add    esp,0x8
  82d0e9:	33 c0                	xor    eax,eax
  82d0eb:	5f                   	pop    edi
  82d0ec:	5e                   	pop    esi
  82d0ed:	5b                   	pop    ebx
  82d0ee:	8b e5                	mov    esp,ebp
  82d0f0:	5d                   	pop    ebp
  82d0f1:	c2 0c 00             	ret    0xc
  82d0f4:	8d 84 24 a0 01 00 00 	lea    eax,[esp+0x1a0]
  82d0fb:	68 dc 2e 02 01       	push   0x1022edc
  82d100:	50                   	push   eax
  82d101:	e8 aa 0d cd ff       	call   0x4fdeb0
  82d106:	83 c4 08             	add    esp,0x8
  82d109:	33 c0                	xor    eax,eax
  82d10b:	5f                   	pop    edi
  82d10c:	5e                   	pop    esi
  82d10d:	5b                   	pop    ebx
  82d10e:	8b e5                	mov    esp,ebp
  82d110:	5d                   	pop    ebp
  82d111:	c2 0c 00             	ret    0xc
  82d114:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  82d11b:	68 d4 2e 02 01       	push   0x1022ed4
  82d120:	51                   	push   ecx
  82d121:	e8 8a 0d cd ff       	call   0x4fdeb0
  82d126:	83 c4 08             	add    esp,0x8
  82d129:	33 c0                	xor    eax,eax
  82d12b:	5f                   	pop    edi
  82d12c:	5e                   	pop    esi
  82d12d:	5b                   	pop    ebx
  82d12e:	8b e5                	mov    esp,ebp
  82d130:	5d                   	pop    ebp
  82d131:	c2 0c 00             	ret    0xc
  82d134:	8d 94 24 a0 01 00 00 	lea    edx,[esp+0x1a0]
  82d13b:	68 c8 2e 02 01       	push   0x1022ec8
  82d140:	52                   	push   edx
  82d141:	e8 6a 0d cd ff       	call   0x4fdeb0
  82d146:	83 c4 08             	add    esp,0x8
  82d149:	33 c0                	xor    eax,eax
  82d14b:	5f                   	pop    edi
  82d14c:	5e                   	pop    esi
  82d14d:	5b                   	pop    ebx
  82d14e:	8b e5                	mov    esp,ebp
  82d150:	5d                   	pop    ebp
  82d151:	c2 0c 00             	ret    0xc
  82d154:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  82d157:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  82d15a:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  82d161:	50                   	push   eax
  82d162:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  82d166:	51                   	push   ecx
  82d167:	8b 88 5c 09 00 00    	mov    ecx,DWORD PTR [eax+0x95c]
  82d16d:	33 ff                	xor    edi,edi
  82d16f:	52                   	push   edx
  82d170:	56                   	push   esi
  82d171:	89 bc 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],edi
  82d178:	89 bc 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],edi
  82d17f:	89 bc 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],edi
  82d186:	c7 84 24 9c 00 00 00 e8 55 00 01 	mov    DWORD PTR [esp+0x9c],0x10055e8
  82d191:	e8 ea 2d e0 ff       	call   0x62ff80
  82d196:	8d 8c 24 e0 00 00 00 	lea    ecx,[esp+0xe0]
  82d19d:	51                   	push   ecx
  82d19e:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  82d1a2:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  82d1a6:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  82d1ab:	e8 e0 a8 12 00       	call   0x957a90
  82d1b0:	d1 eb                	shr    ebx,1
  82d1b2:	0f 84 66 04 00 00    	je     0x82d61e
  82d1b8:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  82d1bc:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  82d1c0:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  82d1c3:	33 c0                	xor    eax,eax
  82d1c5:	8d 58 01             	lea    ebx,[eax+0x1]
  82d1c8:	83 c1 ff             	add    ecx,0xffffffff
  82d1cb:	ff 24 8d dc d6 82 00 	jmp    DWORD PTR [ecx*4+0x82d6dc]
  82d1d2:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  82d1d6:	8d 58 01             	lea    ebx,[eax+0x1]
  82d1d9:	eb 10                	jmp    0x82d1eb
  82d1db:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  82d1df:	8d 58 02             	lea    ebx,[eax+0x2]
  82d1e2:	eb 07                	jmp    0x82d1eb
  82d1e4:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
  82d1e8:	8d 43 01             	lea    eax,[ebx+0x1]
  82d1eb:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  82d1ef:	50                   	push   eax
  82d1f0:	e8 5b 2c 12 00       	call   0x94fe50
  82d1f5:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  82d1f9:	53                   	push   ebx
  82d1fa:	8b f8                	mov    edi,eax
  82d1fc:	e8 4f 2c 12 00       	call   0x94fe50
  82d201:	f6 47 08 01          	test   BYTE PTR [edi+0x8],0x1
  82d205:	8b d8                	mov    ebx,eax
  82d207:	0f 85 01 04 00 00    	jne    0x82d60e
  82d20d:	f6 43 08 01          	test   BYTE PTR [ebx+0x8],0x1
  82d211:	0f 85 f7 03 00 00    	jne    0x82d60e
  82d217:	8b 17                	mov    edx,DWORD PTR [edi]
  82d219:	8b 52 14             	mov    edx,DWORD PTR [edx+0x14]
  82d21c:	8d 84 24 a0 01 00 00 	lea    eax,[esp+0x1a0]
  82d223:	50                   	push   eax
  82d224:	8b cf                	mov    ecx,edi
  82d226:	ff d2                	call   edx
  82d228:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  82d22c:	0f 28 94 24 f0 00 00 00 	movaps xmm2,XMMWORD PTR [esp+0xf0]
  82d234:	0f 28 9c 24 e0 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0xe0]
  82d23c:	0f 28 c8             	movaps xmm1,xmm0
  82d23f:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  82d243:	0f 59 ca             	mulps  xmm1,xmm2
  82d246:	0f 28 d0             	movaps xmm2,xmm0
  82d249:	0f c6 d0 00          	shufps xmm2,xmm0,0x0
  82d24d:	0f 59 d3             	mulps  xmm2,xmm3
  82d250:	0f 28 9c 24 00 01 00 00 	movaps xmm3,XMMWORD PTR [esp+0x100]
  82d258:	0f 58 ca             	addps  xmm1,xmm2
  82d25b:	0f 28 d0             	movaps xmm2,xmm0
  82d25e:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  82d262:	0f 59 d3             	mulps  xmm2,xmm3
  82d265:	0f 58 ca             	addps  xmm1,xmm2
  82d268:	0f 28 d0             	movaps xmm2,xmm0
  82d26b:	8d 44 24 50          	lea    eax,[esp+0x50]
  82d26f:	0f c6 d0 ff          	shufps xmm2,xmm0,0xff
  82d273:	0f 28 84 24 10 01 00 00 	movaps xmm0,XMMWORD PTR [esp+0x110]
  82d27b:	50                   	push   eax
  82d27c:	8d 8c 24 94 00 00 00 	lea    ecx,[esp+0x94]
  82d283:	0f 59 d0             	mulps  xmm2,xmm0
  82d286:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  82d28e:	51                   	push   ecx
  82d28f:	0f 58 ca             	addps  xmm1,xmm2
  82d292:	33 ff                	xor    edi,edi
  82d294:	56                   	push   esi
  82d295:	0f 29 8c 24 9c 00 00 00 	movaps XMMWORD PTR [esp+0x9c],xmm1
  82d29d:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  82d2a3:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  82d2a9:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  82d2ad:	e8 6e f6 2a 00       	call   0xadc920
  82d2b2:	0f 28 84 24 9c 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x9c]
  82d2ba:	8b 54 24 64          	mov    edx,DWORD PTR [esp+0x64]
  82d2be:	8b 03                	mov    eax,DWORD PTR [ebx]
  82d2c0:	0f 29 84 24 8c 01 00 00 	movaps XMMWORD PTR [esp+0x18c],xmm0
  82d2c8:	0f 29 84 24 4c 01 00 00 	movaps XMMWORD PTR [esp+0x14c],xmm0
  82d2d0:	f3 0f 10 84 24 8c 01 00 00 	movss  xmm0,DWORD PTR [esp+0x18c]
  82d2d9:	83 c4 0c             	add    esp,0xc
  82d2dc:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  82d2e3:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  82d2e9:	f3 0f 10 84 24 48 01 00 00 	movss  xmm0,DWORD PTR [esp+0x148]
  82d2f2:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
  82d2f6:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  82d2f9:	51                   	push   ecx
  82d2fa:	8b cb                	mov    ecx,ebx
  82d2fc:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  82d302:	ff d2                	call   edx
  82d304:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  82d308:	0f 28 94 24 e0 00 00 00 	movaps xmm2,XMMWORD PTR [esp+0xe0]
  82d310:	0f 28 9c 24 f0 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0xf0]
  82d318:	0f 28 c8             	movaps xmm1,xmm0
  82d31b:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  82d31f:	0f 59 ca             	mulps  xmm1,xmm2
  82d322:	0f 28 d0             	movaps xmm2,xmm0
  82d325:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  82d329:	0f 59 d3             	mulps  xmm2,xmm3
  82d32c:	0f 28 9c 24 00 01 00 00 	movaps xmm3,XMMWORD PTR [esp+0x100]
  82d334:	0f 58 ca             	addps  xmm1,xmm2
  82d337:	0f 28 d0             	movaps xmm2,xmm0
  82d33a:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  82d33e:	0f 59 d3             	mulps  xmm2,xmm3
  82d341:	0f 58 ca             	addps  xmm1,xmm2
  82d344:	0f 28 d0             	movaps xmm2,xmm0
  82d347:	0f c6 d0 ff          	shufps xmm2,xmm0,0xff
  82d34b:	0f 28 84 24 10 01 00 00 	movaps xmm0,XMMWORD PTR [esp+0x110]
  82d353:	0f 59 d0             	mulps  xmm2,xmm0
  82d356:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  82d35e:	8d 44 24 60          	lea    eax,[esp+0x60]
  82d362:	0f 58 ca             	addps  xmm1,xmm2
  82d365:	0f 29 8c 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm1
  82d36d:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  82d373:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  82d379:	89 7c 24 68          	mov    DWORD PTR [esp+0x68],edi
  82d37d:	50                   	push   eax
  82d37e:	8d 8c 24 a4 00 00 00 	lea    ecx,[esp+0xa4]
  82d385:	51                   	push   ecx
  82d386:	56                   	push   esi
  82d387:	e8 94 f5 2a 00       	call   0xadc920
  82d38c:	8b 54 24 74          	mov    edx,DWORD PTR [esp+0x74]
  82d390:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  82d393:	0f 28 84 24 ac 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xac]
  82d39b:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  82d39e:	83 c4 0c             	add    esp,0xc
  82d3a1:	89 54 24 78          	mov    DWORD PTR [esp+0x78],edx
  82d3a5:	8d 54 24 34          	lea    edx,[esp+0x34]
  82d3a9:	52                   	push   edx
  82d3aa:	8d 54 24 74          	lea    edx,[esp+0x74]
  82d3ae:	52                   	push   edx
  82d3af:	8d 54 24 40          	lea    edx,[esp+0x40]
  82d3b3:	52                   	push   edx
  82d3b4:	51                   	push   ecx
  82d3b5:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  82d3b9:	0f 29 84 24 70 01 00 00 	movaps XMMWORD PTR [esp+0x170],xmm0
  82d3c1:	0f 29 84 24 30 01 00 00 	movaps XMMWORD PTR [esp+0x130],xmm0
  82d3c9:	f3 0f 10 84 24 70 01 00 00 	movss  xmm0,DWORD PTR [esp+0x170]
  82d3d2:	50                   	push   eax
  82d3d3:	8d 84 24 94 00 00 00 	lea    eax,[esp+0x94]
  82d3da:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  82d3e3:	f3 0f 10 84 24 3c 01 00 00 	movss  xmm0,DWORD PTR [esp+0x13c]
  82d3ec:	50                   	push   eax
  82d3ed:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  82d3f6:	e8 b5 c8 ff ff       	call   0x829cb0
  82d3fb:	84 c0                	test   al,al
  82d3fd:	74 16                	je     0x82d415
  82d3ff:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  82d403:	51                   	push   ecx
  82d404:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  82d40b:	e8 b0 a9 27 00       	call   0xaa7dc0
  82d410:	e9 f9 01 00 00       	jmp    0x82d60e
  82d415:	83 7c 24 20 00       	cmp    DWORD PTR [esp+0x20],0x0
  82d41a:	75 1b                	jne    0x82d437
  82d41c:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  82d41f:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  82d422:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  82d426:	8b 89 5c 09 00 00    	mov    ecx,DWORD PTR [ecx+0x95c]
  82d42c:	52                   	push   edx
  82d42d:	50                   	push   eax
  82d42e:	e8 8d 4e e0 ff       	call   0x6322c0
  82d433:	88 44 24 0e          	mov    BYTE PTR [esp+0xe],al
  82d437:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  82d43e:	e8 bd 08 d3 ff       	call   0x55dd00
  82d443:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  82d446:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  82d449:	8d 8c 24 c8 00 00 00 	lea    ecx,[esp+0xc8]
  82d450:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
  82d457:	89 bc 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],edi
  82d45e:	c7 84 24 b8 00 00 00 00 00 00 00 	mov    DWORD PTR [esp+0xb8],0x0
  82d469:	c7 84 24 bc 00 00 00 c2 b0 00 00 	mov    DWORD PTR [esp+0xbc],0xb0c2
  82d474:	e8 87 08 d3 ff       	call   0x55dd00
  82d479:	33 c0                	xor    eax,eax
  82d47b:	89 84 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],eax
  82d482:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  82d486:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  82d489:	83 f8 05             	cmp    eax,0x5
  82d48c:	89 9c 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],ebx
  82d493:	89 bc 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],edi
  82d49a:	c7 84 24 d4 00 00 00 c2 b0 00 00 	mov    DWORD PTR [esp+0xd4],0xb0c2
  82d4a5:	74 0a                	je     0x82d4b1
  82d4a7:	83 f8 06             	cmp    eax,0x6
  82d4aa:	c6 44 24 4c 00       	mov    BYTE PTR [esp+0x4c],0x0
  82d4af:	75 05                	jne    0x82d4b6
  82d4b1:	c6 44 24 4c 01       	mov    BYTE PTR [esp+0x4c],0x1
  82d4b6:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  82d4ba:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  82d4be:	8b 8a 5c 09 00 00    	mov    ecx,DWORD PTR [edx+0x95c]
  82d4c4:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  82d4c8:	0f 28 84 24 a0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xa0]
  82d4d0:	6a ff                	push   0xffffffff
  82d4d2:	50                   	push   eax
  82d4d3:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  82d4d7:	8d 54 24 20          	lea    edx,[esp+0x20]
  82d4db:	52                   	push   edx
  82d4dc:	6a ff                	push   0xffffffff
  82d4de:	6a ff                	push   0xffffffff
  82d4e0:	50                   	push   eax
  82d4e1:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  82d4e8:	6a 00                	push   0x0
  82d4ea:	51                   	push   ecx
  82d4eb:	d9 1c 24             	fstp   DWORD PTR [esp]
  82d4ee:	8d 94 24 e8 00 00 00 	lea    edx,[esp+0xe8]
  82d4f5:	52                   	push   edx
  82d4f6:	50                   	push   eax
  82d4f7:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  82d4fe:	83 ec 08             	sub    esp,0x8
  82d501:	0f 29 84 24 a0 01 00 00 	movaps XMMWORD PTR [esp+0x1a0],xmm0
  82d509:	d9 84 24 a8 01 00 00 	fld    DWORD PTR [esp+0x1a8]
  82d510:	0f 29 84 24 80 01 00 00 	movaps XMMWORD PTR [esp+0x180],xmm0
  82d518:	0f 28 84 24 c0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xc0]
  82d520:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  82d524:	d9 84 24 80 01 00 00 	fld    DWORD PTR [esp+0x180]
  82d52b:	8d 94 24 e0 00 00 00 	lea    edx,[esp+0xe0]
  82d532:	d9 1c 24             	fstp   DWORD PTR [esp]
  82d535:	52                   	push   edx
  82d536:	50                   	push   eax
  82d537:	83 ec 08             	sub    esp,0x8
  82d53a:	0f 29 84 24 d0 01 00 00 	movaps XMMWORD PTR [esp+0x1d0],xmm0
  82d542:	d9 84 24 d8 01 00 00 	fld    DWORD PTR [esp+0x1d8]
  82d549:	0f 29 84 24 70 01 00 00 	movaps XMMWORD PTR [esp+0x170],xmm0
  82d551:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  82d555:	d9 84 24 70 01 00 00 	fld    DWORD PTR [esp+0x170]
  82d55c:	d9 1c 24             	fstp   DWORD PTR [esp]
  82d55f:	57                   	push   edi
  82d560:	53                   	push   ebx
  82d561:	56                   	push   esi
  82d562:	e8 99 ac e0 ff       	call   0x638200
  82d567:	85 c0                	test   eax,eax
  82d569:	74 05                	je     0x82d570
  82d56b:	83 44 24 20 01       	add    DWORD PTR [esp+0x20],0x1
  82d570:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  82d575:	0f 84 93 00 00 00    	je     0x82d60e
  82d57b:	80 7c 24 16 00       	cmp    BYTE PTR [esp+0x16],0x0
  82d580:	74 17                	je     0x82d599
  82d582:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  82d586:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  82d58a:	51                   	push   ecx
  82d58b:	8b 8a 5c 09 00 00    	mov    ecx,DWORD PTR [edx+0x95c]
  82d591:	56                   	push   esi
  82d592:	e8 79 b1 e0 ff       	call   0x638710
  82d597:	eb 75                	jmp    0x82d60e
  82d599:	80 7c 24 2c 00       	cmp    BYTE PTR [esp+0x2c],0x0
  82d59e:	74 17                	je     0x82d5b7
  82d5a0:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  82d5a4:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  82d5a8:	8b 89 5c 09 00 00    	mov    ecx,DWORD PTR [ecx+0x95c]
  82d5ae:	50                   	push   eax
  82d5af:	56                   	push   esi
  82d5b0:	e8 1b ba e0 ff       	call   0x638fd0
  82d5b5:	eb 57                	jmp    0x82d60e
  82d5b7:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  82d5bc:	74 13                	je     0x82d5d1
  82d5be:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  82d5c2:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  82d5c6:	8b 88 5c 09 00 00    	mov    ecx,DWORD PTR [eax+0x95c]
  82d5cc:	6a 00                	push   0x0
  82d5ce:	52                   	push   edx
  82d5cf:	eb 37                	jmp    0x82d608
  82d5d1:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  82d5d6:	74 18                	je     0x82d5f0
  82d5d8:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  82d5dc:	c7 41 78 ff 07 00 00 	mov    DWORD PTR [ecx+0x78],0x7ff
  82d5e3:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  82d5e7:	c7 42 7c 00 00 00 00 	mov    DWORD PTR [edx+0x7c],0x0
  82d5ee:	eb 1e                	jmp    0x82d60e
  82d5f0:	80 7c 24 0d 00       	cmp    BYTE PTR [esp+0xd],0x0
  82d5f5:	74 17                	je     0x82d60e
  82d5f7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  82d5fb:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  82d5ff:	8b 89 5c 09 00 00    	mov    ecx,DWORD PTR [ecx+0x95c]
  82d605:	6a 01                	push   0x1
  82d607:	50                   	push   eax
  82d608:	56                   	push   esi
  82d609:	e8 d2 b5 e0 ff       	call   0x638be0
  82d60e:	83 44 24 28 02       	add    DWORD PTR [esp+0x28],0x2
  82d613:	83 6c 24 24 01       	sub    DWORD PTR [esp+0x24],0x1
  82d618:	0f 85 a2 fb ff ff    	jne    0x82d1c0
  82d61e:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  82d625:	8b bc 24 80 00 00 00 	mov    edi,DWORD PTR [esp+0x80]
  82d62c:	8b d0                	mov    edx,eax
  82d62e:	2b d7                	sub    edx,edi
  82d630:	c1 fa 02             	sar    edx,0x2
  82d633:	74 2d                	je     0x82d662
  82d635:	3b f8                	cmp    edi,eax
  82d637:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  82d63b:	74 25                	je     0x82d662
  82d63d:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  82d641:	8b 07                	mov    eax,DWORD PTR [edi]
  82d643:	8b 8b 5c 09 00 00    	mov    ecx,DWORD PTR [ebx+0x95c]
  82d649:	50                   	push   eax
  82d64a:	56                   	push   esi
  82d64b:	e8 00 93 e0 ff       	call   0x636950
  82d650:	84 c0                	test   al,al
  82d652:	74 05                	je     0x82d659
  82d654:	83 44 24 20 01       	add    DWORD PTR [esp+0x20],0x1
  82d659:	83 c7 04             	add    edi,0x4
  82d65c:	3b 7c 24 34          	cmp    edi,DWORD PTR [esp+0x34]
  82d660:	75 df                	jne    0x82d641
  82d662:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  82d666:	85 db                	test   ebx,ebx
  82d668:	76 31                	jbe    0x82d69b
  82d66a:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  82d66d:	8b 4e 48             	mov    ecx,DWORD PTR [esi+0x48]
  82d670:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  82d674:	50                   	push   eax
  82d675:	51                   	push   ecx
  82d676:	8b 8f 5c 09 00 00    	mov    ecx,DWORD PTR [edi+0x95c]
  82d67c:	e8 af 40 e0 ff       	call   0x631730
  82d681:	80 7c 24 0e 00       	cmp    BYTE PTR [esp+0xe],0x0
  82d686:	74 13                	je     0x82d69b
  82d688:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  82d68b:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  82d68e:	8b 8f 5c 09 00 00    	mov    ecx,DWORD PTR [edi+0x95c]
  82d694:	52                   	push   edx
  82d695:	50                   	push   eax
  82d696:	e8 75 4c e0 ff       	call   0x632310
  82d69b:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  82d6a2:	e8 a9 97 df ff       	call   0x626e50
  82d6a7:	5f                   	pop    edi
  82d6a8:	5e                   	pop    esi
  82d6a9:	8b c3                	mov    eax,ebx
  82d6ab:	5b                   	pop    ebx
  82d6ac:	8b e5                	mov    esp,ebp
  82d6ae:	5d                   	pop    ebp
  82d6af:	c2 0c 00             	ret    0xc
