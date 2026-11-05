# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0093a060,0x0093a0e9); analyst name ParameterBuilder_AppendResourceKey16.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093a060 <.text+0x539060>:
  93a060:	83 ec 10             	sub    esp,0x10
  93a063:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  93a067:	53                   	push   ebx
  93a068:	56                   	push   esi
  93a069:	8b f1                	mov    esi,ecx
  93a06b:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  93a06e:	2b 46 18             	sub    eax,DWORD PTR [esi+0x18]
  93a071:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  93a074:	57                   	push   edi
  93a075:	8d 7e 18             	lea    edi,[esi+0x18]
  93a078:	c1 f8 02             	sar    eax,0x2
  93a07b:	03 c0                	add    eax,eax
  93a07d:	03 c0                	add    eax,eax
  93a07f:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  93a082:	bb 10 00 00 00       	mov    ebx,0x10
  93a087:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  93a08b:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  93a08f:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  93a093:	c7 44 24 10 03 00 00 	mov    DWORD PTR [esp+0x10],0x3
  93a09a:	00 
  93a09b:	73 1d                	jae    0x93a0ba
  93a09d:	85 c9                	test   ecx,ecx
  93a09f:	55                   	push   ebp
  93a0a0:	8d 69 10             	lea    ebp,[ecx+0x10]
  93a0a3:	89 6e 04             	mov    DWORD PTR [esi+0x4],ebp
  93a0a6:	5d                   	pop    ebp
  93a0a7:	74 1e                	je     0x93a0c7
  93a0a9:	89 11                	mov    DWORD PTR [ecx],edx
  93a0ab:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  93a0af:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  93a0b2:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  93a0b5:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  93a0b8:	eb 0d                	jmp    0x93a0c7
  93a0ba:	8d 44 24 0c          	lea    eax,[esp+0xc]
  93a0be:	50                   	push   eax
  93a0bf:	51                   	push   ecx
  93a0c0:	8b ce                	mov    ecx,esi
  93a0c2:	e8 59 f0 ba ff       	call   0x4e9120
  93a0c7:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  93a0cb:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  93a0cf:	51                   	push   ecx
  93a0d0:	8d 50 10             	lea    edx,[eax+0x10]
  93a0d3:	52                   	push   edx
  93a0d4:	50                   	push   eax
  93a0d5:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  93a0d8:	50                   	push   eax
  93a0d9:	8b cf                	mov    ecx,edi
  93a0db:	e8 00 fc ff ff       	call   0x939ce0
  93a0e0:	5f                   	pop    edi
  93a0e1:	5e                   	pop    esi
  93a0e2:	5b                   	pop    ebx
  93a0e3:	83 c4 10             	add    esp,0x10
  93a0e6:	c2 08 00             	ret    0x8
