# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007a0d50, 0x007a0db2); analyst name ShaderSystem_InitializePrecompiledLibrary.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a0d50 <.text+0x39fd50>:
  7a0d50:	56                   	push   esi
  7a0d51:	8b f1                	mov    esi,ecx
  7a0d53:	8d 46 18             	lea    eax,[esi+0x18]
  7a0d56:	57                   	push   edi
  7a0d57:	a3 30 85 1d 01       	mov    ds:0x11d8530,eax
  7a0d5c:	e8 af db e6 ff       	call   0x60e910
  7a0d61:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7a0d64:	8d be 48 01 00 00    	lea    edi,[esi+0x148]
  7a0d6a:	57                   	push   edi
  7a0d6b:	89 8e 88 01 00 00    	mov    DWORD PTR [esi+0x188],ecx
  7a0d71:	e8 ba a5 ff ff       	call   0x79b330
  7a0d76:	0f b6 56 11          	movzx  edx,BYTE PTR [esi+0x11]
  7a0d7a:	0f b6 46 10          	movzx  eax,BYTE PTR [esi+0x10]
  7a0d7e:	83 c4 04             	add    esp,0x4
  7a0d81:	52                   	push   edx
  7a0d82:	50                   	push   eax
  7a0d83:	8b cf                	mov    ecx,edi
  7a0d85:	e8 96 aa ff ff       	call   0x79b820
  7a0d8a:	84 c0                	test   al,al
  7a0d8c:	75 03                	jne    0x7a0d91
  7a0d8e:	5f                   	pop    edi
  7a0d8f:	5e                   	pop    esi
  7a0d90:	c3                   	ret
  7a0d91:	8b cf                	mov    ecx,edi
  7a0d93:	e8 08 8d f9 ff       	call   0x739aa0
  7a0d98:	50                   	push   eax
  7a0d99:	8d 8e d8 01 00 00    	lea    ecx,[esi+0x1d8]
  7a0d9f:	e8 2c 06 00 00       	call   0x7a13d0
  7a0da4:	6a 00                	push   0x0
  7a0da6:	8b cf                	mov    ecx,edi
  7a0da8:	e8 93 ae ff ff       	call   0x79bc40
  7a0dad:	5f                   	pop    edi
  7a0dae:	b0 01                	mov    al,0x1
  7a0db0:	5e                   	pop    esi
  7a0db1:	c3                   	ret
