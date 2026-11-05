# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0064f170,0x0064f200); analyst name Portal_SelectDirectionalPosition.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0064f170 <.text+0x24e170>:
  64f170:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  64f174:	85 c0                	test   eax,eax
  64f176:	53                   	push   ebx
  64f177:	55                   	push   ebp
  64f178:	56                   	push   esi
  64f179:	57                   	push   edi
  64f17a:	8b d9                	mov    ebx,ecx
  64f17c:	74 40                	je     0x64f1be
  64f17e:	8b 00                	mov    eax,DWORD PTR [eax]
  64f180:	50                   	push   eax
  64f181:	e8 ea 57 fd ff       	call   0x624970
  64f186:	8b 4b 78             	mov    ecx,DWORD PTR [ebx+0x78]
  64f189:	8b 73 7c             	mov    esi,DWORD PTR [ebx+0x7c]
  64f18c:	23 c8                	and    ecx,eax
  64f18e:	83 c4 04             	add    esp,0x4
  64f191:	23 f2                	and    esi,edx
  64f193:	3b c8                	cmp    ecx,eax
  64f195:	75 04                	jne    0x64f19b
  64f197:	3b f2                	cmp    esi,edx
  64f199:	74 23                	je     0x64f1be
  64f19b:	8b 4b 5c             	mov    ecx,DWORD PTR [ebx+0x5c]
  64f19e:	8b 6b 60             	mov    ebp,DWORD PTR [ebx+0x60]
  64f1a1:	3b cd                	cmp    ecx,ebp
  64f1a3:	74 19                	je     0x64f1be
  64f1a5:	8b 71 30             	mov    esi,DWORD PTR [ecx+0x30]
  64f1a8:	8b 79 34             	mov    edi,DWORD PTR [ecx+0x34]
  64f1ab:	23 f0                	and    esi,eax
  64f1ad:	23 fa                	and    edi,edx
  64f1af:	3b f0                	cmp    esi,eax
  64f1b1:	75 04                	jne    0x64f1b7
  64f1b3:	3b fa                	cmp    edi,edx
  64f1b5:	74 1b                	je     0x64f1d2
  64f1b7:	83 c1 38             	add    ecx,0x38
  64f1ba:	3b cd                	cmp    ecx,ebp
  64f1bc:	75 e7                	jne    0x64f1a5
  64f1be:	80 7c 24 18 00       	cmp    BYTE PTR [esp+0x18],0x0
  64f1c3:	8d 43 14             	lea    eax,[ebx+0x14]
  64f1c6:	75 03                	jne    0x64f1cb
  64f1c8:	8d 43 20             	lea    eax,[ebx+0x20]
  64f1cb:	5f                   	pop    edi
  64f1cc:	5e                   	pop    esi
  64f1cd:	5d                   	pop    ebp
  64f1ce:	5b                   	pop    ebx
  64f1cf:	c2 0c 00             	ret    0xc
  64f1d2:	80 7c 24 18 00       	cmp    BYTE PTR [esp+0x18],0x0
  64f1d7:	74 13                	je     0x64f1ec
  64f1d9:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  64f1de:	74 03                	je     0x64f1e3
  64f1e0:	83 c1 24             	add    ecx,0x24
  64f1e3:	5f                   	pop    edi
  64f1e4:	5e                   	pop    esi
  64f1e5:	5d                   	pop    ebp
  64f1e6:	8b c1                	mov    eax,ecx
  64f1e8:	5b                   	pop    ebx
  64f1e9:	c2 0c 00             	ret    0xc
  64f1ec:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  64f1f1:	8d 41 0c             	lea    eax,[ecx+0xc]
  64f1f4:	75 d5                	jne    0x64f1cb
  64f1f6:	5f                   	pop    edi
  64f1f7:	5e                   	pop    esi
  64f1f8:	5d                   	pop    ebp
  64f1f9:	8d 41 18             	lea    eax,[ecx+0x18]
  64f1fc:	5b                   	pop    ebx
  64f1fd:	c2 0c 00             	ret    0xc
