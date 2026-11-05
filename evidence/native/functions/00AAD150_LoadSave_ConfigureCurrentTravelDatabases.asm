# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00aad150,0x00aad297); analyst name LoadSave_ConfigureCurrentTravelDatabases.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00aad150 <.text+0x6ac150>:
  aad150:	81 ec 30 04 00 00    	sub    esp,0x430
  aad156:	e8 05 5d ed ff       	call   0x982e60
  aad15b:	85 c0                	test   eax,eax
  aad15d:	0f 84 2d 01 00 00    	je     0xaad290
  aad163:	56                   	push   esi
  aad164:	8b b0 64 06 00 00    	mov    esi,DWORD PTR [eax+0x664]
  aad16a:	85 f6                	test   esi,esi
  aad16c:	0f 84 1d 01 00 00    	je     0xaad28f
  aad172:	80 bc 24 38 04 00 00 00 	cmp    BYTE PTR [esp+0x438],0x0
  aad17a:	0f 84 02 01 00 00    	je     0xaad282
  aad180:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  aad184:	e8 57 f6 a3 ff       	call   0x4ec7e0
  aad189:	8d 44 24 24          	lea    eax,[esp+0x24]
  aad18d:	50                   	push   eax
  aad18e:	e8 8d c8 ff ff       	call   0xaa9a20
  aad193:	8b 0d dc 3d 18 01    	mov    ecx,DWORD PTR ds:0x1183ddc
  aad199:	83 c4 04             	add    esp,0x4
  aad19c:	51                   	push   ecx
  aad19d:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  aad1a1:	e8 aa 10 a4 ff       	call   0x4ee250
  aad1a6:	6a 00                	push   0x0
  aad1a8:	68 94 19 05 01       	push   0x1051994
  aad1ad:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  aad1b1:	e8 4a 12 a4 ff       	call   0x4ee400
  aad1b6:	b8 54 8e 1c 01       	mov    eax,0x11c8e54
  aad1bb:	8d 54 24 14          	lea    edx,[esp+0x14]
  aad1bf:	52                   	push   edx
  aad1c0:	c7 44 24 14 6c 26 00 01 	mov    DWORD PTR [esp+0x14],0x100266c
  aad1c8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  aad1cc:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  aad1d0:	c7 44 24 10 56 8e 1c 01 	mov    DWORD PTR [esp+0x10],0x11c8e56
  aad1d8:	e8 13 fd ff ff       	call   0xaacef0
  aad1dd:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  aad1e1:	83 c4 04             	add    esp,0x4
  aad1e4:	3b c1                	cmp    eax,ecx
  aad1e6:	74 0c                	je     0xaad1f4
  aad1e8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  aad1eb:	8b 00                	mov    eax,DWORD PTR [eax]
  aad1ed:	52                   	push   edx
  aad1ee:	50                   	push   eax
  aad1ef:	e8 6c bb 95 ff       	call   0x408d60
  aad1f4:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  aad1f8:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  aad1fc:	2b c8                	sub    ecx,eax
  aad1fe:	83 e1 fe             	and    ecx,0xfffffffe
  aad201:	83 f9 02             	cmp    ecx,0x2
  aad204:	7e 0d                	jle    0xaad213
  aad206:	85 c0                	test   eax,eax
  aad208:	74 09                	je     0xaad213
  aad20a:	50                   	push   eax
  aad20b:	e8 d0 72 a3 ff       	call   0x4e44e0
  aad210:	83 c4 04             	add    esp,0x4
  aad213:	6a ff                	push   0xffffffff
  aad215:	68 2c a0 fb 00       	push   0xfba02c
  aad21a:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  aad21e:	e8 5d d8 ff ff       	call   0xaaaa80
  aad223:	83 f8 ff             	cmp    eax,0xffffffff
  aad226:	74 0c                	je     0xaad234
  aad228:	6a ff                	push   0xffffffff
  aad22a:	50                   	push   eax
  aad22b:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  aad22f:	e8 6c 09 a4 ff       	call   0x4edba0
  aad234:	68 58 59 06 01       	push   0x1065958
  aad239:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  aad23d:	e8 0e 67 a3 ff       	call   0x4e3950
  aad242:	8b 94 24 3c 04 00 00 	mov    edx,DWORD PTR [esp+0x43c]
  aad249:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  aad24d:	52                   	push   edx
  aad24e:	50                   	push   eax
  aad24f:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  aad253:	51                   	push   ecx
  aad254:	8b ce                	mov    ecx,esi
  aad256:	e8 c5 d1 f1 ff       	call   0x9ca420
  aad25b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  aad25f:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  aad263:	2b d0                	sub    edx,eax
  aad265:	83 e2 fe             	and    edx,0xfffffffe
  aad268:	83 fa 02             	cmp    edx,0x2
  aad26b:	7e 22                	jle    0xaad28f
  aad26d:	85 c0                	test   eax,eax
  aad26f:	74 1e                	je     0xaad28f
  aad271:	50                   	push   eax
  aad272:	e8 69 72 a3 ff       	call   0x4e44e0
  aad277:	83 c4 04             	add    esp,0x4
  aad27a:	5e                   	pop    esi
  aad27b:	81 c4 30 04 00 00    	add    esp,0x430
  aad281:	c3                   	ret
  aad282:	6a 01                	push   0x1
  aad284:	6a 00                	push   0x0
  aad286:	6a 00                	push   0x0
  aad288:	8b ce                	mov    ecx,esi
  aad28a:	e8 91 d1 f1 ff       	call   0x9ca420
  aad28f:	5e                   	pop    esi
  aad290:	81 c4 30 04 00 00    	add    esp,0x430
  aad296:	c3                   	ret
