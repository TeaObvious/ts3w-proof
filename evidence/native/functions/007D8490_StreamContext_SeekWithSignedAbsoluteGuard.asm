# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d8490 <.text+0x3d7490>:
  7d8490:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7d8494:	85 c0                	test   eax,eax
  7d8496:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  7d849a:	7d 0a                	jge    0x7d84a6
  7d849c:	85 d2                	test   edx,edx
  7d849e:	75 06                	jne    0x7d84a6
  7d84a0:	88 51 14             	mov    BYTE PTR [ecx+0x14],dl
  7d84a3:	c2 08 00             	ret    0x8
  7d84a6:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  7d84a9:	56                   	push   esi
  7d84aa:	8b 31                	mov    esi,DWORD PTR [ecx]
  7d84ac:	52                   	push   edx
  7d84ad:	50                   	push   eax
  7d84ae:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  7d84b1:	ff d0                	call   eax
  7d84b3:	5e                   	pop    esi
  7d84b4:	c2 08 00             	ret    0x8
