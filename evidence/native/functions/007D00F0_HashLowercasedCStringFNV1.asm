# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007d00f0, 0x007d0118); analyst name HashLowercasedCStringFNV1.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d00f0 <.text+0x3cf0f0>:
  7d00f0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  7d00f4:	85 d2                	test   edx,edx
  7d00f6:	75 03                	jne    0x7d00fb
  7d00f8:	33 c0                	xor    eax,eax
  7d00fa:	c3                   	ret
  7d00fb:	8b c2                	mov    eax,edx
  7d00fd:	56                   	push   esi
  7d00fe:	8d 70 01             	lea    esi,[eax+0x1]
  7d0101:	8a 08                	mov    cl,BYTE PTR [eax]
  7d0103:	83 c0 01             	add    eax,0x1
  7d0106:	84 c9                	test   cl,cl
  7d0108:	75 f7                	jne    0x7d0101
  7d010a:	2b c6                	sub    eax,esi
  7d010c:	50                   	push   eax
  7d010d:	52                   	push   edx
  7d010e:	e8 3d fd ff ff       	call   0x7cfe50
  7d0113:	83 c4 08             	add    esp,0x8
  7d0116:	5e                   	pop    esi
  7d0117:	c3                   	ret
