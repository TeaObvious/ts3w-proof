# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00b60f00, 0x00b61105); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00b60f00 <.text+0x75ff00>:
  b60f00:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  b60f04:	83 ec 58             	sub    esp,0x58
  b60f07:	53                   	push   ebx
  b60f08:	55                   	push   ebp
  b60f09:	33 ed                	xor    ebp,ebp
  b60f0b:	3b c5                	cmp    eax,ebp
  b60f0d:	8b d9                	mov    ebx,ecx
  b60f0f:	0f 84 b3 00 00 00    	je     0xb60fc8
  b60f15:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  b60f19:	51                   	push   ecx
  b60f1a:	50                   	push   eax
  b60f1b:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  b60f1f:	e8 bc 84 c7 ff       	call   0x7d93e0
  b60f24:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  b60f28:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  b60f2c:	52                   	push   edx
  b60f2d:	8d 44 24 6c          	lea    eax,[esp+0x6c]
  b60f31:	50                   	push   eax
  b60f32:	51                   	push   ecx
  b60f33:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  b60f37:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  b60f3b:	89 6c 24 24          	mov    DWORD PTR [esp+0x24],ebp
  b60f3f:	c7 44 24 28 3c f1 06 	mov    DWORD PTR [esp+0x28],0x106f13c
  b60f46:	01 
  b60f47:	89 6c 24 74          	mov    DWORD PTR [esp+0x74],ebp
  b60f4b:	e8 30 ca 97 ff       	call   0x4dd980
  b60f50:	83 c4 0c             	add    esp,0xc
  b60f53:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b60f57:	50                   	push   eax
  b60f58:	e8 93 6a c7 ff       	call   0x7d79f0
  b60f5d:	80 7c 24 34 00       	cmp    BYTE PTR [esp+0x34],0x0
  b60f62:	74 5b                	je     0xb60fbf
  b60f64:	83 7c 24 68 02       	cmp    DWORD PTR [esp+0x68],0x2
  b60f69:	7c 54                	jl     0xb60fbf
  b60f6b:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  b60f6f:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  b60f73:	52                   	push   edx
  b60f74:	8d 44 24 10          	lea    eax,[esp+0x10]
  b60f78:	50                   	push   eax
  b60f79:	51                   	push   ecx
  b60f7a:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  b60f7e:	e8 fd c9 97 ff       	call   0x4dd980
  b60f83:	83 c4 0c             	add    esp,0xc
  b60f86:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b60f8a:	50                   	push   eax
  b60f8b:	e8 60 6a c7 ff       	call   0x7d79f0
  b60f90:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  b60f94:	3b c5                	cmp    eax,ebp
  b60f96:	7e 3a                	jle    0xb60fd2
  b60f98:	8d 54 24 10          	lea    edx,[esp+0x10]
  b60f9c:	52                   	push   edx
  b60f9d:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  b60fa1:	51                   	push   ecx
  b60fa2:	50                   	push   eax
  b60fa3:	8b cb                	mov    ecx,ebx
  b60fa5:	e8 a6 f7 ff ff       	call   0xb60750
  b60faa:	84 c0                	test   al,al
  b60fac:	75 24                	jne    0xb60fd2
  b60fae:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  b60fb2:	3b c5                	cmp    eax,ebp
  b60fb4:	74 09                	je     0xb60fbf
  b60fb6:	50                   	push   eax
  b60fb7:	e8 24 35 98 ff       	call   0x4e44e0
  b60fbc:	83 c4 04             	add    esp,0x4
  b60fbf:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b60fc3:	e8 c8 69 c7 ff       	call   0x7d7990
  b60fc8:	5d                   	pop    ebp
  b60fc9:	32 c0                	xor    al,al
  b60fcb:	5b                   	pop    ebx
  b60fcc:	83 c4 58             	add    esp,0x58
  b60fcf:	c2 08 00             	ret    0x8
  b60fd2:	83 7c 24 68 03       	cmp    DWORD PTR [esp+0x68],0x3
  b60fd7:	56                   	push   esi
  b60fd8:	0f 8c d1 00 00 00    	jl     0xb610af
  b60fde:	8b 53 5c             	mov    edx,DWORD PTR [ebx+0x5c]
  b60fe1:	8d 73 5c             	lea    esi,[ebx+0x5c]
  b60fe4:	57                   	push   edi
  b60fe5:	8d 44 24 10          	lea    eax,[esp+0x10]
  b60fe9:	50                   	push   eax
  b60fea:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  b60fee:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  b60ff1:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  b60ff5:	e8 b6 74 a0 ff       	call   0x5684b0
  b60ffa:	33 ff                	xor    edi,edi
  b60ffc:	39 6c 24 10          	cmp    DWORD PTR [esp+0x10],ebp
  b61000:	76 42                	jbe    0xb61044
  b61002:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  b61006:	51                   	push   ecx
  b61007:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  b6100b:	e8 10 b1 ff ff       	call   0xb5c120
  b61010:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b61013:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  b61016:	73 16                	jae    0xb6102e
  b61018:	3b cd                	cmp    ecx,ebp
  b6101a:	8d 51 28             	lea    edx,[ecx+0x28]
  b6101d:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  b61020:	74 19                	je     0xb6103b
  b61022:	8d 44 24 40          	lea    eax,[esp+0x40]
  b61026:	50                   	push   eax
  b61027:	e8 f4 ae ff ff       	call   0xb5bf20
  b6102c:	eb 0d                	jmp    0xb6103b
  b6102e:	8d 54 24 40          	lea    edx,[esp+0x40]
  b61032:	52                   	push   edx
  b61033:	51                   	push   ecx
  b61034:	8b ce                	mov    ecx,esi
  b61036:	e8 c5 db ff ff       	call   0xb5ec00
  b6103b:	83 c7 01             	add    edi,0x1
  b6103e:	3b 7c 24 10          	cmp    edi,DWORD PTR [esp+0x10]
  b61042:	72 be                	jb     0xb61002
  b61044:	8d 6b 6c             	lea    ebp,[ebx+0x6c]
  b61047:	8b cd                	mov    ecx,ebp
  b61049:	e8 52 13 ac ff       	call   0x6223a0
  b6104e:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  b61052:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  b61056:	50                   	push   eax
  b61057:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  b6105b:	51                   	push   ecx
  b6105c:	52                   	push   edx
  b6105d:	c7 44 24 78 00 00 00 	mov    DWORD PTR [esp+0x78],0x0
  b61064:	00 
  b61065:	e8 16 c9 97 ff       	call   0x4dd980
  b6106a:	83 c4 0c             	add    esp,0xc
  b6106d:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  b61071:	50                   	push   eax
  b61072:	e8 79 69 c7 ff       	call   0x7d79f0
  b61077:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  b6107b:	85 c0                	test   eax,eax
  b6107d:	76 2d                	jbe    0xb610ac
  b6107f:	50                   	push   eax
  b61080:	8b cd                	mov    ecx,ebp
  b61082:	e8 09 fe ff ff       	call   0xb60e90
  b61087:	33 f6                	xor    esi,esi
  b61089:	39 74 24 6c          	cmp    DWORD PTR [esp+0x6c],esi
  b6108d:	76 1d                	jbe    0xb610ac
  b6108f:	33 ff                	xor    edi,edi
  b61091:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  b61094:	03 c7                	add    eax,edi
  b61096:	50                   	push   eax
  b61097:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  b6109b:	e8 10 89 c7 ff       	call   0x7d99b0
  b610a0:	83 c6 01             	add    esi,0x1
  b610a3:	83 c7 10             	add    edi,0x10
  b610a6:	3b 74 24 6c          	cmp    esi,DWORD PTR [esp+0x6c]
  b610aa:	72 e5                	jb     0xb61091
  b610ac:	33 ed                	xor    ebp,ebp
  b610ae:	5f                   	pop    edi
  b610af:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  b610b3:	3b 74 24 18          	cmp    esi,DWORD PTR [esp+0x18]
  b610b7:	74 2b                	je     0xb610e4
  b610b9:	80 bb b4 00 00 00 00 	cmp    BYTE PTR [ebx+0xb4],0x0
  b610c0:	75 16                	jne    0xb610d8
  b610c2:	6a 02                	push   0x2
  b610c4:	68 c8 ea 06 01       	push   0x106eac8
  b610c9:	8d 4b 18             	lea    ecx,[ebx+0x18]
  b610cc:	e8 1f 96 ab ff       	call   0x61a6f0
  b610d1:	c6 83 b4 00 00 00 01 	mov    BYTE PTR [ebx+0xb4],0x1
  b610d8:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b610dc:	51                   	push   ecx
  b610dd:	8b cb                	mov    ecx,ebx
  b610df:	e8 cc bd ff ff       	call   0xb5ceb0
  b610e4:	3b f5                	cmp    esi,ebp
  b610e6:	74 09                	je     0xb610f1
  b610e8:	56                   	push   esi
  b610e9:	e8 f2 33 98 ff       	call   0x4e44e0
  b610ee:	83 c4 04             	add    esp,0x4
  b610f1:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  b610f5:	e8 96 68 c7 ff       	call   0x7d7990
  b610fa:	5e                   	pop    esi
  b610fb:	5d                   	pop    ebp
  b610fc:	b0 01                	mov    al,0x1
  b610fe:	5b                   	pop    ebx
  b610ff:	83 c4 58             	add    esp,0x58
  b61102:	c2 08 00             	ret    0x8
