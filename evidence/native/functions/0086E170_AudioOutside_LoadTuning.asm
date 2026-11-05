# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0086e170 <.text+0x46d170>:
  86e170:	83 ec 08                                        	sub    esp,0x8
  86e173:	56                                              	push   esi
  86e174:	8b f1                                           	mov    esi,ecx
  86e176:	e8 85 1c 04 00                                  	call   0x8afe00
  86e17b:	68 ec 07 14 00                                  	push   0x1407ec
  86e180:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  86e184:	51                                              	push   ecx
  86e185:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  86e18d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  86e18f:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  86e192:	68 df 15 e4 a5                                  	push   0xa5e415df
  86e197:	68 90 30 2f cd                                  	push   0xcd2f3090
  86e19c:	8b c8                                           	mov    ecx,eax
  86e19e:	ff d2                                           	call   edx
  86e1a0:	84 c0                                           	test   al,al
  86e1a2:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  86e1a6:	75 12                                           	jne    0x86e1ba
  86e1a8:	85 c9                                           	test   ecx,ecx
  86e1aa:	74 07                                           	je     0x86e1b3
  86e1ac:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  86e1ae:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  86e1b1:	ff d2                                           	call   edx
  86e1b3:	32 c0                                           	xor    al,al
  86e1b5:	5e                                              	pop    esi
  86e1b6:	83 c4 08                                        	add    esp,0x8
  86e1b9:	c3                                              	ret
  86e1ba:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  86e1bc:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
  86e1bf:	8d 56 28                                        	lea    edx,[esi+0x28]
  86e1c2:	52                                              	push   edx
  86e1c3:	68 1d 67 3f cb                                  	push   0xcb3f671d
  86e1c8:	ff d0                                           	call   eax
  86e1ca:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  86e1ce:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  86e1d0:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
  86e1d3:	8d 46 2c                                        	lea    eax,[esi+0x2c]
  86e1d6:	50                                              	push   eax
  86e1d7:	68 0f b7 65 2e                                  	push   0x2e65b70f
  86e1dc:	ff d2                                           	call   edx
  86e1de:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  86e1e2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  86e1e4:	8b 40 30                                        	mov    eax,DWORD PTR [eax+0x30]
  86e1e7:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  86e1eb:	52                                              	push   edx
  86e1ec:	68 10 37 59 03                                  	push   0x3593710
  86e1f1:	ff d0                                           	call   eax
  86e1f3:	84 c0                                           	test   al,al
  86e1f5:	74 12                                           	je     0x86e209
  86e1f7:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  86e1fd:	0f 28 c8                                        	movaps xmm1,xmm0
  86e200:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  86e204:	f3 0f 11 4e 30                                  	movss  DWORD PTR [esi+0x30],xmm1
  86e209:	53                                              	push   ebx
  86e20a:	8b ce                                           	mov    ecx,esi
  86e20c:	e8 df 7f 03 00                                  	call   0x8a61f0
  86e211:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  86e215:	85 c9                                           	test   ecx,ecx
  86e217:	8a d8                                           	mov    bl,al
  86e219:	74 07                                           	je     0x86e222
  86e21b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  86e21d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  86e220:	ff d0                                           	call   eax
  86e222:	8a c3                                           	mov    al,bl
  86e224:	5b                                              	pop    ebx
  86e225:	5e                                              	pop    esi
  86e226:	83 c4 08                                        	add    esp,0x8
  86e229:	c3                                              	ret
