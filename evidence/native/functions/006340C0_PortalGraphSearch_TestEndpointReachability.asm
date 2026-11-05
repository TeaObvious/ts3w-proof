# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x006340c0,0x0063420b); analyst name PortalGraphSearch_TestEndpointReachability.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006340c0 <.text+0x2330c0>:
  6340c0:	83 ec 64             	sub    esp,0x64
  6340c3:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  6340cb:	33 c0                	xor    eax,eax
  6340cd:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  6340d1:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  6340d5:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6340d9:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6340dd:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  6340e1:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  6340e4:	53                   	push   ebx
  6340e5:	57                   	push   edi
  6340e6:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
  6340ea:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
  6340ee:	8d 44 24 08          	lea    eax,[esp+0x8]
  6340f2:	52                   	push   edx
  6340f3:	8b 54 24 78          	mov    edx,DWORD PTR [esp+0x78]
  6340f7:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  6340fb:	8b 44 24 7c          	mov    eax,DWORD PTR [esp+0x7c]
  6340ff:	33 db                	xor    ebx,ebx
  634101:	50                   	push   eax
  634102:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  634108:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  634110:	bf 01 00 00 00       	mov    edi,0x1
  634115:	52                   	push   edx
  634116:	c7 44 24 14 d0 cf fe 00 	mov    DWORD PTR [esp+0x14],0xfecfd0
  63411e:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  634124:	c7 44 24 50 4c d1 fe 00 	mov    DWORD PTR [esp+0x50],0xfed14c
  63412c:	89 7c 24 3c          	mov    DWORD PTR [esp+0x3c],edi
  634130:	c7 44 24 38 00 d9 14 01 	mov    DWORD PTR [esp+0x38],0x114d900
  634138:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
  63413c:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  634140:	89 4c 24 5c          	mov    DWORD PTR [esp+0x5c],ecx
  634144:	89 5c 24 64          	mov    DWORD PTR [esp+0x64],ebx
  634148:	c7 44 24 68 00 00 01 00 	mov    DWORD PTR [esp+0x68],0x10000
  634150:	89 5c 24 6c          	mov    DWORD PTR [esp+0x6c],ebx
  634154:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
  634158:	e8 93 e7 ff ff       	call   0x6328f0
  63415d:	3b c3                	cmp    eax,ebx
  63415f:	74 76                	je     0x6341d7
  634161:	01 78 28             	add    DWORD PTR [eax+0x28],edi
  634164:	56                   	push   esi
  634165:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  634169:	8d 70 24             	lea    esi,[eax+0x24]
  63416c:	51                   	push   ecx
  63416d:	8b c8                	mov    ecx,eax
  63416f:	e8 5c 77 03 00       	call   0x66b8d0
  634174:	83 f8 02             	cmp    eax,0x2
  634177:	72 09                	jb     0x634182
  634179:	83 f8 0d             	cmp    eax,0xd
  63417c:	88 5c 24 74          	mov    BYTE PTR [esp+0x74],bl
  634180:	75 05                	jne    0x634187
  634182:	c6 44 24 74 01       	mov    BYTE PTR [esp+0x74],0x1
  634187:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  63418a:	83 c0 ff             	add    eax,0xffffffff
  63418d:	3b c3                	cmp    eax,ebx
  63418f:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  634192:	75 0c                	jne    0x6341a0
  634194:	89 7e 04             	mov    DWORD PTR [esi+0x4],edi
  634197:	8b 16                	mov    edx,DWORD PTR [esi]
  634199:	8b 02                	mov    eax,DWORD PTR [edx]
  63419b:	57                   	push   edi
  63419c:	8b ce                	mov    ecx,esi
  63419e:	ff d0                	call   eax
  6341a0:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  6341a4:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  6341a8:	51                   	push   ecx
  6341a9:	52                   	push   edx
  6341aa:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  6341ae:	e8 3d 26 3a 00       	call   0x9d67f0
  6341b3:	39 7c 24 34          	cmp    DWORD PTR [esp+0x34],edi
  6341b7:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
  6341bb:	5e                   	pop    esi
  6341bc:	76 0d                	jbe    0x6341cb
  6341be:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  6341c2:	50                   	push   eax
  6341c3:	e8 18 03 eb ff       	call   0x4e44e0
  6341c8:	83 c4 04             	add    esp,0x4
  6341cb:	8a 44 24 70          	mov    al,BYTE PTR [esp+0x70]
  6341cf:	5f                   	pop    edi
  6341d0:	5b                   	pop    ebx
  6341d1:	83 c4 64             	add    esp,0x64
  6341d4:	c2 10 00             	ret    0x10
  6341d7:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  6341db:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  6341df:	51                   	push   ecx
  6341e0:	52                   	push   edx
  6341e1:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  6341e5:	e8 06 26 3a 00       	call   0x9d67f0
  6341ea:	39 7c 24 30          	cmp    DWORD PTR [esp+0x30],edi
  6341ee:	89 5c 24 34          	mov    DWORD PTR [esp+0x34],ebx
  6341f2:	76 0d                	jbe    0x634201
  6341f4:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  6341f8:	50                   	push   eax
  6341f9:	e8 e2 02 eb ff       	call   0x4e44e0
  6341fe:	83 c4 04             	add    esp,0x4
  634201:	5f                   	pop    edi
  634202:	32 c0                	xor    al,al
  634204:	5b                   	pop    ebx
  634205:	83 c4 64             	add    esp,0x64
  634208:	c2 10 00             	ret    0x10
