# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068f140 <.text+0x28e140>:
  68f140:	56                   	push   esi
  68f141:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  68f145:	57                   	push   edi
  68f146:	8b f9                	mov    edi,ecx
  68f148:	3b 77 30             	cmp    esi,DWORD PTR [edi+0x30]
  68f14b:	74 4b                	je     0x68f198
  68f14d:	85 f6                	test   esi,esi
  68f14f:	74 1a                	je     0x68f16b
  68f151:	8b 06                	mov    eax,DWORD PTR [esi]
  68f153:	8b 10                	mov    edx,DWORD PTR [eax]
  68f155:	8b ce                	mov    ecx,esi
  68f157:	ff d2                	call   edx
  68f159:	8b 07                	mov    eax,DWORD PTR [edi]
  68f15b:	85 c0                	test   eax,eax
  68f15d:	74 0c                	je     0x68f16b
  68f15f:	8d 4e 28             	lea    ecx,[esi+0x28]
  68f162:	51                   	push   ecx
  68f163:	8d 48 28             	lea    ecx,[eax+0x28]
  68f166:	e8 15 f9 04 00       	call   0x6dea80
  68f16b:	83 7f 30 00          	cmp    DWORD PTR [edi+0x30],0x0
  68f16f:	74 24                	je     0x68f195
  68f171:	8b 0f                	mov    ecx,DWORD PTR [edi]
  68f173:	85 c9                	test   ecx,ecx
  68f175:	74 14                	je     0x68f18b
  68f177:	85 f6                	test   esi,esi
  68f179:	74 05                	je     0x68f180
  68f17b:	8d 46 28             	lea    eax,[esi+0x28]
  68f17e:	eb 02                	jmp    0x68f182
  68f180:	33 c0                	xor    eax,eax
  68f182:	50                   	push   eax
  68f183:	83 c1 28             	add    ecx,0x28
  68f186:	e8 75 f9 04 00       	call   0x6deb00
  68f18b:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
  68f18e:	8b 11                	mov    edx,DWORD PTR [ecx]
  68f190:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  68f193:	ff d0                	call   eax
  68f195:	89 77 30             	mov    DWORD PTR [edi+0x30],esi
  68f198:	5f                   	pop    edi
  68f199:	5e                   	pop    esi
  68f19a:	c2 04 00             	ret    0x4
