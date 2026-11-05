# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0077d7b0, 0x0077d7dc); analyst name LotLevelHeight_ReadVertex.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0077d7b0 <.text+0x37c7b0>:
  77d7b0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  77d7b4:	8b 41 24             	mov    eax,DWORD PTR [ecx+0x24]
  77d7b7:	56                   	push   esi
  77d7b8:	0f be 72 02          	movsx  esi,BYTE PTR [edx+0x2]
  77d7bc:	2b 71 10             	sub    esi,DWORD PTR [ecx+0x10]
  77d7bf:	0f be 0a             	movsx  ecx,BYTE PTR [edx]
  77d7c2:	0f af 70 04          	imul   esi,DWORD PTR [eax+0x4]
  77d7c6:	0f be 52 01          	movsx  edx,BYTE PTR [edx+0x1]
  77d7ca:	03 f1                	add    esi,ecx
  77d7cc:	0f af 70 08          	imul   esi,DWORD PTR [eax+0x8]
  77d7d0:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
  77d7d3:	03 f2                	add    esi,edx
  77d7d5:	d9 04 b0             	fld    DWORD PTR [eax+esi*4]
  77d7d8:	5e                   	pop    esi
  77d7d9:	c2 04 00             	ret    0x4
