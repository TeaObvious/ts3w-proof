# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079fbd0, 0x0079fc32); analyst name ShaderLibrary_IsModeCompatible.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079fbd0 <.text+0x39ebd0>:
  79fbd0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  79fbd4:	ba 01 00 00 00       	mov    edx,0x1
  79fbd9:	d3 e2                	shl    edx,cl
  79fbdb:	83 f9 03             	cmp    ecx,0x3
  79fbde:	77 3e                	ja     0x79fc1e
  79fbe0:	ff 24 8d 34 fc 79 00 	jmp    DWORD PTR [ecx*4+0x79fc34]
  79fbe7:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  79fbeb:	b8 01 00 00 00       	mov    eax,0x1
  79fbf0:	d3 e0                	shl    eax,cl
  79fbf2:	ba 3f 00 00 00       	mov    edx,0x3f
  79fbf7:	23 c2                	and    eax,edx
  79fbf9:	f7 d8                	neg    eax
  79fbfb:	1b c0                	sbb    eax,eax
  79fbfd:	f7 d8                	neg    eax
  79fbff:	c3                   	ret
  79fc00:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  79fc04:	b8 01 00 00 00       	mov    eax,0x1
  79fc09:	d3 e0                	shl    eax,cl
  79fc0b:	ba 3e 00 00 00       	mov    edx,0x3e
  79fc10:	23 c2                	and    eax,edx
  79fc12:	f7 d8                	neg    eax
  79fc14:	1b c0                	sbb    eax,eax
  79fc16:	f7 d8                	neg    eax
  79fc18:	c3                   	ret
  79fc19:	ba 3c 00 00 00       	mov    edx,0x3c
  79fc1e:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  79fc22:	b8 01 00 00 00       	mov    eax,0x1
  79fc27:	d3 e0                	shl    eax,cl
  79fc29:	23 c2                	and    eax,edx
  79fc2b:	f7 d8                	neg    eax
  79fc2d:	1b c0                	sbb    eax,eax
  79fc2f:	f7 d8                	neg    eax
  79fc31:	c3                   	ret
