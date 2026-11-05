# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0099a2b0,0x0099a3ea); analyst name DownloadContent_GenerateUnusedResourceKey.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0099a2b0 <.text+0x5992b0>:
  99a2b0:	83 ec 10             	sub    esp,0x10
  99a2b3:	56                   	push   esi
  99a2b4:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  99a2b8:	81 7e 08 da 57 05 22 	cmp    DWORD PTR [esi+0x8],0x220557da
  99a2bf:	75 15                	jne    0x99a2d6
  99a2c1:	56                   	push   esi
  99a2c2:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  99a2c6:	56                   	push   esi
  99a2c7:	e8 04 ff ff ff       	call   0x99a1d0
  99a2cc:	83 c4 08             	add    esp,0x8
  99a2cf:	8b c6                	mov    eax,esi
  99a2d1:	5e                   	pop    esi
  99a2d2:	83 c4 10             	add    esp,0x10
  99a2d5:	c3                   	ret
  99a2d6:	f6 05 a0 a6 1e 01 01 	test   BYTE PTR ds:0x11ea6a0,0x1
  99a2dd:	75 13                	jne    0x99a2f2
  99a2df:	83 0d a0 a6 1e 01 01 	or     DWORD PTR ds:0x11ea6a0,0x1
  99a2e6:	6a ff                	push   0xffffffff
  99a2e8:	b9 9c a6 1e 01       	mov    ecx,0x11ea69c
  99a2ed:	e8 fe 06 b6 ff       	call   0x4fa9f0
  99a2f2:	53                   	push   ebx
  99a2f3:	55                   	push   ebp
  99a2f4:	57                   	push   edi
  99a2f5:	e8 86 5b b1 ff       	call   0x4afe80
  99a2fa:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  99a2fd:	8b 6c 24 2c          	mov    ebp,DWORD PTR [esp+0x2c]
  99a301:	33 c0                	xor    eax,eax
  99a303:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  99a307:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  99a30b:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  99a30e:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  99a312:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  99a316:	bb 88 13 00 00       	mov    ebx,0x1388
  99a31b:	eb 03                	jmp    0x99a320
  99a31d:	8d 49 00             	lea    ecx,[ecx+0x0]
  99a320:	85 db                	test   ebx,ebx
  99a322:	0f 84 9b 00 00 00    	je     0x99a3c3
  99a328:	b9 9c a6 1e 01       	mov    ecx,0x11ea69c
  99a32d:	e8 de 06 b6 ff       	call   0x4faa10
  99a332:	33 d2                	xor    edx,edx
  99a334:	b1 20                	mov    cl,0x20
  99a336:	e8 65 56 5e 00       	call   0xf7f9a0
  99a33b:	b9 9c a6 1e 01       	mov    ecx,0x11ea69c
  99a340:	8b f0                	mov    esi,eax
  99a342:	8b fa                	mov    edi,edx
  99a344:	e8 c7 06 b6 ff       	call   0x4faa10
  99a349:	33 d2                	xor    edx,edx
  99a34b:	0b c6                	or     eax,esi
  99a34d:	0b d7                	or     edx,edi
  99a34f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  99a353:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  99a357:	e8 04 8b fe ff       	call   0x982e60
  99a35c:	8b f8                	mov    edi,eax
  99a35e:	e8 1d 5b b1 ff       	call   0x4afe80
  99a363:	8b f0                	mov    esi,eax
  99a365:	8b 06                	mov    eax,DWORD PTR [esi]
  99a367:	8b 50 58             	mov    edx,DWORD PTR [eax+0x58]
  99a36a:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  99a36e:	51                   	push   ecx
  99a36f:	8b ce                	mov    ecx,esi
  99a371:	ff d2                	call   edx
  99a373:	85 c0                	test   eax,eax
  99a375:	75 22                	jne    0x99a399
  99a377:	8b 06                	mov    eax,DWORD PTR [esi]
  99a379:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  99a37c:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  99a380:	51                   	push   ecx
  99a381:	8b ce                	mov    ecx,esi
  99a383:	ff d2                	call   edx
  99a385:	85 c0                	test   eax,eax
  99a387:	75 10                	jne    0x99a399
  99a389:	8d 44 24 10          	lea    eax,[esp+0x10]
  99a38d:	50                   	push   eax
  99a38e:	8b cf                	mov    ecx,edi
  99a390:	e8 6b 9e fe ff       	call   0x984200
  99a395:	84 c0                	test   al,al
  99a397:	74 05                	je     0x99a39e
  99a399:	83 eb 01             	sub    ebx,0x1
  99a39c:	eb 82                	jmp    0x99a320
  99a39e:	85 ed                	test   ebp,ebp
  99a3a0:	74 21                	je     0x99a3c3
  99a3a2:	8b 75 04             	mov    esi,DWORD PTR [ebp+0x4]
  99a3a5:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  99a3a8:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  99a3ac:	51                   	push   ecx
  99a3ad:	56                   	push   esi
  99a3ae:	52                   	push   edx
  99a3af:	e8 ec ba c1 ff       	call   0x5b5ea0
  99a3b4:	83 c4 0c             	add    esp,0xc
  99a3b7:	3b c6                	cmp    eax,esi
  99a3b9:	74 08                	je     0x99a3c3
  99a3bb:	83 eb 01             	sub    ebx,0x1
  99a3be:	e9 5d ff ff ff       	jmp    0x99a320
  99a3c3:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  99a3c7:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  99a3cb:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  99a3cf:	5f                   	pop    edi
  99a3d0:	89 08                	mov    DWORD PTR [eax],ecx
  99a3d2:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  99a3d6:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  99a3d9:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  99a3dd:	5d                   	pop    ebp
  99a3de:	5b                   	pop    ebx
  99a3df:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  99a3e2:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  99a3e5:	5e                   	pop    esi
  99a3e6:	83 c4 10             	add    esp,0x10
  99a3e9:	c3                   	ret
