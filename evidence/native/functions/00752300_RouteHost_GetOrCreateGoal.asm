# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00752300, 0x0075237b); analyst name RouteHost_GetOrCreateGoal.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00752300 <.text+0x351300>:
  752300:	57                   	push   edi
  752301:	8b f9                	mov    edi,ecx
  752303:	83 bf 44 01 00 00 00 	cmp    DWORD PTR [edi+0x144],0x0
  75230a:	75 67                	jne    0x752373
  75230c:	53                   	push   ebx
  75230d:	56                   	push   esi
  75230e:	6a 00                	push   0x0
  752310:	6a 00                	push   0x0
  752312:	6a 00                	push   0x0
  752314:	6a 00                	push   0x0
  752316:	68 b8 54 00 01       	push   0x10054b8
  75231b:	6a 50                	push   0x50
  75231d:	e8 de 21 d9 ff       	call   0x4e4500
  752322:	83 c4 18             	add    esp,0x18
  752325:	85 c0                	test   eax,eax
  752327:	74 0b                	je     0x752334
  752329:	8b c8                	mov    ecx,eax
  75232b:	e8 10 fe ff ff       	call   0x752140
  752330:	8b f0                	mov    esi,eax
  752332:	eb 02                	jmp    0x752336
  752334:	33 f6                	xor    esi,esi
  752336:	8b 9f 44 01 00 00    	mov    ebx,DWORD PTR [edi+0x144]
  75233c:	3b f3                	cmp    esi,ebx
  75233e:	74 1f                	je     0x75235f
  752340:	85 f6                	test   esi,esi
  752342:	74 08                	je     0x75234c
  752344:	8b 06                	mov    eax,DWORD PTR [esi]
  752346:	8b 10                	mov    edx,DWORD PTR [eax]
  752348:	8b ce                	mov    ecx,esi
  75234a:	ff d2                	call   edx
  75234c:	85 db                	test   ebx,ebx
  75234e:	89 b7 44 01 00 00    	mov    DWORD PTR [edi+0x144],esi
  752354:	74 09                	je     0x75235f
  752356:	8b 03                	mov    eax,DWORD PTR [ebx]
  752358:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  75235b:	8b cb                	mov    ecx,ebx
  75235d:	ff d2                	call   edx
  75235f:	8b 87 44 01 00 00    	mov    eax,DWORD PTR [edi+0x144]
  752365:	8b 4f 40             	mov    ecx,DWORD PTR [edi+0x40]
  752368:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  75236b:	8b 57 44             	mov    edx,DWORD PTR [edi+0x44]
  75236e:	5e                   	pop    esi
  75236f:	89 50 44             	mov    DWORD PTR [eax+0x44],edx
  752372:	5b                   	pop    ebx
  752373:	8b 87 44 01 00 00    	mov    eax,DWORD PTR [edi+0x144]
  752379:	5f                   	pop    edi
  75237a:	c3                   	ret
