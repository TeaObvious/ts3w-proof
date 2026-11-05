# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00616d70 <.text+0x215d70>:
  616d70:	81 ec a0 00 00 00    	sub    esp,0xa0
  616d76:	53                   	push   ebx
  616d77:	56                   	push   esi
  616d78:	57                   	push   edi
  616d79:	68 80 00 00 00       	push   0x80
  616d7e:	33 f6                	xor    esi,esi
  616d80:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  616d84:	56                   	push   esi
  616d85:	50                   	push   eax
  616d86:	e8 0d 85 96 00       	call   0xf7f298
  616d8b:	8b bc 24 c4 00 00 00 	mov    edi,DWORD PTR [esp+0xc4]
  616d92:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  616d95:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  616d98:	8d 47 08             	lea    eax,[edi+0x8]
  616d9b:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  616d9f:	8b 84 24 c0 00 00 00 	mov    eax,DWORD PTR [esp+0xc0]
  616da6:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
  616daa:	83 c4 0c             	add    esp,0xc
  616dad:	83 f8 01             	cmp    eax,0x1
  616db0:	b9 20 00 00 00       	mov    ecx,0x20
  616db5:	c7 44 24 28 44 44 53 	mov    DWORD PTR [esp+0x28],0x20534444
  616dbc:	20 
  616dbd:	c7 44 24 2c 7c 00 00 	mov    DWORD PTR [esp+0x2c],0x7c
  616dc4:	00 
  616dc5:	c7 44 24 30 07 10 00 	mov    DWORD PTR [esp+0x30],0x1007
  616dcc:	00 
  616dcd:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  616dd1:	c7 44 24 40 01 00 00 	mov    DWORD PTR [esp+0x40],0x1
  616dd8:	00 
  616dd9:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  616ddd:	c7 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],0x1000
  616de4:	00 10 00 00 
  616de8:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  616dec:	76 13                	jbe    0x616e01
  616dee:	c7 44 24 30 07 10 02 	mov    DWORD PTR [esp+0x30],0x21007
  616df5:	00 
  616df6:	c7 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],0x401000
  616dfd:	00 10 40 00 
  616e01:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  616e04:	8d 42 fe             	lea    eax,[edx-0x2]
  616e07:	83 f8 78             	cmp    eax,0x78
  616e0a:	0f 87 67 04 00 00    	ja     0x617277
  616e10:	0f b6 80 d8 72 61 00 	movzx  eax,BYTE PTR [eax+0x6172d8]
  616e17:	ff 24 85 84 72 61 00 	jmp    DWORD PTR [eax*4+0x617284]
  616e1e:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x10
  616e25:	10 00 00 00 
  616e29:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0x7c00
  616e30:	00 7c 00 00 
  616e34:	c7 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],0x3e0
  616e3b:	e0 03 00 00 
  616e3f:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],0x1f
  616e46:	1f 00 00 00 
  616e4a:	bb 40 00 00 00       	mov    ebx,0x40
  616e4f:	e9 04 02 00 00       	jmp    0x617058
  616e54:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x10
  616e5b:	10 00 00 00 
  616e5f:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xf800
  616e66:	00 f8 00 00 
  616e6a:	c7 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],0x7e0
  616e71:	e0 07 00 00 
  616e75:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],0x1f
  616e7c:	1f 00 00 00 
  616e80:	bb 40 00 00 00       	mov    ebx,0x40
  616e85:	e9 ce 01 00 00       	jmp    0x617058
  616e8a:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xff0000
  616e91:	00 00 ff 00 
  616e95:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],0xff
  616e9c:	ff 00 00 00 
  616ea0:	bb 40 00 00 00       	mov    ebx,0x40
  616ea5:	e9 9c 01 00 00       	jmp    0x617046
  616eaa:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xff0000
  616eb1:	00 00 ff 00 
  616eb5:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],0xff
  616ebc:	ff 00 00 00 
  616ec0:	bb 41 00 00 00       	mov    ebx,0x41
  616ec5:	e9 71 01 00 00       	jmp    0x61703b
  616eca:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x8
  616ed1:	08 00 00 00 
  616ed5:	c7 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],0xff
  616edc:	ff 00 00 00 
  616ee0:	bb 02 00 00 00       	mov    ebx,0x2
  616ee5:	e9 6e 01 00 00       	jmp    0x617058
  616eea:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x8
  616ef1:	08 00 00 00 
  616ef5:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xff
  616efc:	ff 00 00 00 
  616f00:	bb 00 00 02 00       	mov    ebx,0x20000
  616f05:	e9 4e 01 00 00       	jmp    0x617058
  616f0a:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x10
  616f11:	10 00 00 00 
  616f15:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xff
  616f1c:	ff 00 00 00 
  616f20:	c7 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],0xff00
  616f27:	00 ff 00 00 
  616f2b:	bb 01 00 02 00       	mov    ebx,0x20001
  616f30:	e9 23 01 00 00       	jmp    0x617058
  616f35:	c7 44 24 7c 44 58 54 	mov    DWORD PTR [esp+0x7c],0x31545844
  616f3c:	31 
  616f3d:	bb 04 00 00 00       	mov    ebx,0x4
  616f42:	e9 11 01 00 00       	jmp    0x617058
  616f47:	c7 44 24 7c 44 58 54 	mov    DWORD PTR [esp+0x7c],0x32545844
  616f4e:	32 
  616f4f:	bb 04 00 00 00       	mov    ebx,0x4
  616f54:	e9 ff 00 00 00       	jmp    0x617058
  616f59:	c7 44 24 7c 44 58 54 	mov    DWORD PTR [esp+0x7c],0x33545844
  616f60:	33 
  616f61:	bb 04 00 00 00       	mov    ebx,0x4
  616f66:	e9 ed 00 00 00       	jmp    0x617058
  616f6b:	c7 44 24 7c 44 58 54 	mov    DWORD PTR [esp+0x7c],0x34545844
  616f72:	34 
  616f73:	bb 04 00 00 00       	mov    ebx,0x4
  616f78:	e9 db 00 00 00       	jmp    0x617058
  616f7d:	c7 44 24 7c 44 58 54 	mov    DWORD PTR [esp+0x7c],0x35545844
  616f84:	35 
  616f85:	bb 04 00 00 00       	mov    ebx,0x4
  616f8a:	e9 c9 00 00 00       	jmp    0x617058
  616f8f:	c7 44 24 7c 24 00 00 	mov    DWORD PTR [esp+0x7c],0x24
  616f96:	00 
  616f97:	bb 04 00 00 00       	mov    ebx,0x4
  616f9c:	e9 b7 00 00 00       	jmp    0x617058
  616fa1:	c7 44 24 7c 70 00 00 	mov    DWORD PTR [esp+0x7c],0x70
  616fa8:	00 
  616fa9:	bb 04 00 00 00       	mov    ebx,0x4
  616fae:	e9 a5 00 00 00       	jmp    0x617058
  616fb3:	c7 44 24 7c 71 00 00 	mov    DWORD PTR [esp+0x7c],0x71
  616fba:	00 
  616fbb:	bb 04 00 00 00       	mov    ebx,0x4
  616fc0:	e9 93 00 00 00       	jmp    0x617058
  616fc5:	c7 44 24 7c 72 00 00 	mov    DWORD PTR [esp+0x7c],0x72
  616fcc:	00 
  616fcd:	bb 04 00 00 00       	mov    ebx,0x4
  616fd2:	e9 81 00 00 00       	jmp    0x617058
  616fd7:	c7 44 24 7c 73 00 00 	mov    DWORD PTR [esp+0x7c],0x73
  616fde:	00 
  616fdf:	bb 04 00 00 00       	mov    ebx,0x4
  616fe4:	eb 72                	jmp    0x617058
  616fe6:	c7 44 24 7c 74 00 00 	mov    DWORD PTR [esp+0x7c],0x74
  616fed:	00 
  616fee:	bb 04 00 00 00       	mov    ebx,0x4
  616ff3:	eb 63                	jmp    0x617058
  616ff5:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x10
  616ffc:	10 00 00 00 
  617000:	bb 00 00 08 00       	mov    ebx,0x80000
  617005:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xff
  61700c:	ff 00 00 00 
  617010:	89 b4 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],esi
  617017:	89 b4 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],esi
  61701e:	eb 2d                	jmp    0x61704d
  617020:	bb 00 00 08 00       	mov    ebx,0x80000
  617025:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0xff
  61702c:	ff 00 00 00 
  617030:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],0xff0000
  617037:	00 00 ff 00 
  61703b:	c7 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],0xff000000
  617042:	00 00 00 ff 
  617046:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  61704d:	c7 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],0xff00
  617054:	00 ff 00 00 
  617058:	55                   	push   ebp
  617059:	52                   	push   edx
  61705a:	89 9c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ebx
  617061:	e8 9a 0e 00 00       	call   0x617f00
  617066:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  617069:	83 c4 04             	add    esp,0x4
  61706c:	8b e8                	mov    ebp,eax
  61706e:	51                   	push   ecx
  61706f:	8b cd                	mov    ecx,ebp
  617071:	e8 4a 0f 00 00       	call   0x617fc0
  617076:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  617079:	6a 04                	push   0x4
  61707b:	52                   	push   edx
  61707c:	8b cd                	mov    ecx,ebp
  61707e:	e8 5d 0f 00 00       	call   0x617fe0
  617083:	8b f0                	mov    esi,eax
  617085:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  617088:	50                   	push   eax
  617089:	8b cd                	mov    ecx,ebp
  61708b:	e8 20 0e 00 00       	call   0x617eb0
  617090:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  617094:	8b 11                	mov    edx,DWORD PTR [ecx]
  617096:	52                   	push   edx
  617097:	8b cd                	mov    ecx,ebp
  617099:	e8 22 0e 00 00       	call   0x617ec0
  61709e:	f6 c3 04             	test   bl,0x4
  6170a1:	74 11                	je     0x6170b4
  6170a3:	0f af c6             	imul   eax,esi
  6170a6:	81 4c 24 34 00 00 08 	or     DWORD PTR [esp+0x34],0x80000
  6170ad:	00 
  6170ae:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  6170b2:	eb 09                	jmp    0x6170bd
  6170b4:	83 4c 24 34 08       	or     DWORD PTR [esp+0x34],0x8
  6170b9:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  6170bd:	33 f6                	xor    esi,esi
  6170bf:	39 b4 24 b8 00 00 00 	cmp    DWORD PTR [esp+0xb8],esi
  6170c6:	bf 80 00 00 00       	mov    edi,0x80
  6170cb:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  6170cf:	0f 86 96 00 00 00    	jbe    0x61716b
  6170d5:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  6170d9:	b8 01 00 00 00       	mov    eax,0x1
  6170de:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  6170e2:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  6170e6:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  6170ea:	eb 08                	jmp    0x6170f4
  6170ec:	8d 64 24 00          	lea    esp,[esp+0x0]
  6170f0:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  6170f4:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  6170fb:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  6170fe:	8b ce                	mov    ecx,esi
  617100:	d3 e8                	shr    eax,cl
  617102:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  617106:	83 f8 01             	cmp    eax,0x1
  617109:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  61710d:	77 04                	ja     0x617113
  61710f:	8d 44 24 28          	lea    eax,[esp+0x28]
  617113:	8b 10                	mov    edx,DWORD PTR [eax]
  617115:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  617119:	8b 01                	mov    eax,DWORD PTR [ecx]
  61711b:	8b ce                	mov    ecx,esi
  61711d:	d3 e8                	shr    eax,cl
  61711f:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  617123:	83 f8 01             	cmp    eax,0x1
  617126:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  61712a:	77 04                	ja     0x617130
  61712c:	8d 44 24 24          	lea    eax,[esp+0x24]
  617130:	39 53 fc             	cmp    DWORD PTR [ebx-0x4],edx
  617133:	8b 38                	mov    edi,DWORD PTR [eax]
  617135:	75 53                	jne    0x61718a
  617137:	39 3b                	cmp    DWORD PTR [ebx],edi
  617139:	75 4f                	jne    0x61718a
  61713b:	6a 04                	push   0x4
  61713d:	52                   	push   edx
  61713e:	8b cd                	mov    ecx,ebp
  617140:	e8 9b 0e 00 00       	call   0x617fe0
  617145:	57                   	push   edi
  617146:	8b cd                	mov    ecx,ebp
  617148:	8b d8                	mov    ebx,eax
  61714a:	e8 71 0d 00 00       	call   0x617ec0
  61714f:	0f af c3             	imul   eax,ebx
  617152:	01 44 24 20          	add    DWORD PTR [esp+0x20],eax
  617156:	83 44 24 18 14       	add    DWORD PTR [esp+0x18],0x14
  61715b:	83 c6 01             	add    esi,0x1
  61715e:	3b b4 24 b8 00 00 00 	cmp    esi,DWORD PTR [esp+0xb8]
  617165:	72 89                	jb     0x6170f0
  617167:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  61716b:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  617171:	6a 00                	push   0x0
  617173:	6a 00                	push   0x0
  617175:	6a 10                	push   0x10
  617177:	57                   	push   edi
  617178:	e8 f3 fd ec ff       	call   0x4e6f70
  61717d:	8b d8                	mov    ebx,eax
  61717f:	85 db                	test   ebx,ebx
  617181:	89 9c 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],ebx
  617188:	75 0d                	jne    0x617197
  61718a:	5d                   	pop    ebp
  61718b:	5f                   	pop    edi
  61718c:	5e                   	pop    esi
  61718d:	32 c0                	xor    al,al
  61718f:	5b                   	pop    ebx
  617190:	81 c4 a0 00 00 00    	add    esp,0xa0
  617196:	c3                   	ret
  617197:	57                   	push   edi
  617198:	6a 00                	push   0x0
  61719a:	53                   	push   ebx
  61719b:	e8 f8 80 96 00       	call   0xf7f298
  6171a0:	8b 84 24 c4 00 00 00 	mov    eax,DWORD PTR [esp+0xc4]
  6171a7:	83 c4 0c             	add    esp,0xc
  6171aa:	85 c0                	test   eax,eax
  6171ac:	b9 20 00 00 00       	mov    ecx,0x20
  6171b1:	8d 74 24 2c          	lea    esi,[esp+0x2c]
  6171b5:	8b fb                	mov    edi,ebx
  6171b7:	8d 93 80 00 00 00    	lea    edx,[ebx+0x80]
  6171bd:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  6171bf:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  6171c3:	76 75                	jbe    0x61723a
  6171c5:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  6171c9:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6171cd:	8d 49 00             	lea    ecx,[ecx+0x0]
  6171d0:	8b 7e fc             	mov    edi,DWORD PTR [esi-0x4]
  6171d3:	57                   	push   edi
  6171d4:	8b cd                	mov    ecx,ebp
  6171d6:	e8 e5 0d 00 00       	call   0x617fc0
  6171db:	6a 04                	push   0x4
  6171dd:	57                   	push   edi
  6171de:	8b cd                	mov    ecx,ebp
  6171e0:	8b d8                	mov    ebx,eax
  6171e2:	e8 f9 0d 00 00       	call   0x617fe0
  6171e7:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  6171eb:	8b 06                	mov    eax,DWORD PTR [esi]
  6171ed:	50                   	push   eax
  6171ee:	8b cd                	mov    ecx,ebp
  6171f0:	e8 cb 0c 00 00       	call   0x617ec0
  6171f5:	85 c0                	test   eax,eax
  6171f7:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  6171fa:	8b 7e f8             	mov    edi,DWORD PTR [esi-0x8]
  6171fd:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  617201:	76 26                	jbe    0x617229
  617203:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  617207:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  61720b:	53                   	push   ebx
  61720c:	57                   	push   edi
  61720d:	52                   	push   edx
  61720e:	e8 73 80 96 00       	call   0xf7f286
  617213:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  617217:	01 44 24 24          	add    DWORD PTR [esp+0x24],eax
  61721b:	03 7c 24 34          	add    edi,DWORD PTR [esp+0x34]
  61721f:	83 c4 0c             	add    esp,0xc
  617222:	83 6c 24 14 01       	sub    DWORD PTR [esp+0x14],0x1
  617227:	75 de                	jne    0x617207
  617229:	83 c6 14             	add    esi,0x14
  61722c:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  617231:	75 9d                	jne    0x6171d0
  617233:	8b 9c 24 ac 00 00 00 	mov    ebx,DWORD PTR [esp+0xac]
  61723a:	8b 8c 24 b4 00 00 00 	mov    ecx,DWORD PTR [esp+0xb4]
  617241:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  617245:	8b 11                	mov    edx,DWORD PTR [ecx]
  617247:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  61724a:	50                   	push   eax
  61724b:	53                   	push   ebx
  61724c:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
  617251:	ff d2                	call   edx
  617253:	84 c0                	test   al,al
  617255:	74 05                	je     0x61725c
  617257:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  61725c:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  617262:	53                   	push   ebx
  617263:	e8 08 ec ec ff       	call   0x4e5e70
  617268:	8a 44 24 13          	mov    al,BYTE PTR [esp+0x13]
  61726c:	5d                   	pop    ebp
  61726d:	5f                   	pop    edi
  61726e:	5e                   	pop    esi
  61726f:	5b                   	pop    ebx
  617270:	81 c4 a0 00 00 00    	add    esp,0xa0
  617276:	c3                   	ret
  617277:	5f                   	pop    edi
  617278:	5e                   	pop    esi
  617279:	32 c0                	xor    al,al
  61727b:	5b                   	pop    ebx
  61727c:	81 c4 a0 00 00 00    	add    esp,0xa0
  617282:	c3                   	ret
