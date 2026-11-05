# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00ab32d0..00ab330d; Lot_SendManagerMessage
  ab32d0:	56                   	push   esi
  ab32d1:	8b f1                	mov    esi,ecx
  ab32d3:	80 be c9 00 00 00 00 	cmp    BYTE PTR [esi+0xc9],0x0
  ab32da:	75 2e                	jne    0xab330a
  ab32dc:	83 be 64 03 00 00 00 	cmp    DWORD PTR [esi+0x364],0x0
  ab32e3:	74 25                	je     0xab330a
  ab32e5:	e8 06 92 99 ff       	call   0x44c4f0
  ab32ea:	85 c0                	test   eax,eax
  ab32ec:	74 1c                	je     0xab330a
  ab32ee:	8b 8e 64 03 00 00    	mov    ecx,DWORD PTR [esi+0x364]
  ab32f4:	8b 10                	mov    edx,DWORD PTR [eax]
  ab32f6:	8b 52 1c             	mov    edx,DWORD PTR [edx+0x1c]
  ab32f9:	51                   	push   ecx
  ab32fa:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  ab32fe:	6a 00                	push   0x0
  ab3300:	51                   	push   ecx
  ab3301:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  ab3305:	51                   	push   ecx
  ab3306:	8b c8                	mov    ecx,eax
  ab3308:	ff d2                	call   edx
  ab330a:	5e                   	pop    esi
  ab330b:	c2 08 00             	ret    0x8
