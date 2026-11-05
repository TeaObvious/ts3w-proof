# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00934090 <.text+0x533090>:
  934090:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  934094:	83 ec 4c             	sub    esp,0x4c
  934097:	55                   	push   ebp
  934098:	6a 01                	push   0x1
  93409a:	8b e9                	mov    ebp,ecx
  93409c:	50                   	push   eax
  93409d:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  9340a1:	e8 3a 53 ea ff       	call   0x7d93e0
  9340a6:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  9340aa:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  9340ae:	51                   	push   ecx
  9340af:	8d 54 24 08          	lea    edx,[esp+0x8]
  9340b3:	52                   	push   edx
  9340b4:	50                   	push   eax
  9340b5:	e8 c6 98 ba ff       	call   0x4dd980
  9340ba:	83 c4 0c             	add    esp,0xc
  9340bd:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  9340c1:	50                   	push   eax
  9340c2:	e8 29 39 ea ff       	call   0x7d79f0
  9340c7:	80 7c 24 4c 00       	cmp    BYTE PTR [esp+0x4c],0x0
  9340cc:	0f 84 23 01 00 00    	je     0x9341f5
  9340d2:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  9340d6:	83 c1 ff             	add    ecx,0xffffffff
  9340d9:	0f 85 16 01 00 00    	jne    0x9341f5
  9340df:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  9340e3:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  9340e7:	52                   	push   edx
  9340e8:	8d 44 24 58          	lea    eax,[esp+0x58]
  9340ec:	50                   	push   eax
  9340ed:	51                   	push   ecx
  9340ee:	e8 8d 98 ba ff       	call   0x4dd980
  9340f3:	83 c4 0c             	add    esp,0xc
  9340f6:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  9340fa:	50                   	push   eax
  9340fb:	e8 f0 38 ea ff       	call   0x7d79f0
  934100:	80 7c 24 4c 00       	cmp    BYTE PTR [esp+0x4c],0x0
  934105:	0f 84 ea 00 00 00    	je     0x9341f5
  93410b:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  93410f:	6a 10                	push   0x10
  934111:	52                   	push   edx
  934112:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  934116:	e8 e5 38 ea ff       	call   0x7d7a00
  93411b:	84 c0                	test   al,al
  93411d:	0f 84 d2 00 00 00    	je     0x9341f5
  934123:	56                   	push   esi
  934124:	57                   	push   edi
  934125:	8d 7d 28             	lea    edi,[ebp+0x28]
  934128:	8b cf                	mov    ecx,edi
  93412a:	e8 e1 95 c6 ff       	call   0x59d710
  93412f:	33 f6                	xor    esi,esi
  934131:	39 74 24 5c          	cmp    DWORD PTR [esp+0x5c],esi
  934135:	0f 8e 8f 00 00 00    	jle    0x9341ca
  93413b:	eb 03                	jmp    0x934140
  93413d:	8d 49 00             	lea    ecx,[ecx+0x0]
  934140:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  934144:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  934148:	50                   	push   eax
  934149:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  93414d:	51                   	push   ecx
  93414e:	52                   	push   edx
  93414f:	e8 5c 99 ba ff       	call   0x4ddab0
  934154:	83 c4 0c             	add    esp,0xc
  934157:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  93415b:	50                   	push   eax
  93415c:	e8 8f 38 ea ff       	call   0x7d79f0
  934161:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  934165:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  934169:	50                   	push   eax
  93416a:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  93416e:	51                   	push   ecx
  93416f:	52                   	push   edx
  934170:	e8 3b 99 ba ff       	call   0x4ddab0
  934175:	83 c4 0c             	add    esp,0xc
  934178:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  93417c:	50                   	push   eax
  93417d:	e8 6e 38 ea ff       	call   0x7d79f0
  934182:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  934186:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  93418a:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  93418e:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  934192:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  934196:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  93419a:	c6 44 24 10 00       	mov    BYTE PTR [esp+0x10],0x0
  93419f:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  9341a3:	51                   	push   ecx
  9341a4:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
  9341a8:	8d 54 24 34          	lea    edx,[esp+0x34]
  9341ac:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  9341b0:	52                   	push   edx
  9341b1:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  9341b5:	50                   	push   eax
  9341b6:	8b cf                	mov    ecx,edi
  9341b8:	e8 93 d0 fd ff       	call   0x911250
  9341bd:	83 c6 01             	add    esi,0x1
  9341c0:	3b 74 24 5c          	cmp    esi,DWORD PTR [esp+0x5c]
  9341c4:	0f 8c 76 ff ff ff    	jl     0x934140
  9341ca:	8b 45 34             	mov    eax,DWORD PTR [ebp+0x34]
  9341cd:	83 c0 03             	add    eax,0x3
  9341d0:	8d 0c 40             	lea    ecx,[eax+eax*2]
  9341d3:	03 c9                	add    ecx,ecx
  9341d5:	03 c9                	add    ecx,ecx
  9341d7:	03 c9                	add    ecx,ecx
  9341d9:	51                   	push   ecx
  9341da:	8b cd                	mov    ecx,ebp
  9341dc:	e8 ff d9 df ff       	call   0x731be0
  9341e1:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  9341e5:	e8 a6 37 ea ff       	call   0x7d7990
  9341ea:	5f                   	pop    edi
  9341eb:	5e                   	pop    esi
  9341ec:	b0 01                	mov    al,0x1
  9341ee:	5d                   	pop    ebp
  9341ef:	83 c4 4c             	add    esp,0x4c
  9341f2:	c2 04 00             	ret    0x4
  9341f5:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  9341f9:	e8 92 37 ea ff       	call   0x7d7990
  9341fe:	32 c0                	xor    al,al
  934200:	5d                   	pop    ebp
  934201:	83 c4 4c             	add    esp,0x4c
  934204:	c2 04 00             	ret    0x4
