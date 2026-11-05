# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0059d950 <.text+0x19c950>:
  59d950:	56                   	push   esi
  59d951:	57                   	push   edi
  59d952:	8b f9                	mov    edi,ecx
  59d954:	c7 07 b4 eb fd 00    	mov    DWORD PTR [edi],0xfdebb4
  59d95a:	8d 77 10             	lea    esi,[edi+0x10]
  59d95d:	c7 05 08 f3 1c 01 00 	mov    DWORD PTR ds:0x11cf308,0x0
  59d964:	00 00 00 
  59d967:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59d96a:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59d96c:	50                   	push   eax
  59d96d:	51                   	push   ecx
  59d96e:	8b ce                	mov    ecx,esi
  59d970:	e8 4b fe ff ff       	call   0x59d7c0
  59d975:	8b 36                	mov    esi,DWORD PTR [esi]
  59d977:	85 f6                	test   esi,esi
  59d979:	74 09                	je     0x59d984
  59d97b:	56                   	push   esi
  59d97c:	e8 5f 6b f4 ff       	call   0x4e44e0
  59d981:	83 c4 04             	add    esp,0x4
  59d984:	8b cf                	mov    ecx,edi
  59d986:	e8 c5 1a 00 00       	call   0x59f450
  59d98b:	f6 44 24 0c 01       	test   BYTE PTR [esp+0xc],0x1
  59d990:	74 09                	je     0x59d99b
  59d992:	57                   	push   edi
  59d993:	e8 48 6b f4 ff       	call   0x4e44e0
  59d998:	83 c4 04             	add    esp,0x4
  59d99b:	8b c7                	mov    eax,edi
  59d99d:	5f                   	pop    edi
  59d99e:	5e                   	pop    esi
  59d99f:	c2 04 00             	ret    0x4
