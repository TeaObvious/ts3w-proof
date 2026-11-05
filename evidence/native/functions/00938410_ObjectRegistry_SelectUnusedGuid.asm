# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00938410, 0x00938478); analyst name ObjectRegistry_SelectUnusedGuid.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00938410 <.text+0x537410>:
  938410:	83 ec 08             	sub    esp,0x8
  938413:	53                   	push   ebx
  938414:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  938418:	56                   	push   esi
  938419:	57                   	push   edi
  93841a:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  93841e:	8b c7                	mov    eax,edi
  938420:	0b c3                	or     eax,ebx
  938422:	8b f1                	mov    esi,ecx
  938424:	75 0e                	jne    0x938434
  938426:	e8 75 fc ff ff       	call   0x9380a0
  93842b:	5f                   	pop    edi
  93842c:	5e                   	pop    esi
  93842d:	5b                   	pop    ebx
  93842e:	83 c4 08             	add    esp,0x8
  938431:	c2 08 00             	ret    0x8
  938434:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  938438:	51                   	push   ecx
  938439:	8d 54 24 10          	lea    edx,[esp+0x10]
  93843d:	52                   	push   edx
  93843e:	8d 4e 10             	lea    ecx,[esi+0x10]
  938441:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  938445:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  938449:	e8 d2 f6 ff ff       	call   0x937b20
  93844e:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  938452:	3b 86 34 10 00 00    	cmp    eax,DWORD PTR [esi+0x1034]
  938458:	74 11                	je     0x93846b
  93845a:	85 c0                	test   eax,eax
  93845c:	74 0d                	je     0x93846b
  93845e:	5f                   	pop    edi
  93845f:	5e                   	pop    esi
  938460:	33 c0                	xor    eax,eax
  938462:	33 d2                	xor    edx,edx
  938464:	5b                   	pop    ebx
  938465:	83 c4 08             	add    esp,0x8
  938468:	c2 08 00             	ret    0x8
  93846b:	8b c7                	mov    eax,edi
  93846d:	5f                   	pop    edi
  93846e:	5e                   	pop    esi
  93846f:	8b d3                	mov    edx,ebx
  938471:	5b                   	pop    ebx
  938472:	83 c4 08             	add    esp,0x8
  938475:	c2 08 00             	ret    0x8
