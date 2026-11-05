# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074b600,0x0074b626); analyst name RouteManager_AddPoolOrPlatformPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b600 <.text+0x34a600>:
  74b600:	56                   	push   esi
  74b601:	33 f6                	xor    esi,esi
  74b603:	e8 e8 d6 0d 00       	call   0x828cf0
  74b608:	85 c0                	test   eax,eax
  74b60a:	74 13                	je     0x74b61f
  74b60c:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  74b610:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  74b614:	51                   	push   ecx
  74b615:	52                   	push   edx
  74b616:	8b c8                	mov    ecx,eax
  74b618:	e8 63 3b 0e 00       	call   0x82f180
  74b61d:	8b f0                	mov    esi,eax
  74b61f:	85 f6                	test   esi,esi
  74b621:	0f 97 c0             	seta   al
  74b624:	5e                   	pop    esi
  74b625:	c3                   	ret
