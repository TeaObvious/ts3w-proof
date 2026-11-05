# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942750 <.text+0x541750>:
  942750:	56                   	push   esi
  942751:	57                   	push   edi
  942752:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  942756:	8b f1                	mov    esi,ecx
  942758:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  94275b:	8d 47 14             	lea    eax,[edi+0x14]
  94275e:	3b c1                	cmp    eax,ecx
  942760:	73 0b                	jae    0x94276d
  942762:	57                   	push   edi
  942763:	51                   	push   ecx
  942764:	50                   	push   eax
  942765:	e8 46 fd ff ff       	call   0x9424b0
  94276a:	83 c4 0c             	add    esp,0xc
  94276d:	83 46 04 ec          	add    DWORD PTR [esi+0x4],0xffffffec
  942771:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  942774:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  942777:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  94277a:	2b c8                	sub    ecx,eax
  94277c:	83 f9 01             	cmp    ecx,0x1
  94277f:	7e 0d                	jle    0x94278e
  942781:	85 c0                	test   eax,eax
  942783:	74 09                	je     0x94278e
  942785:	50                   	push   eax
  942786:	e8 55 1d ba ff       	call   0x4e44e0
  94278b:	83 c4 04             	add    esp,0x4
  94278e:	8b c7                	mov    eax,edi
  942790:	5f                   	pop    edi
  942791:	5e                   	pop    esi
  942792:	c2 04 00             	ret    0x4
