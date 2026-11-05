# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00947840, 0x009478d2); analyst name FootprintComponent_LoadAndInstallResources.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947840 <.text+0x546840>:
  947840:	83 ec 08             	sub    esp,0x8
  947843:	56                   	push   esi
  947844:	8b f1                	mov    esi,ecx
  947846:	8d 44 24 04          	lea    eax,[esp+0x4]
  94784a:	50                   	push   eax
  94784b:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  94784f:	51                   	push   ecx
  947850:	8b ce                	mov    ecx,esi
  947852:	c7 44 24 10 00 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  94785a:	c7 44 24 0c 00 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  947862:	e8 09 d3 ff ff       	call   0x944b70
  947867:	84 c0                	test   al,al
  947869:	74 40                	je     0x9478ab
  94786b:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  94786f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  947873:	53                   	push   ebx
  947874:	6a 01                	push   0x1
  947876:	6a 00                	push   0x0
  947878:	52                   	push   edx
  947879:	50                   	push   eax
  94787a:	8b ce                	mov    ecx,esi
  94787c:	e8 df fd ff ff       	call   0x947660
  947881:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  947885:	85 c9                	test   ecx,ecx
  947887:	8a d8                	mov    bl,al
  947889:	74 07                	je     0x947892
  94788b:	8b 11                	mov    edx,DWORD PTR [ecx]
  94788d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  947890:	ff d0                	call   eax
  947892:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  947896:	85 c9                	test   ecx,ecx
  947898:	74 07                	je     0x9478a1
  94789a:	8b 11                	mov    edx,DWORD PTR [ecx]
  94789c:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  94789f:	ff d0                	call   eax
  9478a1:	8a c3                	mov    al,bl
  9478a3:	5b                   	pop    ebx
  9478a4:	5e                   	pop    esi
  9478a5:	83 c4 08             	add    esp,0x8
  9478a8:	c2 04 00             	ret    0x4
  9478ab:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  9478af:	85 c9                	test   ecx,ecx
  9478b1:	74 07                	je     0x9478ba
  9478b3:	8b 11                	mov    edx,DWORD PTR [ecx]
  9478b5:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9478b8:	ff d0                	call   eax
  9478ba:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  9478be:	85 c9                	test   ecx,ecx
  9478c0:	74 07                	je     0x9478c9
  9478c2:	8b 11                	mov    edx,DWORD PTR [ecx]
  9478c4:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9478c7:	ff d0                	call   eax
  9478c9:	b0 01                	mov    al,0x1
  9478cb:	5e                   	pop    esi
  9478cc:	83 c4 08             	add    esp,0x8
  9478cf:	c2 04 00             	ret    0x4
