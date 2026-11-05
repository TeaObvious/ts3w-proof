# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0082b7b0, 0x0082b815); analyst name FootprintPolygon_CopyConstruct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082b7b0 <.text+0x42a7b0>:
  82b7b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  82b7b4:	56                   	push   esi
  82b7b5:	8b f1                	mov    esi,ecx
  82b7b7:	8b 08                	mov    ecx,DWORD PTR [eax]
  82b7b9:	89 0e                	mov    DWORD PTR [esi],ecx
  82b7bb:	8a 50 04             	mov    dl,BYTE PTR [eax+0x4]
  82b7be:	88 56 04             	mov    BYTE PTR [esi+0x4],dl
  82b7c1:	8a 48 05             	mov    cl,BYTE PTR [eax+0x5]
  82b7c4:	88 4e 05             	mov    BYTE PTR [esi+0x5],cl
  82b7c7:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  82b7ca:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
  82b7cd:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  82b7d0:	89 4e 0c             	mov    DWORD PTR [esi+0xc],ecx
  82b7d3:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  82b7d6:	89 56 10             	mov    DWORD PTR [esi+0x10],edx
  82b7d9:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  82b7dc:	89 4e 14             	mov    DWORD PTR [esi+0x14],ecx
  82b7df:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  82b7e2:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  82b7e5:	d9 40 1c             	fld    DWORD PTR [eax+0x1c]
  82b7e8:	d9 5e 1c             	fstp   DWORD PTR [esi+0x1c]
  82b7eb:	83 c0 30             	add    eax,0x30
  82b7ee:	d9 40 f0             	fld    DWORD PTR [eax-0x10]
  82b7f1:	50                   	push   eax
  82b7f2:	d9 5e 20             	fstp   DWORD PTR [esi+0x20]
  82b7f5:	8d 4e 30             	lea    ecx,[esi+0x30]
  82b7f8:	d9 40 f4             	fld    DWORD PTR [eax-0xc]
  82b7fb:	d9 5e 24             	fstp   DWORD PTR [esi+0x24]
  82b7fe:	d9 40 f8             	fld    DWORD PTR [eax-0x8]
  82b801:	d9 5e 28             	fstp   DWORD PTR [esi+0x28]
  82b804:	d9 40 fc             	fld    DWORD PTR [eax-0x4]
  82b807:	d9 5e 2c             	fstp   DWORD PTR [esi+0x2c]
  82b80a:	e8 e1 d1 df ff       	call   0x6289f0
  82b80f:	8b c6                	mov    eax,esi
  82b811:	5e                   	pop    esi
  82b812:	c2 04 00             	ret    0x4
