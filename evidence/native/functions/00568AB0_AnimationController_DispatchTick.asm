# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568ab0, 0x00568af9); analyst name AnimationController_DispatchTick.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568ab0 <.text+0x167ab0>:
  568ab0:	83 41 18 01          	add    DWORD PTR [ecx+0x18],0x1
  568ab4:	53                   	push   ebx
  568ab5:	56                   	push   esi
  568ab6:	57                   	push   edi
  568ab7:	8d 79 0c             	lea    edi,[ecx+0xc]
  568aba:	f7 d9                	neg    ecx
  568abc:	1b c9                	sbb    ecx,ecx
  568abe:	23 cf                	and    ecx,edi
  568ac0:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  568ac3:	8d 59 04             	lea    ebx,[ecx+0x4]
  568ac6:	3b f3                	cmp    esi,ebx
  568ac8:	74 22                	je     0x568aec
  568aca:	55                   	push   ebp
  568acb:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  568acf:	90                   	nop
  568ad0:	8b c6                	mov    eax,esi
  568ad2:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  568ad5:	85 c9                	test   ecx,ecx
  568ad7:	8b 36                	mov    esi,DWORD PTR [esi]
  568ad9:	74 0c                	je     0x568ae7
  568adb:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  568ade:	8b 11                	mov    edx,DWORD PTR [ecx]
  568ae0:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  568ae3:	50                   	push   eax
  568ae4:	55                   	push   ebp
  568ae5:	ff d2                	call   edx
  568ae7:	3b f3                	cmp    esi,ebx
  568ae9:	75 e5                	jne    0x568ad0
  568aeb:	5d                   	pop    ebp
  568aec:	8b cf                	mov    ecx,edi
  568aee:	e8 5d d2 ff ff       	call   0x565d50
  568af3:	5f                   	pop    edi
  568af4:	5e                   	pop    esi
  568af5:	5b                   	pop    ebx
  568af6:	c2 04 00             	ret    0x4
