# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00585df0 <.text+0x184df0>:
  585df0:	51                   	push   ecx
  585df1:	53                   	push   ebx
  585df2:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  585df6:	56                   	push   esi
  585df7:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  585dfb:	0f b6 46 12          	movzx  eax,BYTE PTR [esi+0x12]
  585dff:	83 c0 ff             	add    eax,0xffffffff
  585e02:	83 f8 13             	cmp    eax,0x13
  585e05:	57                   	push   edi
  585e06:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  585e0a:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  585e11:	00 
  585e12:	0f 87 d2 02 00 00    	ja     0x5860ea
  585e18:	ff 24 85 8c 61 58 00 	jmp    DWORD PTR [eax*4+0x58618c]
  585e1f:	8b 06                	mov    eax,DWORD PTR [esi]
  585e21:	83 f8 ff             	cmp    eax,0xffffffff
  585e24:	75 04                	jne    0x585e2a
  585e26:	33 c0                	xor    eax,eax
  585e28:	eb 06                	jmp    0x585e30
  585e2a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  585e2e:	03 c1                	add    eax,ecx
  585e30:	0f b7 56 10          	movzx  edx,WORD PTR [esi+0x10]
  585e34:	52                   	push   edx
  585e35:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  585e39:	50                   	push   eax
  585e3a:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  585e3e:	50                   	push   eax
  585e3f:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  585e43:	51                   	push   ecx
  585e44:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585e48:	57                   	push   edi
  585e49:	52                   	push   edx
  585e4a:	8d 44 24 24          	lea    eax,[esp+0x24]
  585e4e:	50                   	push   eax
  585e4f:	53                   	push   ebx
  585e50:	51                   	push   ecx
  585e51:	e8 7a f4 ff ff       	call   0x5852d0
  585e56:	83 c4 24             	add    esp,0x24
  585e59:	e9 8c 02 00 00       	jmp    0x5860ea
  585e5e:	8b 06                	mov    eax,DWORD PTR [esi]
  585e60:	83 f8 ff             	cmp    eax,0xffffffff
  585e63:	75 04                	jne    0x585e69
  585e65:	33 c0                	xor    eax,eax
  585e67:	eb 06                	jmp    0x585e6f
  585e69:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  585e6d:	03 c2                	add    eax,edx
  585e6f:	0f b7 4e 10          	movzx  ecx,WORD PTR [esi+0x10]
  585e73:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  585e77:	51                   	push   ecx
  585e78:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  585e7c:	50                   	push   eax
  585e7d:	52                   	push   edx
  585e7e:	8d 44 24 24          	lea    eax,[esp+0x24]
  585e82:	50                   	push   eax
  585e83:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  585e87:	57                   	push   edi
  585e88:	51                   	push   ecx
  585e89:	8d 54 24 24          	lea    edx,[esp+0x24]
  585e8d:	52                   	push   edx
  585e8e:	53                   	push   ebx
  585e8f:	50                   	push   eax
  585e90:	e8 fb f4 ff ff       	call   0x585390
  585e95:	83 c4 24             	add    esp,0x24
  585e98:	e9 4d 02 00 00       	jmp    0x5860ea
  585e9d:	8b 06                	mov    eax,DWORD PTR [esi]
  585e9f:	83 f8 ff             	cmp    eax,0xffffffff
  585ea2:	75 04                	jne    0x585ea8
  585ea4:	33 c0                	xor    eax,eax
  585ea6:	eb 06                	jmp    0x585eae
  585ea8:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  585eac:	03 c1                	add    eax,ecx
  585eae:	0f b7 56 10          	movzx  edx,WORD PTR [esi+0x10]
  585eb2:	52                   	push   edx
  585eb3:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  585eb7:	50                   	push   eax
  585eb8:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  585ebc:	50                   	push   eax
  585ebd:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  585ec1:	51                   	push   ecx
  585ec2:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585ec6:	57                   	push   edi
  585ec7:	52                   	push   edx
  585ec8:	8d 44 24 24          	lea    eax,[esp+0x24]
  585ecc:	50                   	push   eax
  585ecd:	53                   	push   ebx
  585ece:	51                   	push   ecx
  585ecf:	e8 7c f5 ff ff       	call   0x585450
  585ed4:	83 c4 24             	add    esp,0x24
  585ed7:	e9 0e 02 00 00       	jmp    0x5860ea
  585edc:	8b 06                	mov    eax,DWORD PTR [esi]
  585ede:	83 f8 ff             	cmp    eax,0xffffffff
  585ee1:	75 04                	jne    0x585ee7
  585ee3:	33 c0                	xor    eax,eax
  585ee5:	eb 06                	jmp    0x585eed
  585ee7:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  585eeb:	03 c2                	add    eax,edx
  585eed:	0f b7 4e 10          	movzx  ecx,WORD PTR [esi+0x10]
  585ef1:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  585ef5:	51                   	push   ecx
  585ef6:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  585efa:	50                   	push   eax
  585efb:	52                   	push   edx
  585efc:	8d 44 24 24          	lea    eax,[esp+0x24]
  585f00:	50                   	push   eax
  585f01:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  585f05:	57                   	push   edi
  585f06:	51                   	push   ecx
  585f07:	8d 54 24 24          	lea    edx,[esp+0x24]
  585f0b:	52                   	push   edx
  585f0c:	53                   	push   ebx
  585f0d:	50                   	push   eax
  585f0e:	e8 fd f5 ff ff       	call   0x585510
  585f13:	83 c4 24             	add    esp,0x24
  585f16:	e9 cf 01 00 00       	jmp    0x5860ea
  585f1b:	8b 06                	mov    eax,DWORD PTR [esi]
  585f1d:	83 f8 ff             	cmp    eax,0xffffffff
  585f20:	75 04                	jne    0x585f26
  585f22:	33 c0                	xor    eax,eax
  585f24:	eb 06                	jmp    0x585f2c
  585f26:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  585f2a:	03 c1                	add    eax,ecx
  585f2c:	0f b7 56 10          	movzx  edx,WORD PTR [esi+0x10]
  585f30:	52                   	push   edx
  585f31:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  585f35:	50                   	push   eax
  585f36:	8d 44 24 20          	lea    eax,[esp+0x20]
  585f3a:	50                   	push   eax
  585f3b:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  585f3f:	51                   	push   ecx
  585f40:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585f44:	57                   	push   edi
  585f45:	52                   	push   edx
  585f46:	8d 44 24 24          	lea    eax,[esp+0x24]
  585f4a:	50                   	push   eax
  585f4b:	53                   	push   ebx
  585f4c:	51                   	push   ecx
  585f4d:	e8 7e f6 ff ff       	call   0x5855d0
  585f52:	83 c4 24             	add    esp,0x24
  585f55:	e9 90 01 00 00       	jmp    0x5860ea
  585f5a:	8b 06                	mov    eax,DWORD PTR [esi]
  585f5c:	83 f8 ff             	cmp    eax,0xffffffff
  585f5f:	75 04                	jne    0x585f65
  585f61:	33 c0                	xor    eax,eax
  585f63:	eb 06                	jmp    0x585f6b
  585f65:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  585f69:	03 c2                	add    eax,edx
  585f6b:	0f b7 4e 10          	movzx  ecx,WORD PTR [esi+0x10]
  585f6f:	51                   	push   ecx
  585f70:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  585f74:	50                   	push   eax
  585f75:	8d 54 24 20          	lea    edx,[esp+0x20]
  585f79:	52                   	push   edx
  585f7a:	8d 44 24 24          	lea    eax,[esp+0x24]
  585f7e:	50                   	push   eax
  585f7f:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  585f83:	57                   	push   edi
  585f84:	51                   	push   ecx
  585f85:	8d 54 24 24          	lea    edx,[esp+0x24]
  585f89:	52                   	push   edx
  585f8a:	53                   	push   ebx
  585f8b:	50                   	push   eax
  585f8c:	e8 ff f6 ff ff       	call   0x585690
  585f91:	83 c4 24             	add    esp,0x24
  585f94:	e9 51 01 00 00       	jmp    0x5860ea
  585f99:	8b 06                	mov    eax,DWORD PTR [esi]
  585f9b:	83 f8 ff             	cmp    eax,0xffffffff
  585f9e:	75 04                	jne    0x585fa4
  585fa0:	33 c0                	xor    eax,eax
  585fa2:	eb 06                	jmp    0x585faa
  585fa4:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  585fa8:	03 c1                	add    eax,ecx
  585faa:	0f b7 56 10          	movzx  edx,WORD PTR [esi+0x10]
  585fae:	52                   	push   edx
  585faf:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  585fb3:	50                   	push   eax
  585fb4:	8d 44 24 20          	lea    eax,[esp+0x20]
  585fb8:	50                   	push   eax
  585fb9:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  585fbd:	51                   	push   ecx
  585fbe:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  585fc2:	57                   	push   edi
  585fc3:	52                   	push   edx
  585fc4:	8d 44 24 24          	lea    eax,[esp+0x24]
  585fc8:	50                   	push   eax
  585fc9:	53                   	push   ebx
  585fca:	51                   	push   ecx
  585fcb:	e8 80 f7 ff ff       	call   0x585750
  585fd0:	83 c4 24             	add    esp,0x24
  585fd3:	e9 12 01 00 00       	jmp    0x5860ea
  585fd8:	8b 06                	mov    eax,DWORD PTR [esi]
  585fda:	83 f8 ff             	cmp    eax,0xffffffff
  585fdd:	75 04                	jne    0x585fe3
  585fdf:	33 c0                	xor    eax,eax
  585fe1:	eb 06                	jmp    0x585fe9
  585fe3:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  585fe7:	03 c2                	add    eax,edx
  585fe9:	0f b7 4e 10          	movzx  ecx,WORD PTR [esi+0x10]
  585fed:	51                   	push   ecx
  585fee:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  585ff2:	50                   	push   eax
  585ff3:	8d 54 24 20          	lea    edx,[esp+0x20]
  585ff7:	52                   	push   edx
  585ff8:	8d 44 24 24          	lea    eax,[esp+0x24]
  585ffc:	50                   	push   eax
  585ffd:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  586001:	57                   	push   edi
  586002:	51                   	push   ecx
  586003:	8d 54 24 24          	lea    edx,[esp+0x24]
  586007:	52                   	push   edx
  586008:	53                   	push   ebx
  586009:	50                   	push   eax
  58600a:	e8 01 f8 ff ff       	call   0x585810
  58600f:	83 c4 24             	add    esp,0x24
  586012:	e9 d3 00 00 00       	jmp    0x5860ea
  586017:	8b 06                	mov    eax,DWORD PTR [esi]
  586019:	83 f8 ff             	cmp    eax,0xffffffff
  58601c:	75 04                	jne    0x586022
  58601e:	33 c0                	xor    eax,eax
  586020:	eb 06                	jmp    0x586028
  586022:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  586026:	03 c1                	add    eax,ecx
  586028:	0f b7 56 10          	movzx  edx,WORD PTR [esi+0x10]
  58602c:	52                   	push   edx
  58602d:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  586031:	50                   	push   eax
  586032:	8d 44 24 20          	lea    eax,[esp+0x20]
  586036:	50                   	push   eax
  586037:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  58603b:	51                   	push   ecx
  58603c:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  586040:	57                   	push   edi
  586041:	52                   	push   edx
  586042:	8d 44 24 24          	lea    eax,[esp+0x24]
  586046:	50                   	push   eax
  586047:	53                   	push   ebx
  586048:	51                   	push   ecx
  586049:	e8 82 f8 ff ff       	call   0x5858d0
  58604e:	83 c4 24             	add    esp,0x24
  586051:	e9 94 00 00 00       	jmp    0x5860ea
  586056:	8b 06                	mov    eax,DWORD PTR [esi]
  586058:	83 f8 ff             	cmp    eax,0xffffffff
  58605b:	75 04                	jne    0x586061
  58605d:	33 c0                	xor    eax,eax
  58605f:	eb 06                	jmp    0x586067
  586061:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  586065:	03 c2                	add    eax,edx
  586067:	0f b7 4e 10          	movzx  ecx,WORD PTR [esi+0x10]
  58606b:	51                   	push   ecx
  58606c:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  586070:	50                   	push   eax
  586071:	8d 54 24 20          	lea    edx,[esp+0x20]
  586075:	52                   	push   edx
  586076:	8d 44 24 24          	lea    eax,[esp+0x24]
  58607a:	50                   	push   eax
  58607b:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  58607f:	57                   	push   edi
  586080:	51                   	push   ecx
  586081:	8d 54 24 24          	lea    edx,[esp+0x24]
  586085:	52                   	push   edx
  586086:	53                   	push   ebx
  586087:	50                   	push   eax
  586088:	e8 03 f9 ff ff       	call   0x585990
  58608d:	83 c4 24             	add    esp,0x24
  586090:	eb 58                	jmp    0x5860ea
  586092:	0f 57 c0             	xorps  xmm0,xmm0
  586095:	f3 0f 11 43 0c       	movss  DWORD PTR [ebx+0xc],xmm0
  58609a:	f3 0f 11 43 08       	movss  DWORD PTR [ebx+0x8],xmm0
  58609f:	f3 0f 11 43 04       	movss  DWORD PTR [ebx+0x4],xmm0
  5860a4:	f3 0f 11 03          	movss  DWORD PTR [ebx],xmm0
  5860a8:	f3 0f 11 47 0c       	movss  DWORD PTR [edi+0xc],xmm0
  5860ad:	eb 2d                	jmp    0x5860dc
  5860af:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  5860b6:	00 
  5860b7:	eb dc                	jmp    0x586095
  5860b9:	0f 57 c0             	xorps  xmm0,xmm0
  5860bc:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  5860c3:	00 
  5860c4:	f3 0f 11 43 08       	movss  DWORD PTR [ebx+0x8],xmm0
  5860c9:	f3 0f 11 43 04       	movss  DWORD PTR [ebx+0x4],xmm0
  5860ce:	f3 0f 11 03          	movss  DWORD PTR [ebx],xmm0
  5860d2:	f3 0f 11 4b 0c       	movss  DWORD PTR [ebx+0xc],xmm1
  5860d7:	f3 0f 11 4f 0c       	movss  DWORD PTR [edi+0xc],xmm1
  5860dc:	f3 0f 11 47 08       	movss  DWORD PTR [edi+0x8],xmm0
  5860e1:	f3 0f 11 47 04       	movss  DWORD PTR [edi+0x4],xmm0
  5860e6:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  5860ea:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  5860ef:	f3 0f 59 03          	mulss  xmm0,DWORD PTR [ebx]
  5860f3:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  5860f8:	f3 0f 11 03          	movss  DWORD PTR [ebx],xmm0
  5860fc:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  586101:	f3 0f 59 43 04       	mulss  xmm0,DWORD PTR [ebx+0x4]
  586106:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  58610b:	f3 0f 11 43 04       	movss  DWORD PTR [ebx+0x4],xmm0
  586110:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  586115:	f3 0f 59 43 08       	mulss  xmm0,DWORD PTR [ebx+0x8]
  58611a:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  58611f:	f3 0f 11 43 08       	movss  DWORD PTR [ebx+0x8],xmm0
  586124:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  586129:	f3 0f 59 43 0c       	mulss  xmm0,DWORD PTR [ebx+0xc]
  58612e:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  586133:	f3 0f 11 43 0c       	movss  DWORD PTR [ebx+0xc],xmm0
  586138:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  58613d:	f3 0f 59 07          	mulss  xmm0,DWORD PTR [edi]
  586141:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  586146:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  58614a:	f3 0f 10 47 04       	movss  xmm0,DWORD PTR [edi+0x4]
  58614f:	f3 0f 59 46 0c       	mulss  xmm0,DWORD PTR [esi+0xc]
  586154:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  586159:	f3 0f 11 47 04       	movss  DWORD PTR [edi+0x4],xmm0
  58615e:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  586163:	f3 0f 59 47 08       	mulss  xmm0,DWORD PTR [edi+0x8]
  586168:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  58616d:	f3 0f 11 47 08       	movss  DWORD PTR [edi+0x8],xmm0
  586172:	f3 0f 10 47 0c       	movss  xmm0,DWORD PTR [edi+0xc]
  586177:	f3 0f 59 46 0c       	mulss  xmm0,DWORD PTR [esi+0xc]
  58617c:	f3 0f 58 46 08       	addss  xmm0,DWORD PTR [esi+0x8]
  586181:	f3 0f 11 47 0c       	movss  DWORD PTR [edi+0xc],xmm0
  586186:	5f                   	pop    edi
  586187:	5e                   	pop    esi
  586188:	5b                   	pop    ebx
  586189:	59                   	pop    ecx
  58618a:	c3                   	ret
