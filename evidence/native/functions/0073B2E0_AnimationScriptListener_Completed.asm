# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073b2e0, 0x0073b3e2); analyst name AnimationScriptListener_Completed.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073b2e0 <.text+0x33a2e0>:
  73b2e0:	83 ec 48             	sub    esp,0x48
  73b2e3:	53                   	push   ebx
  73b2e4:	56                   	push   esi
  73b2e5:	57                   	push   edi
  73b2e6:	8b 7c 24 58          	mov    edi,DWORD PTR [esp+0x58]
  73b2ea:	33 db                	xor    ebx,ebx
  73b2ec:	8b f1                	mov    esi,ecx
  73b2ee:	8b 0f                	mov    ecx,DWORD PTR [edi]
  73b2f0:	3b cb                	cmp    ecx,ebx
  73b2f2:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  73b2f6:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  73b2fa:	74 34                	je     0x73b330
  73b2fc:	8d 46 fc             	lea    eax,[esi-0x4]
  73b2ff:	f7 d8                	neg    eax
  73b301:	1b c0                	sbb    eax,eax
  73b303:	23 c6                	and    eax,esi
  73b305:	50                   	push   eax
  73b306:	83 c1 0c             	add    ecx,0xc
  73b309:	e8 82 b6 e2 ff       	call   0x566990
  73b30e:	8b 07                	mov    eax,DWORD PTR [edi]
  73b310:	8b 48 1c             	mov    ecx,DWORD PTR [eax+0x1c]
  73b313:	3b cb                	cmp    ecx,ebx
  73b315:	74 19                	je     0x73b330
  73b317:	8b 11                	mov    edx,DWORD PTR [ecx]
  73b319:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  73b31c:	ff d0                	call   eax
  73b31e:	3b c3                	cmp    eax,ebx
  73b320:	74 0e                	je     0x73b330
  73b322:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  73b325:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  73b329:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  73b32c:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  73b330:	e8 5b e0 02 00       	call   0x769390
  73b335:	8b f8                	mov    edi,eax
  73b337:	3b fb                	cmp    edi,ebx
  73b339:	0f 84 9a 00 00 00    	je     0x73b3d9
  73b33f:	55                   	push   ebp
  73b340:	8d 44 24 10          	lea    eax,[esp+0x10]
  73b344:	bd f4 a6 fb 00       	mov    ebp,0xfba6f4
  73b349:	50                   	push   eax
  73b34a:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  73b34e:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  73b352:	66 89 5c 24 24       	mov    WORD PTR [esp+0x24],bx
  73b357:	66 89 5c 24 26       	mov    WORD PTR [esp+0x26],bx
  73b35c:	e8 bf ac db ff       	call   0x4f6020
  73b361:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  73b365:	51                   	push   ecx
  73b366:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  73b36a:	89 6c 24 3c          	mov    DWORD PTR [esp+0x3c],ebp
  73b36e:	66 89 5c 24 44       	mov    WORD PTR [esp+0x44],bx
  73b373:	66 89 5c 24 46       	mov    WORD PTR [esp+0x46],bx
  73b378:	e8 33 b1 db ff       	call   0x4f64b0
  73b37d:	f6 44 24 20 04       	test   BYTE PTR [esp+0x20],0x4
  73b382:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  73b386:	74 0a                	je     0x73b392
  73b388:	53                   	push   ebx
  73b389:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  73b38d:	e8 ce a3 db ff       	call   0x4f5760
  73b392:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  73b395:	8b 17                	mov    edx,DWORD PTR [edi]
  73b397:	8b 92 34 01 00 00    	mov    edx,DWORD PTR [edx+0x134]
  73b39d:	6a 01                	push   0x1
  73b39f:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  73b3a3:	50                   	push   eax
  73b3a4:	51                   	push   ecx
  73b3a5:	8d 44 24 24          	lea    eax,[esp+0x24]
  73b3a9:	50                   	push   eax
  73b3aa:	8b cf                	mov    ecx,edi
  73b3ac:	ff d2                	call   edx
  73b3ae:	f6 44 24 20 04       	test   BYTE PTR [esp+0x20],0x4
  73b3b3:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  73b3b7:	74 0a                	je     0x73b3c3
  73b3b9:	53                   	push   ebx
  73b3ba:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  73b3be:	e8 9d a3 db ff       	call   0x4f5760
  73b3c3:	f6 44 24 40 04       	test   BYTE PTR [esp+0x40],0x4
  73b3c8:	89 6c 24 38          	mov    DWORD PTR [esp+0x38],ebp
  73b3cc:	5d                   	pop    ebp
  73b3cd:	74 0a                	je     0x73b3d9
  73b3cf:	53                   	push   ebx
  73b3d0:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  73b3d4:	e8 87 a3 db ff       	call   0x4f5760
  73b3d9:	5f                   	pop    edi
  73b3da:	5e                   	pop    esi
  73b3db:	5b                   	pop    ebx
  73b3dc:	83 c4 48             	add    esp,0x48
  73b3df:	c2 08 00             	ret    0x8
