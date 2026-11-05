# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00726630 <.text+0x325630>:
  726630:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  726634:	8b d0                	mov    edx,eax
  726636:	c1 ea 1c             	shr    edx,0x1c
  726639:	83 fa 04             	cmp    edx,0x4
  72663c:	72 05                	jb     0x726643
  72663e:	33 c0                	xor    eax,eax
  726640:	c2 04 00             	ret    0x4
  726643:	25 ff ff ff 0f       	and    eax,0xfffffff
  726648:	83 e8 01             	sub    eax,0x1
  72664b:	56                   	push   esi
  72664c:	8b f0                	mov    esi,eax
  72664e:	8d 04 52             	lea    eax,[edx+edx*2]
  726651:	3b 74 81 2c          	cmp    esi,DWORD PTR [ecx+eax*4+0x2c]
  726655:	57                   	push   edi
  726656:	8d 3c 81             	lea    edi,[ecx+eax*4]
  726659:	73 22                	jae    0x72667d
  72665b:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
  72665e:	8b 04 b0             	mov    eax,DWORD PTR [eax+esi*4]
  726661:	a8 01                	test   al,0x1
  726663:	74 25                	je     0x72668a
  726665:	83 fa 01             	cmp    edx,0x1
  726668:	75 07                	jne    0x726671
  72666a:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
  72666d:	03 c6                	add    eax,esi
  72666f:	eb 02                	jmp    0x726673
  726671:	8b c6                	mov    eax,esi
  726673:	50                   	push   eax
  726674:	e8 a7 fd ff ff       	call   0x726420
  726679:	84 c0                	test   al,al
  72667b:	75 07                	jne    0x726684
  72667d:	5f                   	pop    edi
  72667e:	33 c0                	xor    eax,eax
  726680:	5e                   	pop    esi
  726681:	c2 04 00             	ret    0x4
  726684:	8b 4f 28             	mov    ecx,DWORD PTR [edi+0x28]
  726687:	8b 04 b1             	mov    eax,DWORD PTR [ecx+esi*4]
  72668a:	5f                   	pop    edi
  72668b:	5e                   	pop    esi
  72668c:	c2 04 00             	ret    0x4
