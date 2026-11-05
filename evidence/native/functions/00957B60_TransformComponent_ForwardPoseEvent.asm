# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00957b60, 0x00957b92); analyst name TransformComponent_ForwardPoseEvent.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957b60 <.text+0x556b60>:
  957b60:	55                   	push   ebp
  957b61:	8b ec                	mov    ebp,esp
  957b63:	83 e4 f0             	and    esp,0xfffffff0
  957b66:	83 ec 2c             	sub    esp,0x2c
  957b69:	56                   	push   esi
  957b6a:	8d 44 24 10          	lea    eax,[esp+0x10]
  957b6e:	50                   	push   eax
  957b6f:	8b f1                	mov    esi,ecx
  957b71:	e8 9a fd ff ff       	call   0x957910
  957b76:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  957b79:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  957b7d:	51                   	push   ecx
  957b7e:	52                   	push   edx
  957b7f:	6a 0e                	push   0xe
  957b81:	e8 3a db fd ff       	call   0x9356c0
  957b86:	83 c4 0c             	add    esp,0xc
  957b89:	b0 01                	mov    al,0x1
  957b8b:	5e                   	pop    esi
  957b8c:	8b e5                	mov    esp,ebp
  957b8e:	5d                   	pop    ebp
  957b8f:	c2 04 00             	ret    0x4
