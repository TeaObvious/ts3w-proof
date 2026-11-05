# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004ddab0 <.text+0xdcab0>:
  4ddab0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  4ddab4:	8b 01                	mov    eax,DWORD PTR [ecx]
  4ddab6:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  4ddab9:	56                   	push   esi
  4ddaba:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  4ddabe:	6a 08                	push   0x8
  4ddac0:	56                   	push   esi
  4ddac1:	ff d2                	call   edx
  4ddac3:	83 f8 08             	cmp    eax,0x8
  4ddac6:	75 1f                	jne    0x4ddae7
  4ddac8:	83 7c 24 10 01       	cmp    DWORD PTR [esp+0x10],0x1
  4ddacd:	74 14                	je     0x4ddae3
  4ddacf:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4ddad2:	8b 0e                	mov    ecx,DWORD PTR [esi]
  4ddad4:	50                   	push   eax
  4ddad5:	51                   	push   ecx
  4ddad6:	e8 35 fc ff ff       	call   0x4dd710
  4ddadb:	83 c4 08             	add    esp,0x8
  4ddade:	89 06                	mov    DWORD PTR [esi],eax
  4ddae0:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  4ddae3:	b0 01                	mov    al,0x1
  4ddae5:	5e                   	pop    esi
  4ddae6:	c3                   	ret
  4ddae7:	32 c0                	xor    al,al
  4ddae9:	5e                   	pop    esi
  4ddaea:	c3                   	ret
