# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009806b0, 0x00980805); analyst name CameraPreset_DispatchInput.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009806b0 <.text+0x57f6b0>:
  9806b0:	81 7c 24 04 00 00 ce 5e 	cmp    DWORD PTR [esp+0x4],0x5ece0000
  9806b8:	0f 85 a2 00 00 00    	jne    0x980760
  9806be:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  9806c2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  9806c5:	3d f0 0f 2c 04       	cmp    eax,0x42c0ff0
  9806ca:	0f 87 d0 00 00 00    	ja     0x9807a0
  9806d0:	0f 84 b5 00 00 00    	je     0x98078b
  9806d6:	2d 00 00 2c 04       	sub    eax,0x42c0000
  9806db:	3d f4 00 00 00       	cmp    eax,0xf4
  9806e0:	77 7e                	ja     0x980760
  9806e2:	0f b6 90 34 08 98 00 	movzx  edx,BYTE PTR [eax+0x980834]
  9806e9:	ff 24 95 08 08 98 00 	jmp    DWORD PTR [edx*4+0x980808]
  9806f0:	c7 44 24 08 01 00 00 00 	mov    DWORD PTR [esp+0x8],0x1
  9806f8:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  980700:	e9 9b f2 ff ff       	jmp    0x97f9a0
  980705:	c7 44 24 08 01 00 00 00 	mov    DWORD PTR [esp+0x8],0x1
  98070d:	c7 44 24 04 01 00 00 00 	mov    DWORD PTR [esp+0x4],0x1
  980715:	e9 86 f2 ff ff       	jmp    0x97f9a0
  98071a:	c7 44 24 08 01 00 00 00 	mov    DWORD PTR [esp+0x8],0x1
  980722:	c7 44 24 04 02 00 00 00 	mov    DWORD PTR [esp+0x4],0x2
  98072a:	e9 71 f2 ff ff       	jmp    0x97f9a0
  98072f:	c7 44 24 08 01 00 00 00 	mov    DWORD PTR [esp+0x8],0x1
  980737:	c7 44 24 04 03 00 00 00 	mov    DWORD PTR [esp+0x4],0x3
  98073f:	e9 5c f2 ff ff       	jmp    0x97f9a0
  980744:	c7 44 24 08 01 00 00 00 	mov    DWORD PTR [esp+0x8],0x1
  98074c:	c7 44 24 04 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x4
  980754:	e9 47 f2 ff ff       	jmp    0x97f9a0
  980759:	6a 00                	push   0x0
  98075b:	e8 70 fd ff ff       	call   0x9804d0
  980760:	c2 08 00             	ret    0x8
  980763:	6a 01                	push   0x1
  980765:	e8 66 fd ff ff       	call   0x9804d0
  98076a:	c2 08 00             	ret    0x8
  98076d:	6a 02                	push   0x2
  98076f:	e8 5c fd ff ff       	call   0x9804d0
  980774:	c2 08 00             	ret    0x8
  980777:	6a 03                	push   0x3
  980779:	e8 52 fd ff ff       	call   0x9804d0
  98077e:	c2 08 00             	ret    0x8
  980781:	6a 04                	push   0x4
  980783:	e8 48 fd ff ff       	call   0x9804d0
  980788:	c2 08 00             	ret    0x8
  98078b:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  980793:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  98079b:	e9 00 f2 ff ff       	jmp    0x97f9a0
  9807a0:	2d f1 0f 2c 04       	sub    eax,0x42c0ff1
  9807a5:	83 f8 03             	cmp    eax,0x3
  9807a8:	77 b6                	ja     0x980760
  9807aa:	ff 24 85 2c 09 98 00 	jmp    DWORD PTR [eax*4+0x98092c]
  9807b1:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  9807b9:	c7 44 24 04 01 00 00 00 	mov    DWORD PTR [esp+0x4],0x1
  9807c1:	e9 da f1 ff ff       	jmp    0x97f9a0
  9807c6:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  9807ce:	c7 44 24 04 02 00 00 00 	mov    DWORD PTR [esp+0x4],0x2
  9807d6:	e9 c5 f1 ff ff       	jmp    0x97f9a0
  9807db:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  9807e3:	c7 44 24 04 03 00 00 00 	mov    DWORD PTR [esp+0x4],0x3
  9807eb:	e9 b0 f1 ff ff       	jmp    0x97f9a0
  9807f0:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  9807f8:	c7 44 24 04 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x4
  980800:	e9 9b f1 ff ff       	jmp    0x97f9a0
