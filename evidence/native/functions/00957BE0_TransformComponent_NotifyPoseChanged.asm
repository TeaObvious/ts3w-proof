# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00957be0, 0x00957c22); analyst name TransformComponent_NotifyPoseChanged.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957be0 <.text+0x556be0>:
  957be0:	55                   	push   ebp
  957be1:	8b ec                	mov    ebp,esp
  957be3:	83 e4 f0             	and    esp,0xfffffff0
  957be6:	83 ec 2c             	sub    esp,0x2c
  957be9:	56                   	push   esi
  957bea:	8b f1                	mov    esi,ecx
  957bec:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  957bef:	a8 04                	test   al,0x4
  957bf1:	75 28                	jne    0x957c1b
  957bf3:	a8 03                	test   al,0x3
  957bf5:	74 05                	je     0x957bfc
  957bf7:	e8 64 f2 ff ff       	call   0x956e60
  957bfc:	8d 44 24 10          	lea    eax,[esp+0x10]
  957c00:	50                   	push   eax
  957c01:	8b ce                	mov    ecx,esi
  957c03:	e8 08 fd ff ff       	call   0x957910
  957c08:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  957c0b:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  957c0f:	51                   	push   ecx
  957c10:	52                   	push   edx
  957c11:	6a 0e                	push   0xe
  957c13:	e8 a8 da fd ff       	call   0x9356c0
  957c18:	83 c4 0c             	add    esp,0xc
  957c1b:	5e                   	pop    esi
  957c1c:	8b e5                	mov    esp,ebp
  957c1e:	5d                   	pop    ebp
  957c1f:	c2 04 00             	ret    0x4
