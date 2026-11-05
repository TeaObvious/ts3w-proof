# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00567330, 0x005673be); analyst name Animation_ClearPendingSequence.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00567330 <.text+0x166330>:
  567330:	83 ec 0c             	sub    esp,0xc
  567333:	53                   	push   ebx
  567334:	56                   	push   esi
  567335:	8b d9                	mov    ebx,ecx
  567337:	8d 73 30             	lea    esi,[ebx+0x30]
  56733a:	39 36                	cmp    DWORD PTR [esi],esi
  56733c:	57                   	push   edi
  56733d:	74 76                	je     0x5673b5
  56733f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  567343:	33 c0                	xor    eax,eax
  567345:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  567349:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  56734d:	8d 44 24 0c          	lea    eax,[esp+0xc]
  567351:	8b c8                	mov    ecx,eax
  567353:	52                   	push   edx
  567354:	51                   	push   ecx
  567355:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  567359:	8b cc                	mov    ecx,esp
  56735b:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  56735f:	8b 06                	mov    eax,DWORD PTR [esi]
  567361:	51                   	push   ecx
  567362:	c7 44 24 20 a8 2a fc 00 	mov    DWORD PTR [esp+0x20],0xfc2aa8
  56736a:	89 31                	mov    DWORD PTR [ecx],esi
  56736c:	8b cc                	mov    ecx,esp
  56736e:	89 01                	mov    DWORD PTR [ecx],eax
  567370:	8d 44 24 18          	lea    eax,[esp+0x18]
  567374:	50                   	push   eax
  567375:	8b c8                	mov    ecx,eax
  567377:	e8 24 fb ff ff       	call   0x566ea0
  56737c:	8b ce                	mov    ecx,esi
  56737e:	e8 7d cc 01 00       	call   0x584000
  567383:	89 36                	mov    DWORD PTR [esi],esi
  567385:	89 76 04             	mov    DWORD PTR [esi+0x4],esi
  567388:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  56738c:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  567390:	3b f1                	cmp    esi,ecx
  567392:	74 18                	je     0x5673ac
  567394:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  567398:	57                   	push   edi
  567399:	53                   	push   ebx
  56739a:	8d 4e 08             	lea    ecx,[esi+0x8]
  56739d:	e8 6e f6 ff ff       	call   0x566a10
  5673a2:	8b 36                	mov    esi,DWORD PTR [esi]
  5673a4:	8d 54 24 0c          	lea    edx,[esp+0xc]
  5673a8:	3b f2                	cmp    esi,edx
  5673aa:	75 ec                	jne    0x567398
  5673ac:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  5673b0:	e8 4b cc 01 00       	call   0x584000
  5673b5:	5f                   	pop    edi
  5673b6:	5e                   	pop    esi
  5673b7:	5b                   	pop    ebx
  5673b8:	83 c4 0c             	add    esp,0xc
  5673bb:	c2 04 00             	ret    0x4
