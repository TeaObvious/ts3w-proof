# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007cfe50, 0x007cfe94); analyst name HashLowercasedBufferFNV1.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007cfe50 <.text+0x3cee50>:
  7cfe50:	53                   	push   ebx
  7cfe51:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  7cfe55:	56                   	push   esi
  7cfe56:	33 f6                	xor    esi,esi
  7cfe58:	85 db                	test   ebx,ebx
  7cfe5a:	57                   	push   edi
  7cfe5b:	bf c5 9d 1c 81       	mov    edi,0x811c9dc5
  7cfe60:	76 2c                	jbe    0x7cfe8e
  7cfe62:	55                   	push   ebp
  7cfe63:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  7cfe67:	eb 07                	jmp    0x7cfe70
  7cfe69:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  7cfe70:	0f be 04 2e          	movsx  eax,BYTE PTR [esi+ebp*1]
  7cfe74:	50                   	push   eax
  7cfe75:	ff 15 c0 66 f9 00    	call   DWORD PTR ds:0xf966c0
  7cfe7b:	69 ff 93 01 00 01    	imul   edi,edi,0x1000193
  7cfe81:	83 c6 01             	add    esi,0x1
  7cfe84:	83 c4 04             	add    esp,0x4
  7cfe87:	33 f8                	xor    edi,eax
  7cfe89:	3b f3                	cmp    esi,ebx
  7cfe8b:	72 e3                	jb     0x7cfe70
  7cfe8d:	5d                   	pop    ebp
  7cfe8e:	8b c7                	mov    eax,edi
  7cfe90:	5f                   	pop    edi
  7cfe91:	5e                   	pop    esi
  7cfe92:	5b                   	pop    ebx
  7cfe93:	c3                   	ret
