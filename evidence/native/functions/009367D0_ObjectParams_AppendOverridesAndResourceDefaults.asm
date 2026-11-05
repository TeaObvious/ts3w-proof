# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009367d0,0x00936869); analyst name ObjectParams_AppendOverridesAndResourceDefaults.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

009367d0 <.text+0x5357d0>:
  9367d0:	51                   	push   ecx
  9367d1:	53                   	push   ebx
  9367d2:	55                   	push   ebp
  9367d3:	56                   	push   esi
  9367d4:	57                   	push   edi
  9367d5:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  9367d9:	e8 b2 2b e3 ff       	call   0x769390
  9367de:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  9367e2:	8b f8                	mov    edi,eax
  9367e4:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  9367e8:	8b 30                	mov    esi,DWORD PTR [eax]
  9367ea:	8b 68 04             	mov    ebp,DWORD PTR [eax+0x4]
  9367ed:	3b f5                	cmp    esi,ebp
  9367ef:	74 66                	je     0x936857
  9367f1:	0f b6 46 3c          	movzx  eax,BYTE PTR [esi+0x3c]
  9367f5:	83 f8 04             	cmp    eax,0x4
  9367f8:	77 56                	ja     0x936850
  9367fa:	ff 24 85 6c 68 93 00 	jmp    DWORD PTR [eax*4+0x93686c]
  936801:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  936804:	8b 0e                	mov    ecx,DWORD PTR [esi]
  936806:	50                   	push   eax
  936807:	51                   	push   ecx
  936808:	8b cb                	mov    ecx,ebx
  93680a:	e8 81 37 00 00       	call   0x939f90
  93680f:	eb 3f                	jmp    0x936850
  936811:	8b 06                	mov    eax,DWORD PTR [esi]
  936813:	8d 56 18             	lea    edx,[esi+0x18]
  936816:	52                   	push   edx
  936817:	50                   	push   eax
  936818:	8b cb                	mov    ecx,ebx
  93681a:	e8 41 38 00 00       	call   0x93a060
  93681f:	eb 2f                	jmp    0x936850
  936821:	85 ff                	test   edi,edi
  936823:	74 2b                	je     0x936850
  936825:	8b 17                	mov    edx,DWORD PTR [edi]
  936827:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  93682a:	8b 92 cc 00 00 00    	mov    edx,DWORD PTR [edx+0xcc]
  936830:	50                   	push   eax
  936831:	8b cf                	mov    ecx,edi
  936833:	ff d2                	call   edx
  936835:	50                   	push   eax
  936836:	8b 06                	mov    eax,DWORD PTR [esi]
  936838:	50                   	push   eax
  936839:	8b cb                	mov    ecx,ebx
  93683b:	e8 b0 38 00 00       	call   0x93a0f0
  936840:	eb 0e                	jmp    0x936850
  936842:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
  936845:	8b 16                	mov    edx,DWORD PTR [esi]
  936847:	51                   	push   ecx
  936848:	52                   	push   edx
  936849:	8b cb                	mov    ecx,ebx
  93684b:	e8 a0 36 00 00       	call   0x939ef0
  936850:	83 c6 40             	add    esi,0x40
  936853:	3b f5                	cmp    esi,ebp
  936855:	75 9a                	jne    0x9367f1
  936857:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  93685b:	53                   	push   ebx
  93685c:	e8 7f fd ff ff       	call   0x9365e0
  936861:	5f                   	pop    edi
  936862:	5e                   	pop    esi
  936863:	5d                   	pop    ebp
  936864:	5b                   	pop    ebx
  936865:	59                   	pop    ecx
  936866:	c2 08 00             	ret    0x8
