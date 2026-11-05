# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00acfbc0, 0x00acfc9a); analyst name Lot_TestLowerLevelPropertyAtPosition.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00acfbc0 <.text+0x6cebc0>:
  acfbc0:	51                   	push   ecx
  acfbc1:	56                   	push   esi
  acfbc2:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  acfbc6:	85 f6                	test   esi,esi
  acfbc8:	75 05                	jne    0xacfbcf
  acfbca:	32 c0                	xor    al,al
  acfbcc:	5e                   	pop    esi
  acfbcd:	59                   	pop    ecx
  acfbce:	c3                   	ret
  acfbcf:	0c ff                	or     al,0xff
  acfbd1:	53                   	push   ebx
  acfbd2:	57                   	push   edi
  acfbd3:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  acfbd7:	88 44 24 14          	mov    BYTE PTR [esp+0x14],al
  acfbdb:	88 44 24 15          	mov    BYTE PTR [esp+0x15],al
  acfbdf:	8d 44 24 14          	lea    eax,[esp+0x14]
  acfbe3:	50                   	push   eax
  acfbe4:	57                   	push   edi
  acfbe5:	c6 44 24 1e 00       	mov    BYTE PTR [esp+0x1e],0x0
  acfbea:	e8 41 7b 02 00       	call   0xaf7730
  acfbef:	8a 4c 24 1c          	mov    cl,BYTE PTR [esp+0x1c]
  acfbf3:	8a 54 24 1d          	mov    dl,BYTE PTR [esp+0x1d]
  acfbf7:	8a 44 24 1e          	mov    al,BYTE PTR [esp+0x1e]
  acfbfb:	8b 9e c4 02 00 00    	mov    ebx,DWORD PTR [esi+0x2c4]
  acfc01:	88 4c 24 14          	mov    BYTE PTR [esp+0x14],cl
  acfc05:	0f be c9             	movsx  ecx,cl
  acfc08:	83 c4 08             	add    esp,0x8
  acfc0b:	2c 01                	sub    al,0x1
  acfc0d:	85 c9                	test   ecx,ecx
  acfc0f:	88 54 24 0d          	mov    BYTE PTR [esp+0xd],dl
  acfc13:	0f be d2             	movsx  edx,dl
  acfc16:	7c 7b                	jl     0xacfc93
  acfc18:	3b 8e 74 01 00 00    	cmp    ecx,DWORD PTR [esi+0x174]
  acfc1e:	7d 73                	jge    0xacfc93
  acfc20:	85 d2                	test   edx,edx
  acfc22:	7c 6f                	jl     0xacfc93
  acfc24:	3b 96 78 01 00 00    	cmp    edx,DWORD PTR [esi+0x178]
  acfc2a:	7d 67                	jge    0xacfc93
  acfc2c:	0f be c8             	movsx  ecx,al
  acfc2f:	3b 8e 7c 01 00 00    	cmp    ecx,DWORD PTR [esi+0x17c]
  acfc35:	7c 5c                	jl     0xacfc93
  acfc37:	3b 8e 80 01 00 00    	cmp    ecx,DWORD PTR [esi+0x180]
  acfc3d:	7f 54                	jg     0xacfc93
  acfc3f:	66 8b 4c 24 0c       	mov    cx,WORD PTR [esp+0xc]
  acfc44:	6a 00                	push   0x0
  acfc46:	8d 54 24 10          	lea    edx,[esp+0x10]
  acfc4a:	66 89 4c 24 10       	mov    WORD PTR [esp+0x10],cx
  acfc4f:	52                   	push   edx
  acfc50:	8b ce                	mov    ecx,esi
  acfc52:	88 44 24 16          	mov    BYTE PTR [esp+0x16],al
  acfc56:	c6 44 24 17 0f       	mov    BYTE PTR [esp+0x17],0xf
  acfc5b:	e8 70 6b fe ff       	call   0xab67d0
  acfc60:	8b f0                	mov    esi,eax
  acfc62:	6a 03                	push   0x3
  acfc64:	56                   	push   esi
  acfc65:	e8 96 e6 02 00       	call   0xafe300
  acfc6a:	83 c4 08             	add    esp,0x8
  acfc6d:	84 c0                	test   al,al
  acfc6f:	75 0f                	jne    0xacfc80
  acfc71:	6a 06                	push   0x6
  acfc73:	56                   	push   esi
  acfc74:	e8 87 e6 02 00       	call   0xafe300
  acfc79:	83 c4 08             	add    esp,0x8
  acfc7c:	84 c0                	test   al,al
  acfc7e:	74 13                	je     0xacfc93
  acfc80:	57                   	push   edi
  acfc81:	8b cb                	mov    ecx,ebx
  acfc83:	e8 08 58 f8 ff       	call   0xa55490
  acfc88:	84 c0                	test   al,al
  acfc8a:	74 07                	je     0xacfc93
  acfc8c:	5f                   	pop    edi
  acfc8d:	5b                   	pop    ebx
  acfc8e:	b0 01                	mov    al,0x1
  acfc90:	5e                   	pop    esi
  acfc91:	59                   	pop    ecx
  acfc92:	c3                   	ret
  acfc93:	5f                   	pop    edi
  acfc94:	5b                   	pop    ebx
  acfc95:	32 c0                	xor    al,al
  acfc97:	5e                   	pop    esi
  acfc98:	59                   	pop    ecx
  acfc99:	c3                   	ret
