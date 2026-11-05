# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00962400, 0x0096247f).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00962400 <.text+0x561400>:
  962400:	56                   	push   esi
  962401:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  962405:	8b d1                	mov    edx,ecx
  962407:	57                   	push   edi
  962408:	8d ba 00 04 00 00    	lea    edi,[edx+0x400]
  96240e:	b9 38 00 00 00       	mov    ecx,0x38
  962413:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  962415:	5f                   	pop    edi
  962416:	8d 42 08             	lea    eax,[edx+0x8]
  962419:	8d 8a 08 04 00 00    	lea    ecx,[edx+0x408]
  96241f:	ba 04 00 00 00       	mov    edx,0x4
  962424:	5e                   	pop    esi
  962425:	eb 09                	jmp    0x962430
  962427:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  96242e:	8b ff                	mov    edi,edi
  962430:	d9 41 f8             	fld    DWORD PTR [ecx-0x8]
  962433:	05 00 01 00 00       	add    eax,0x100
  962438:	d9 98 f8 fe ff ff    	fstp   DWORD PTR [eax-0x108]
  96243e:	83 c1 1c             	add    ecx,0x1c
  962441:	83 ea 01             	sub    edx,0x1
  962444:	d9 41 e0             	fld    DWORD PTR [ecx-0x20]
  962447:	d9 98 fc fe ff ff    	fstp   DWORD PTR [eax-0x104]
  96244d:	d9 41 e4             	fld    DWORD PTR [ecx-0x1c]
  962450:	d9 98 00 ff ff ff    	fstp   DWORD PTR [eax-0x100]
  962456:	d9 41 e8             	fld    DWORD PTR [ecx-0x18]
  962459:	d9 98 04 ff ff ff    	fstp   DWORD PTR [eax-0xfc]
  96245f:	d9 41 ec             	fld    DWORD PTR [ecx-0x14]
  962462:	d9 98 08 ff ff ff    	fstp   DWORD PTR [eax-0xf8]
  962468:	d9 41 f0             	fld    DWORD PTR [ecx-0x10]
  96246b:	d9 98 0c ff ff ff    	fstp   DWORD PTR [eax-0xf4]
  962471:	d9 41 f4             	fld    DWORD PTR [ecx-0xc]
  962474:	d9 98 10 ff ff ff    	fstp   DWORD PTR [eax-0xf0]
  96247a:	75 b4                	jne    0x962430
  96247c:	c2 04 00             	ret    0x4
