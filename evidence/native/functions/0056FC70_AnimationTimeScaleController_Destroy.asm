# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056fc70, 0x0056fcc9); analyst name AnimationTimeScaleController_Destroy.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056fc70 <.text+0x16ec70>:
  56fc70:	56                   	push   esi
  56fc71:	8b f1                	mov    esi,ecx
  56fc73:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56fc76:	85 c9                	test   ecx,ecx
  56fc78:	8d 46 28             	lea    eax,[esi+0x28]
  56fc7b:	c7 06 40 31 fc 00    	mov    DWORD PTR [esi],0xfc3140
  56fc81:	c7 46 08 38 31 fc 00 	mov    DWORD PTR [esi+0x8],0xfc3138
  56fc88:	c7 46 0c 34 31 fc 00 	mov    DWORD PTR [esi+0xc],0xfc3134
  56fc8f:	c7 00 c4 30 fc 00    	mov    DWORD PTR [eax],0xfc30c4
  56fc95:	74 09                	je     0x56fca0
  56fc97:	50                   	push   eax
  56fc98:	83 c1 0c             	add    ecx,0xc
  56fc9b:	e8 f0 6c ff ff       	call   0x566990
  56fca0:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56fca3:	85 c9                	test   ecx,ecx
  56fca5:	74 1a                	je     0x56fcc1
  56fca7:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  56fcaa:	83 c0 ff             	add    eax,0xffffffff
  56fcad:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  56fcb0:	75 0f                	jne    0x56fcc1
  56fcb2:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  56fcb9:	8b 01                	mov    eax,DWORD PTR [ecx]
  56fcbb:	8b 10                	mov    edx,DWORD PTR [eax]
  56fcbd:	6a 01                	push   0x1
  56fcbf:	ff d2                	call   edx
  56fcc1:	8b ce                	mov    ecx,esi
  56fcc3:	5e                   	pop    esi
  56fcc4:	e9 37 62 ff ff       	jmp    0x565f00
