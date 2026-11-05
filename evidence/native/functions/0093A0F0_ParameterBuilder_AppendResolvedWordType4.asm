# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0093a0f0,0x0093a186); analyst name ParameterBuilder_AppendResolvedWordType4.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093a0f0 <.text+0x5390f0>:
  93a0f0:	83 ec 10             	sub    esp,0x10
  93a0f3:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  93a0f7:	53                   	push   ebx
  93a0f8:	56                   	push   esi
  93a0f9:	8b 71 1c             	mov    esi,DWORD PTR [ecx+0x1c]
  93a0fc:	2b 71 18             	sub    esi,DWORD PTR [ecx+0x18]
  93a0ff:	57                   	push   edi
  93a100:	8d 79 18             	lea    edi,[ecx+0x18]
  93a103:	c1 fe 02             	sar    esi,0x2
  93a106:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  93a10a:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  93a10d:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  93a110:	ba 04 00 00 00       	mov    edx,0x4
  93a115:	8d 1c b5 00 00 00 00 	lea    ebx,[esi*4+0x0]
  93a11c:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  93a120:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  93a124:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  93a128:	73 21                	jae    0x93a14b
  93a12a:	85 c0                	test   eax,eax
  93a12c:	55                   	push   ebp
  93a12d:	8d 68 10             	lea    ebp,[eax+0x10]
  93a130:	89 69 04             	mov    DWORD PTR [ecx+0x4],ebp
  93a133:	5d                   	pop    ebp
  93a134:	74 24                	je     0x93a15a
  93a136:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  93a13a:	89 08                	mov    DWORD PTR [eax],ecx
  93a13c:	8b ca                	mov    ecx,edx
  93a13e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  93a141:	8b cb                	mov    ecx,ebx
  93a143:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  93a146:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  93a149:	eb 0f                	jmp    0x93a15a
  93a14b:	8d 54 24 0c          	lea    edx,[esp+0xc]
  93a14f:	52                   	push   edx
  93a150:	50                   	push   eax
  93a151:	e8 ca ef ba ff       	call   0x4e9120
  93a156:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  93a15a:	8d 44 24 20          	lea    eax,[esp+0x20]
  93a15e:	c1 ea 02             	shr    edx,0x2
  93a161:	50                   	push   eax
  93a162:	03 d6                	add    edx,esi
  93a164:	52                   	push   edx
  93a165:	8b cf                	mov    ecx,edi
  93a167:	c7 44 24 28 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
  93a16e:	00 
  93a16f:	e8 ec 9f b9 ff       	call   0x4d4160
  93a174:	8b 0f                	mov    ecx,DWORD PTR [edi]
  93a176:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  93a17a:	5f                   	pop    edi
  93a17b:	5e                   	pop    esi
  93a17c:	89 14 0b             	mov    DWORD PTR [ebx+ecx*1],edx
  93a17f:	5b                   	pop    ebx
  93a180:	83 c4 10             	add    esp,0x10
  93a183:	c2 08 00             	ret    0x8
