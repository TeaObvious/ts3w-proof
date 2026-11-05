# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939eb0,0x00939eeb); analyst name ParameterBuilder_FinalizeBorrowedTable.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939eb0 <.text+0x538eb0>:
  939eb0:	51                   	push   ecx
  939eb1:	56                   	push   esi
  939eb2:	8b f1                	mov    esi,ecx
  939eb4:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  939eb7:	8b 16                	mov    edx,DWORD PTR [esi]
  939eb9:	c6 44 24 04 00       	mov    BYTE PTR [esp+0x4],0x0
  939ebe:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  939ec2:	50                   	push   eax
  939ec3:	51                   	push   ecx
  939ec4:	52                   	push   edx
  939ec5:	e8 96 fd ff ff       	call   0x939c60
  939eca:	8b 0e                	mov    ecx,DWORD PTR [esi]
  939ecc:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  939ed0:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  939ed3:	2b d1                	sub    edx,ecx
  939ed5:	83 c4 0c             	add    esp,0xc
  939ed8:	89 08                	mov    DWORD PTR [eax],ecx
  939eda:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  939edd:	c1 fa 04             	sar    edx,0x4
  939ee0:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  939ee3:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  939ee6:	5e                   	pop    esi
  939ee7:	59                   	pop    ecx
  939ee8:	c2 04 00             	ret    0x4
