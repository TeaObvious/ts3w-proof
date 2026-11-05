# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0092f760 <.text+0x52e760>:
  92f760:	83 ec 10             	sub    esp,0x10
  92f763:	53                   	push   ebx
  92f764:	55                   	push   ebp
  92f765:	56                   	push   esi
  92f766:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  92f76a:	57                   	push   edi
  92f76b:	6a 00                	push   0x0
  92f76d:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  92f771:	50                   	push   eax
  92f772:	56                   	push   esi
  92f773:	e8 08 e2 ba ff       	call   0x4dd980
  92f778:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
  92f77c:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  92f780:	6a 00                	push   0x0
  92f782:	8d 57 04             	lea    edx,[edi+0x4]
  92f785:	52                   	push   edx
  92f786:	81 e1 ff ff 7f 00    	and    ecx,0x7fffff
  92f78c:	56                   	push   esi
  92f78d:	89 0f                	mov    DWORD PTR [edi],ecx
  92f78f:	e8 ec e1 ba ff       	call   0x4dd980
  92f794:	6a 00                	push   0x0
  92f796:	8d 47 08             	lea    eax,[edi+0x8]
  92f799:	50                   	push   eax
  92f79a:	56                   	push   esi
  92f79b:	e8 e0 e1 ba ff       	call   0x4dd980
  92f7a0:	6a 01                	push   0x1
  92f7a2:	8d 5f 0c             	lea    ebx,[edi+0xc]
  92f7a5:	53                   	push   ebx
  92f7a6:	56                   	push   esi
  92f7a7:	e8 d4 e1 ba ff       	call   0x4dd980
  92f7ac:	6a 01                	push   0x1
  92f7ae:	83 c3 04             	add    ebx,0x4
  92f7b1:	53                   	push   ebx
  92f7b2:	56                   	push   esi
  92f7b3:	e8 c8 e1 ba ff       	call   0x4dd980
  92f7b8:	6a 00                	push   0x0
  92f7ba:	8d 4f 14             	lea    ecx,[edi+0x14]
  92f7bd:	51                   	push   ecx
  92f7be:	56                   	push   esi
  92f7bf:	e8 bc e1 ba ff       	call   0x4dd980
  92f7c4:	83 c4 48             	add    esp,0x48
  92f7c7:	8d 57 18             	lea    edx,[edi+0x18]
  92f7ca:	52                   	push   edx
  92f7cb:	56                   	push   esi
  92f7cc:	e8 bf e0 ba ff       	call   0x4dd890
  92f7d1:	8d 47 1c             	lea    eax,[edi+0x1c]
  92f7d4:	50                   	push   eax
  92f7d5:	56                   	push   esi
  92f7d6:	e8 75 14 f9 ff       	call   0x8c0c50
  92f7db:	6a 01                	push   0x1
  92f7dd:	8d 5f 24             	lea    ebx,[edi+0x24]
  92f7e0:	53                   	push   ebx
  92f7e1:	56                   	push   esi
  92f7e2:	e8 99 e1 ba ff       	call   0x4dd980
  92f7e7:	6a 01                	push   0x1
  92f7e9:	8d 4b 04             	lea    ecx,[ebx+0x4]
  92f7ec:	51                   	push   ecx
  92f7ed:	56                   	push   esi
  92f7ee:	e8 8d e1 ba ff       	call   0x4dd980
  92f7f3:	6a 01                	push   0x1
  92f7f5:	83 c3 08             	add    ebx,0x8
  92f7f8:	53                   	push   ebx
  92f7f9:	56                   	push   esi
  92f7fa:	e8 81 e1 ba ff       	call   0x4dd980
  92f7ff:	6a 00                	push   0x0
  92f801:	8d 57 34             	lea    edx,[edi+0x34]
  92f804:	52                   	push   edx
  92f805:	56                   	push   esi
  92f806:	e8 75 e1 ba ff       	call   0x4dd980
  92f80b:	83 c4 40             	add    esp,0x40
  92f80e:	6a 00                	push   0x0
  92f810:	8d 44 24 18          	lea    eax,[esp+0x18]
  92f814:	50                   	push   eax
  92f815:	56                   	push   esi
  92f816:	e8 65 e1 ba ff       	call   0x4dd980
  92f81b:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  92f81f:	83 c4 0c             	add    esp,0xc
  92f822:	8d 6f 38             	lea    ebp,[edi+0x38]
  92f825:	51                   	push   ecx
  92f826:	8b cd                	mov    ecx,ebp
  92f828:	e8 93 fe ff ff       	call   0x92f6c0
  92f82d:	33 c0                	xor    eax,eax
  92f82f:	39 44 24 14          	cmp    DWORD PTR [esp+0x14],eax
  92f833:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  92f837:	0f 86 6d 01 00 00    	jbe    0x92f9aa
  92f83d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  92f841:	8b 7d 00             	mov    edi,DWORD PTR [ebp+0x0]
  92f844:	03 7c 24 10          	add    edi,DWORD PTR [esp+0x10]
  92f848:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  92f84c:	52                   	push   edx
  92f84d:	56                   	push   esi
  92f84e:	e8 3d e0 ba ff       	call   0x4dd890
  92f853:	0f b6 44 24 34       	movzx  eax,BYTE PTR [esp+0x34]
  92f858:	6a 00                	push   0x0
  92f85a:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  92f85e:	51                   	push   ecx
  92f85f:	56                   	push   esi
  92f860:	89 07                	mov    DWORD PTR [edi],eax
  92f862:	e8 19 e1 ba ff       	call   0x4dd980
  92f867:	0f b6 54 24 30       	movzx  edx,BYTE PTR [esp+0x30]
  92f86c:	6a 00                	push   0x0
  92f86e:	8d 5f 08             	lea    ebx,[edi+0x8]
  92f871:	53                   	push   ebx
  92f872:	56                   	push   esi
  92f873:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  92f876:	e8 65 e0 ba ff       	call   0x4dd8e0
  92f87b:	6a 00                	push   0x0
  92f87d:	8d 43 10             	lea    eax,[ebx+0x10]
  92f880:	50                   	push   eax
  92f881:	56                   	push   esi
  92f882:	e8 f9 e0 ba ff       	call   0x4dd980
  92f887:	8d 4b 14             	lea    ecx,[ebx+0x14]
  92f88a:	51                   	push   ecx
  92f88b:	56                   	push   esi
  92f88c:	e8 ef a2 f9 ff       	call   0x8c9b80
  92f891:	6a 01                	push   0x1
  92f893:	83 c3 04             	add    ebx,0x4
  92f896:	53                   	push   ebx
  92f897:	56                   	push   esi
  92f898:	e8 e3 e0 ba ff       	call   0x4dd980
  92f89d:	83 c4 40             	add    esp,0x40
  92f8a0:	6a 01                	push   0x1
  92f8a2:	8d 53 04             	lea    edx,[ebx+0x4]
  92f8a5:	52                   	push   edx
  92f8a6:	56                   	push   esi
  92f8a7:	e8 d4 e0 ba ff       	call   0x4dd980
  92f8ac:	6a 01                	push   0x1
  92f8ae:	83 c3 08             	add    ebx,0x8
  92f8b1:	53                   	push   ebx
  92f8b2:	56                   	push   esi
  92f8b3:	e8 c8 e0 ba ff       	call   0x4dd980
  92f8b8:	8d 47 40             	lea    eax,[edi+0x40]
  92f8bb:	50                   	push   eax
  92f8bc:	56                   	push   esi
  92f8bd:	e8 ce df ba ff       	call   0x4dd890
  92f8c2:	8d 4f 41             	lea    ecx,[edi+0x41]
  92f8c5:	51                   	push   ecx
  92f8c6:	56                   	push   esi
  92f8c7:	e8 c4 df ba ff       	call   0x4dd890
  92f8cc:	8d 57 44             	lea    edx,[edi+0x44]
  92f8cf:	52                   	push   edx
  92f8d0:	56                   	push   esi
  92f8d1:	e8 6a fb ff ff       	call   0x92f440
  92f8d6:	6a 00                	push   0x0
  92f8d8:	8d 47 54             	lea    eax,[edi+0x54]
  92f8db:	50                   	push   eax
  92f8dc:	56                   	push   esi
  92f8dd:	e8 9e e0 ba ff       	call   0x4dd980
  92f8e2:	6a 00                	push   0x0
  92f8e4:	8d 4f 58             	lea    ecx,[edi+0x58]
  92f8e7:	51                   	push   ecx
  92f8e8:	56                   	push   esi
  92f8e9:	e8 92 e0 ba ff       	call   0x4dd980
  92f8ee:	83 c4 48             	add    esp,0x48
  92f8f1:	6a 00                	push   0x0
  92f8f3:	8d 57 5c             	lea    edx,[edi+0x5c]
  92f8f6:	52                   	push   edx
  92f8f7:	56                   	push   esi
  92f8f8:	e8 83 e0 ba ff       	call   0x4dd980
  92f8fd:	6a 00                	push   0x0
  92f8ff:	8d 47 60             	lea    eax,[edi+0x60]
  92f902:	50                   	push   eax
  92f903:	56                   	push   esi
  92f904:	e8 77 e0 ba ff       	call   0x4dd980
  92f909:	6a 00                	push   0x0
  92f90b:	8d 4f 64             	lea    ecx,[edi+0x64]
  92f90e:	51                   	push   ecx
  92f90f:	56                   	push   esi
  92f910:	e8 6b e0 ba ff       	call   0x4dd980
  92f915:	6a 00                	push   0x0
  92f917:	8d 57 68             	lea    edx,[edi+0x68]
  92f91a:	52                   	push   edx
  92f91b:	56                   	push   esi
  92f91c:	e8 5f e0 ba ff       	call   0x4dd980
  92f921:	6a 00                	push   0x0
  92f923:	8d 47 6c             	lea    eax,[edi+0x6c]
  92f926:	50                   	push   eax
  92f927:	56                   	push   esi
  92f928:	e8 53 e0 ba ff       	call   0x4dd980
  92f92d:	6a 00                	push   0x0
  92f92f:	8d 4f 70             	lea    ecx,[edi+0x70]
  92f932:	51                   	push   ecx
  92f933:	56                   	push   esi
  92f934:	e8 47 e0 ba ff       	call   0x4dd980
  92f939:	83 c4 48             	add    esp,0x48
  92f93c:	6a 00                	push   0x0
  92f93e:	8d 57 74             	lea    edx,[edi+0x74]
  92f941:	52                   	push   edx
  92f942:	56                   	push   esi
  92f943:	e8 98 df ba ff       	call   0x4dd8e0
  92f948:	6a 00                	push   0x0
  92f94a:	8d 47 76             	lea    eax,[edi+0x76]
  92f94d:	50                   	push   eax
  92f94e:	56                   	push   esi
  92f94f:	e8 8c df ba ff       	call   0x4dd8e0
  92f954:	6a 00                	push   0x0
  92f956:	8d 4f 78             	lea    ecx,[edi+0x78]
  92f959:	51                   	push   ecx
  92f95a:	56                   	push   esi
  92f95b:	e8 20 e0 ba ff       	call   0x4dd980
  92f960:	6a 00                	push   0x0
  92f962:	8d 57 7c             	lea    edx,[edi+0x7c]
  92f965:	52                   	push   edx
  92f966:	56                   	push   esi
  92f967:	e8 14 e0 ba ff       	call   0x4dd980
  92f96c:	83 c4 30             	add    esp,0x30
  92f96f:	83 7c 24 28 02       	cmp    DWORD PTR [esp+0x28],0x2
  92f974:	7c 17                	jl     0x92f98d
  92f976:	8d 47 42             	lea    eax,[edi+0x42]
  92f979:	50                   	push   eax
  92f97a:	56                   	push   esi
  92f97b:	e8 10 df ba ff       	call   0x4dd890
  92f980:	83 c7 43             	add    edi,0x43
  92f983:	57                   	push   edi
  92f984:	56                   	push   esi
  92f985:	e8 06 df ba ff       	call   0x4dd890
  92f98a:	83 c4 10             	add    esp,0x10
  92f98d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  92f991:	81 44 24 10 80 00 00 	add    DWORD PTR [esp+0x10],0x80
  92f998:	00 
  92f999:	83 c0 01             	add    eax,0x1
  92f99c:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
  92f9a0:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  92f9a4:	0f 82 97 fe ff ff    	jb     0x92f841
  92f9aa:	5f                   	pop    edi
  92f9ab:	5e                   	pop    esi
  92f9ac:	5d                   	pop    ebp
  92f9ad:	5b                   	pop    ebx
  92f9ae:	83 c4 10             	add    esp,0x10
  92f9b1:	c3                   	ret
