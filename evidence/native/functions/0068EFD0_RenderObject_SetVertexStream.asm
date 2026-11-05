# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068efd0 <.text+0x28dfd0>:
  68efd0:	53                   	push   ebx
  68efd1:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  68efd5:	85 db                	test   ebx,ebx
  68efd7:	56                   	push   esi
  68efd8:	57                   	push   edi
  68efd9:	8b f1                	mov    esi,ecx
  68efdb:	74 09                	je     0x68efe6
  68efdd:	8b 03                	mov    eax,DWORD PTR [ebx]
  68efdf:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  68efe2:	8b cb                	mov    ecx,ebx
  68efe4:	ff d2                	call   edx
  68efe6:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  68efea:	8b 4c be 04          	mov    ecx,DWORD PTR [esi+edi*4+0x4]
  68efee:	85 c9                	test   ecx,ecx
  68eff0:	74 19                	je     0x68f00b
  68eff2:	8b 01                	mov    eax,DWORD PTR [ecx]
  68eff4:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  68eff7:	ff d2                	call   edx
  68eff9:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  68effd:	89 5c be 04          	mov    DWORD PTR [esi+edi*4+0x4],ebx
  68f001:	89 44 be 0c          	mov    DWORD PTR [esi+edi*4+0xc],eax
  68f005:	5f                   	pop    edi
  68f006:	5e                   	pop    esi
  68f007:	5b                   	pop    ebx
  68f008:	c2 0c 00             	ret    0xc
  68f00b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  68f00f:	89 5c be 04          	mov    DWORD PTR [esi+edi*4+0x4],ebx
  68f013:	89 4c be 0c          	mov    DWORD PTR [esi+edi*4+0xc],ecx
  68f017:	5f                   	pop    edi
  68f018:	5e                   	pop    esi
  68f019:	5b                   	pop    ebx
  68f01a:	c2 0c 00             	ret    0xc
