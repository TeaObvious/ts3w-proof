# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068f020 <.text+0x28e020>:
  68f020:	56                   	push   esi
  68f021:	57                   	push   edi
  68f022:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  68f026:	85 ff                	test   edi,edi
  68f028:	8b f1                	mov    esi,ecx
  68f02a:	74 09                	je     0x68f035
  68f02c:	8b 07                	mov    eax,DWORD PTR [edi]
  68f02e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  68f031:	8b cf                	mov    ecx,edi
  68f033:	ff d2                	call   edx
  68f035:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  68f038:	85 c9                	test   ecx,ecx
  68f03a:	74 07                	je     0x68f043
  68f03c:	8b 01                	mov    eax,DWORD PTR [ecx]
  68f03e:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  68f041:	ff d2                	call   edx
  68f043:	89 7e 14             	mov    DWORD PTR [esi+0x14],edi
  68f046:	5f                   	pop    edi
  68f047:	5e                   	pop    esi
  68f048:	c2 04 00             	ret    0x4
