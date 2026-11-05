# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056a170, 0x0056a1c9); analyst name AnimationClipController_LoadResource.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056a170 <.text+0x169170>:
  56a170:	51                   	push   ecx
  56a171:	56                   	push   esi
  56a172:	8b f1                	mov    esi,ecx
  56a174:	e8 07 5d f4 ff       	call   0x4afe80
  56a179:	85 c0                	test   eax,eax
  56a17b:	74 45                	je     0x56a1c2
  56a17d:	8b 10                	mov    edx,DWORD PTR [eax]
  56a17f:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  56a182:	6a 00                	push   0x0
  56a184:	6a 00                	push   0x0
  56a186:	6a 00                	push   0x0
  56a188:	6a 00                	push   0x0
  56a18a:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  56a18e:	51                   	push   ecx
  56a18f:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  56a193:	51                   	push   ecx
  56a194:	8b c8                	mov    ecx,eax
  56a196:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  56a19e:	ff d2                	call   edx
  56a1a0:	84 c0                	test   al,al
  56a1a2:	74 1e                	je     0x56a1c2
  56a1a4:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  56a1a8:	50                   	push   eax
  56a1a9:	8b ce                	mov    ecx,esi
  56a1ab:	e8 e0 fe ff ff       	call   0x56a090
  56a1b0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  56a1b4:	8b 11                	mov    edx,DWORD PTR [ecx]
  56a1b6:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  56a1b9:	ff d0                	call   eax
  56a1bb:	b0 01                	mov    al,0x1
  56a1bd:	5e                   	pop    esi
  56a1be:	59                   	pop    ecx
  56a1bf:	c2 04 00             	ret    0x4
  56a1c2:	32 c0                	xor    al,al
  56a1c4:	5e                   	pop    esi
  56a1c5:	59                   	pop    ecx
  56a1c6:	c2 04 00             	ret    0x4
