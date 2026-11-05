# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00946280, 0x009462b9); analyst name FootprintPolygonVector_Clear.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00946280 <.text+0x545280>:
  946280:	53                   	push   ebx
  946281:	56                   	push   esi
  946282:	8b d9                	mov    ebx,ecx
  946284:	8b 33                	mov    esi,DWORD PTR [ebx]
  946286:	57                   	push   edi
  946287:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  94628a:	3b f7                	cmp    esi,edi
  94628c:	73 22                	jae    0x9462b0
  94628e:	8b ff                	mov    edi,edi
  946290:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  946293:	85 c0                	test   eax,eax
  946295:	74 09                	je     0x9462a0
  946297:	50                   	push   eax
  946298:	e8 43 e2 b9 ff       	call   0x4e44e0
  94629d:	83 c4 04             	add    esp,0x4
  9462a0:	83 c6 40             	add    esi,0x40
  9462a3:	3b f7                	cmp    esi,edi
  9462a5:	72 e9                	jb     0x946290
  9462a7:	8b 03                	mov    eax,DWORD PTR [ebx]
  9462a9:	5f                   	pop    edi
  9462aa:	5e                   	pop    esi
  9462ab:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  9462ae:	5b                   	pop    ebx
  9462af:	c3                   	ret
  9462b0:	5f                   	pop    edi
  9462b1:	8b ce                	mov    ecx,esi
  9462b3:	5e                   	pop    esi
  9462b4:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  9462b7:	5b                   	pop    ebx
  9462b8:	c3                   	ret
