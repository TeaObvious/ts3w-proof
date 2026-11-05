# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ecaaa0 <.text+0xac9aa0>:
  ecaaa0:	56                   	push   esi
  ecaaa1:	57                   	push   edi
  ecaaa2:	8b f9                	mov    edi,ecx
  ecaaa4:	e8 77 56 b1 ff       	call   0x9e0120
  ecaaa9:	8b f0                	mov    esi,eax
  ecaaab:	85 f6                	test   esi,esi
  ecaaad:	74 18                	je     0xecaac7
  ecaaaf:	8b ce                	mov    ecx,esi
  ecaab1:	e8 9a 00 b1 ff       	call   0x9dab50
  ecaab6:	84 c0                	test   al,al
  ecaab8:	74 0d                	je     0xecaac7
  ecaaba:	57                   	push   edi
  ecaabb:	68 30 a8 ec 00       	push   0xeca830
  ecaac0:	8b ce                	mov    ecx,esi
  ecaac2:	e8 39 1c b1 ff       	call   0x9dc700
  ecaac7:	e8 a4 d6 81 ff       	call   0x6e8170
  ecaacc:	8b f0                	mov    esi,eax
  ecaace:	85 f6                	test   esi,esi
  ecaad0:	74 07                	je     0xecaad9
  ecaad2:	8b ce                	mov    ecx,esi
  ecaad4:	e8 27 0f 82 ff       	call   0x6eba00
  ecaad9:	83 3d 30 25 1d 01 00 	cmp    DWORD PTR ds:0x11d2530,0x0
  ecaae0:	74 09                	je     0xecaaeb
  ecaae2:	6a 01                	push   0x1
  ecaae4:	8b cf                	mov    ecx,edi
  ecaae6:	e8 a5 fa ff ff       	call   0xeca590
  ecaaeb:	85 f6                	test   esi,esi
  ecaaed:	74 07                	je     0xecaaf6
  ecaaef:	8b ce                	mov    ecx,esi
  ecaaf1:	e8 4a db 81 ff       	call   0x6e8640
  ecaaf6:	5f                   	pop    edi
  ecaaf7:	5e                   	pop    esi
  ecaaf8:	e9 83 e7 6b ff       	jmp    0x589280
