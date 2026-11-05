# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009343d0, 0x00934461); analyst name Object_InitializeComponents.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009343d0 <.text+0x5333d0>:
  9343d0:	53                   	push   ebx
  9343d1:	56                   	push   esi
  9343d2:	8b f1                	mov    esi,ecx
  9343d4:	57                   	push   edi
  9343d5:	8b 7e 2c             	mov    edi,DWORD PTR [esi+0x2c]
  9343d8:	85 ff                	test   edi,edi
  9343da:	74 65                	je     0x934441
  9343dc:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  9343e0:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  9343e3:	8b c7                	mov    eax,edi
  9343e5:	f7 d8                	neg    eax
  9343e7:	23 c7                	and    eax,edi
  9343e9:	85 c8                	test   eax,ecx
  9343eb:	74 3f                	je     0x93442c
  9343ed:	83 c0 ff             	add    eax,0xffffffff
  9343f0:	23 c1                	and    eax,ecx
  9343f2:	8b c8                	mov    ecx,eax
  9343f4:	d1 e9                	shr    ecx,1
  9343f6:	81 e1 55 55 55 55    	and    ecx,0x55555555
  9343fc:	2b c1                	sub    eax,ecx
  9343fe:	8b c8                	mov    ecx,eax
  934400:	c1 e9 02             	shr    ecx,0x2
  934403:	81 e1 33 33 33 33    	and    ecx,0x33333333
  934409:	25 33 33 33 33       	and    eax,0x33333333
  93440e:	03 c8                	add    ecx,eax
  934410:	8b d1                	mov    edx,ecx
  934412:	c1 ea 04             	shr    edx,0x4
  934415:	03 d1                	add    edx,ecx
  934417:	81 e2 0f 0f 0f 0f    	and    edx,0xf0f0f0f
  93441d:	69 d2 01 01 01 01    	imul   edx,edx,0x1010101
  934423:	c1 ea 18             	shr    edx,0x18
  934426:	8b 4c 96 34          	mov    ecx,DWORD PTR [esi+edx*4+0x34]
  93442a:	eb 02                	jmp    0x93442e
  93442c:	33 c9                	xor    ecx,ecx
  93442e:	8b 01                	mov    eax,DWORD PTR [ecx]
  934430:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  934433:	53                   	push   ebx
  934434:	ff d2                	call   edx
  934436:	84 c0                	test   al,al
  934438:	74 1f                	je     0x934459
  93443a:	8d 47 ff             	lea    eax,[edi-0x1]
  93443d:	23 f8                	and    edi,eax
  93443f:	75 9f                	jne    0x9343e0
  934441:	6a 00                	push   0x0
  934443:	56                   	push   esi
  934444:	6a 00                	push   0x0
  934446:	e8 75 12 00 00       	call   0x9356c0
  93444b:	83 c4 0c             	add    esp,0xc
  93444e:	5f                   	pop    edi
  93444f:	84 c0                	test   al,al
  934451:	5e                   	pop    esi
  934452:	0f 95 c0             	setne  al
  934455:	5b                   	pop    ebx
  934456:	c2 04 00             	ret    0x4
  934459:	5f                   	pop    edi
  93445a:	5e                   	pop    esi
  93445b:	32 c0                	xor    al,al
  93445d:	5b                   	pop    ebx
  93445e:	c2 04 00             	ret    0x4
