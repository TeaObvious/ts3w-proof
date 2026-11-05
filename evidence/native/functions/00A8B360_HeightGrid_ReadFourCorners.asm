# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00a8b360, 0x00a8b3ae); analyst name HeightGrid_ReadFourCorners.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a8b360 <.text+0x68a360>:
  a8b360:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  a8b363:	0f af 44 24 0c       	imul   eax,DWORD PTR [esp+0xc]
  a8b368:	03 44 24 04          	add    eax,DWORD PTR [esp+0x4]
  a8b36c:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
  a8b36f:	0f af 41 08          	imul   eax,DWORD PTR [ecx+0x8]
  a8b373:	03 44 24 08          	add    eax,DWORD PTR [esp+0x8]
  a8b377:	56                   	push   esi
  a8b378:	57                   	push   edi
  a8b379:	d9 04 82             	fld    DWORD PTR [edx+eax*4]
  a8b37c:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  a8b380:	d9 1a                	fstp   DWORD PTR [edx]
  a8b382:	8b 71 10             	mov    esi,DWORD PTR [ecx+0x10]
  a8b385:	d9 44 86 04          	fld    DWORD PTR [esi+eax*4+0x4]
  a8b389:	d9 5a 04             	fstp   DWORD PTR [edx+0x4]
  a8b38c:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  a8b38f:	8b 79 10             	mov    edi,DWORD PTR [ecx+0x10]
  a8b392:	03 f0                	add    esi,eax
  a8b394:	d9 04 b7             	fld    DWORD PTR [edi+esi*4]
  a8b397:	5f                   	pop    edi
  a8b398:	d9 5a 08             	fstp   DWORD PTR [edx+0x8]
  a8b39b:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  a8b39e:	03 f0                	add    esi,eax
  a8b3a0:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
  a8b3a3:	d9 44 b0 04          	fld    DWORD PTR [eax+esi*4+0x4]
  a8b3a7:	5e                   	pop    esi
  a8b3a8:	d9 5a 0c             	fstp   DWORD PTR [edx+0xc]
  a8b3ab:	c2 10 00             	ret    0x10
