# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00594960 <.text+0x193960>:
  594960:	56                   	push   esi
  594961:	57                   	push   edi
  594962:	8b f1                	mov    esi,ecx
  594964:	8d be d0 00 00 00    	lea    edi,[esi+0xd0]
  59496a:	57                   	push   edi
  59496b:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  594971:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  594977:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
  59497a:	8d 51 50             	lea    edx,[ecx+0x50]
  59497d:	3b 50 20             	cmp    edx,DWORD PTR [eax+0x20]
  594980:	74 1d                	je     0x59499f
  594982:	85 c9                	test   ecx,ecx
  594984:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
  594987:	74 22                	je     0x5949ab
  594989:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  59498d:	50                   	push   eax
  59498e:	e8 dd f4 ff ff       	call   0x593e70
  594993:	57                   	push   edi
  594994:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  59499a:	5f                   	pop    edi
  59499b:	5e                   	pop    esi
  59499c:	c2 04 00             	ret    0x4
  59499f:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  5949a3:	51                   	push   ecx
  5949a4:	8b c8                	mov    ecx,eax
  5949a6:	e8 b5 fd ff ff       	call   0x594760
  5949ab:	57                   	push   edi
  5949ac:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  5949b2:	5f                   	pop    edi
  5949b3:	5e                   	pop    esi
  5949b4:	c2 04 00             	ret    0x4
