# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060d8e0 <.text+0x20c8e0>:
  60d8e0:	55                   	push   ebp
  60d8e1:	8b ec                	mov    ebp,esp
  60d8e3:	81 ec 78 01 00 00    	sub    esp,0x178
  60d8e9:	56                   	push   esi
  60d8ea:	57                   	push   edi
  60d8eb:	c7 45 b8 00 00 00 00 	mov    DWORD PTR [ebp-0x48],0x0
  60d8f2:	c7 45 b4 00 00 00 00 	mov    DWORD PTR [ebp-0x4c],0x0
  60d8f9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d8fc:	e8 ef 46 91 00       	call   0xf21ff0
  60d901:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
  60d904:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d907:	e8 64 46 f2 ff       	call   0x531f70
  60d90c:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  60d90f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d912:	e8 b9 88 f2 ff       	call   0x5361d0
  60d917:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
  60d91a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d91d:	e8 de 13 62 00       	call   0xc2ed00
  60d922:	83 e8 01             	sub    eax,0x1
  60d925:	f7 d8                	neg    eax
  60d927:	1b c0                	sbb    eax,eax
  60d929:	83 e0 fb             	and    eax,0xfffffffb
  60d92c:	83 c0 06             	add    eax,0x6
  60d92f:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  60d932:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d935:	e8 a6 94 f0 ff       	call   0x516de0
  60d93a:	89 45 c4             	mov    DWORD PTR [ebp-0x3c],eax
  60d93d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d940:	e8 2b e7 f5 ff       	call   0x56c070
  60d945:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  60d948:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  60d94b:	50                   	push   eax
  60d94c:	e8 af a5 00 00       	call   0x617f00
  60d951:	83 c4 04             	add    esp,0x4
  60d954:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  60d957:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d95a:	e8 41 c1 12 00       	call   0x739aa0
  60d95f:	83 e0 02             	and    eax,0x2
  60d962:	0f 85 08 01 00 00    	jne    0x60da70
  60d968:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d96b:	89 4d b8             	mov    DWORD PTR [ebp-0x48],ecx
  60d96e:	6a 00                	push   0x0
  60d970:	6a 00                	push   0x0
  60d972:	6a 00                	push   0x0
  60d974:	6a 00                	push   0x0
  60d976:	68 d4 87 fe 00       	push   0xfe87d4
  60d97b:	6a 34                	push   0x34
  60d97d:	e8 7e 6b ed ff       	call   0x4e4500
  60d982:	83 c4 18             	add    esp,0x18
  60d985:	89 85 60 ff ff ff    	mov    DWORD PTR [ebp-0xa0],eax
  60d98b:	83 bd 60 ff ff ff 00 	cmp    DWORD PTR [ebp-0xa0],0x0
  60d992:	74 13                	je     0x60d9a7
  60d994:	8b 8d 60 ff ff ff    	mov    ecx,DWORD PTR [ebp-0xa0]
  60d99a:	e8 01 c9 00 00       	call   0x61a2a0
  60d99f:	89 85 d8 fe ff ff    	mov    DWORD PTR [ebp-0x128],eax
  60d9a5:	eb 0a                	jmp    0x60d9b1
  60d9a7:	c7 85 d8 fe ff ff 00 	mov    DWORD PTR [ebp-0x128],0x0
  60d9ae:	00 00 00 
  60d9b1:	8b 95 d8 fe ff ff    	mov    edx,DWORD PTR [ebp-0x128]
  60d9b7:	3b 55 b4             	cmp    edx,DWORD PTR [ebp-0x4c]
  60d9ba:	74 4a                	je     0x60da06
  60d9bc:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  60d9bf:	89 85 dc fe ff ff    	mov    DWORD PTR [ebp-0x124],eax
  60d9c5:	83 bd d8 fe ff ff 00 	cmp    DWORD PTR [ebp-0x128],0x0
  60d9cc:	74 13                	je     0x60d9e1
  60d9ce:	8b 8d d8 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x128]
  60d9d4:	8b 11                	mov    edx,DWORD PTR [ecx]
  60d9d6:	8b 8d d8 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x128]
  60d9dc:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  60d9df:	ff d0                	call   eax
  60d9e1:	8b 8d d8 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x128]
  60d9e7:	89 4d b4             	mov    DWORD PTR [ebp-0x4c],ecx
  60d9ea:	83 bd dc fe ff ff 00 	cmp    DWORD PTR [ebp-0x124],0x0
  60d9f1:	74 13                	je     0x60da06
  60d9f3:	8b 95 dc fe ff ff    	mov    edx,DWORD PTR [ebp-0x124]
  60d9f9:	8b 02                	mov    eax,DWORD PTR [edx]
  60d9fb:	8b 8d dc fe ff ff    	mov    ecx,DWORD PTR [ebp-0x124]
  60da01:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  60da04:	ff d2                	call   edx
  60da06:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  60da09:	89 85 d4 fe ff ff    	mov    DWORD PTR [ebp-0x12c],eax
  60da0f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  60da12:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  60da15:	52                   	push   edx
  60da16:	68 00 01 00 00       	push   0x100
  60da1b:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  60da1e:	50                   	push   eax
  60da1f:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  60da22:	51                   	push   ecx
  60da23:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  60da26:	52                   	push   edx
  60da27:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  60da2a:	50                   	push   eax
  60da2b:	8b 4d ac             	mov    ecx,DWORD PTR [ebp-0x54]
  60da2e:	51                   	push   ecx
  60da2f:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  60da32:	52                   	push   edx
  60da33:	8b 85 d4 fe ff ff    	mov    eax,DWORD PTR [ebp-0x12c]
  60da39:	50                   	push   eax
  60da3a:	e8 b1 fa ff ff       	call   0x60d4f0
  60da3f:	83 c4 24             	add    esp,0x24
  60da42:	0f b6 c8             	movzx  ecx,al
  60da45:	85 c9                	test   ecx,ecx
  60da47:	75 25                	jne    0x60da6e
  60da49:	c6 85 5f ff ff ff 00 	mov    BYTE PTR [ebp-0xa1],0x0
  60da50:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
  60da54:	74 0d                	je     0x60da63
  60da56:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60da59:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60da5c:	8b 02                	mov    eax,DWORD PTR [edx]
  60da5e:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  60da61:	ff d2                	call   edx
  60da63:	8a 85 5f ff ff ff    	mov    al,BYTE PTR [ebp-0xa1]
  60da69:	e9 04 05 00 00       	jmp    0x60df72
  60da6e:	eb 46                	jmp    0x60dab6
  60da70:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  60da73:	3b 45 b4             	cmp    eax,DWORD PTR [ebp-0x4c]
  60da76:	74 3e                	je     0x60dab6
  60da78:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60da7b:	89 8d d0 fe ff ff    	mov    DWORD PTR [ebp-0x130],ecx
  60da81:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
  60da85:	74 0d                	je     0x60da94
  60da87:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  60da8a:	8b 02                	mov    eax,DWORD PTR [edx]
  60da8c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60da8f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  60da92:	ff d2                	call   edx
  60da94:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  60da97:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
  60da9a:	83 bd d0 fe ff ff 00 	cmp    DWORD PTR [ebp-0x130],0x0
  60daa1:	74 13                	je     0x60dab6
  60daa3:	8b 8d d0 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x130]
  60daa9:	8b 11                	mov    edx,DWORD PTR [ecx]
  60daab:	8b 8d d0 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x130]
  60dab1:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  60dab4:	ff d0                	call   eax
  60dab6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60dab9:	e8 b2 02 ea ff       	call   0x4add70
  60dabe:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  60dac1:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60dac4:	8b 11                	mov    edx,DWORD PTR [ecx]
  60dac6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60dac9:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  60dacc:	ff d0                	call   eax
  60dace:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
  60dad1:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
  60dad4:	6a 00                	push   0x0
  60dad6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60dad9:	8b 11                	mov    edx,DWORD PTR [ecx]
  60dadb:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60dade:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  60dae1:	ff d0                	call   eax
  60dae3:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
  60dae6:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  60dae9:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60daec:	89 8d cc fe ff ff    	mov    DWORD PTR [ebp-0x134],ecx
  60daf2:	8b 8d cc fe ff ff    	mov    ecx,DWORD PTR [ebp-0x134]
  60daf8:	e8 e3 92 f0 ff       	call   0x516de0
  60dafd:	3b 45 c4             	cmp    eax,DWORD PTR [ebp-0x3c]
  60db00:	73 17                	jae    0x60db19
  60db02:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60db05:	89 95 c8 fe ff ff    	mov    DWORD PTR [ebp-0x138],edx
  60db0b:	8b 8d c8 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x138]
  60db11:	e8 ca 92 f0 ff       	call   0x516de0
  60db16:	89 45 c4             	mov    DWORD PTR [ebp-0x3c],eax
  60db19:	c7 45 a8 00 00 00 00 	mov    DWORD PTR [ebp-0x58],0x0
  60db20:	eb 09                	jmp    0x60db2b
  60db22:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60db25:	83 c0 01             	add    eax,0x1
  60db28:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
  60db2b:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
  60db2e:	3b 4d cc             	cmp    ecx,DWORD PTR [ebp-0x34]
  60db31:	0f 83 eb 03 00 00    	jae    0x60df22
  60db37:	c7 45 a4 00 00 00 00 	mov    DWORD PTR [ebp-0x5c],0x0
  60db3e:	eb 09                	jmp    0x60db49
  60db40:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  60db43:	83 c2 01             	add    edx,0x1
  60db46:	89 55 a4             	mov    DWORD PTR [ebp-0x5c],edx
  60db49:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
  60db4c:	3b 45 c4             	cmp    eax,DWORD PTR [ebp-0x3c]
  60db4f:	0f 83 c8 03 00 00    	jae    0x60df1d
  60db55:	8b 4d a4             	mov    ecx,DWORD PTR [ebp-0x5c]
  60db58:	51                   	push   ecx
  60db59:	8b 55 bc             	mov    edx,DWORD PTR [ebp-0x44]
  60db5c:	52                   	push   edx
  60db5d:	e8 7e a3 00 00       	call   0x617ee0
  60db62:	83 c4 08             	add    esp,0x8
  60db65:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  60db68:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
  60db6b:	50                   	push   eax
  60db6c:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  60db6f:	51                   	push   ecx
  60db70:	e8 6b a3 00 00       	call   0x617ee0
  60db75:	83 c4 08             	add    esp,0x8
  60db78:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  60db7b:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  60db7e:	52                   	push   edx
  60db7f:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  60db82:	50                   	push   eax
  60db83:	e8 58 a3 00 00       	call   0x617ee0
  60db88:	83 c4 08             	add    esp,0x8
  60db8b:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
  60db8e:	8b 4d a0             	mov    ecx,DWORD PTR [ebp-0x60]
  60db91:	51                   	push   ecx
  60db92:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60db95:	e8 26 a4 00 00       	call   0x617fc0
  60db9a:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
  60db9d:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
  60dba0:	52                   	push   edx
  60dba1:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60dba4:	e8 17 a3 00 00       	call   0x617ec0
  60dba9:	0f af 45 8c          	imul   eax,DWORD PTR [ebp-0x74]
  60dbad:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
  60dbb0:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
  60dbb3:	50                   	push   eax
  60dbb4:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60dbb7:	e8 14 a3 00 00       	call   0x617ed0
  60dbbc:	0f af 45 98          	imul   eax,DWORD PTR [ebp-0x68]
  60dbc0:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
  60dbc3:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  60dbc6:	2b 4d fc             	sub    ecx,DWORD PTR [ebp-0x4]
  60dbc9:	3b 4d 94             	cmp    ecx,DWORD PTR [ebp-0x6c]
  60dbcc:	73 25                	jae    0x60dbf3
  60dbce:	c6 85 5e ff ff ff 00 	mov    BYTE PTR [ebp-0xa2],0x0
  60dbd5:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
  60dbd9:	74 0d                	je     0x60dbe8
  60dbdb:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60dbde:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60dbe1:	8b 02                	mov    eax,DWORD PTR [edx]
  60dbe3:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  60dbe6:	ff d2                	call   edx
  60dbe8:	8a 85 5e ff ff ff    	mov    al,BYTE PTR [ebp-0xa2]
  60dbee:	e9 7f 03 00 00       	jmp    0x60df72
  60dbf3:	0f b6 45 14          	movzx  eax,BYTE PTR [ebp+0x14]
  60dbf7:	85 c0                	test   eax,eax
  60dbf9:	0f 84 b8 02 00 00    	je     0x60deb7
  60dbff:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60dc02:	83 39 08             	cmp    DWORD PTR [ecx],0x8
  60dc05:	77 0f                	ja     0x60dc16
  60dc07:	8b 55 b0             	mov    edx,DWORD PTR [ebp-0x50]
  60dc0a:	0f b6 42 18          	movzx  eax,BYTE PTR [edx+0x18]
  60dc0e:	85 c0                	test   eax,eax
  60dc10:	0f 84 a1 02 00 00    	je     0x60deb7
  60dc16:	8b 4d 9c             	mov    ecx,DWORD PTR [ebp-0x64]
  60dc19:	51                   	push   ecx
  60dc1a:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60dc1d:	e8 9e a2 00 00       	call   0x617ec0
  60dc22:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
  60dc25:	8b 55 90             	mov    edx,DWORD PTR [ebp-0x70]
  60dc28:	52                   	push   edx
  60dc29:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60dc2c:	e8 9f a2 00 00       	call   0x617ed0
  60dc31:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
  60dc34:	c7 45 80 00 00 00 00 	mov    DWORD PTR [ebp-0x80],0x0
  60dc3b:	eb 09                	jmp    0x60dc46
  60dc3d:	8b 45 80             	mov    eax,DWORD PTR [ebp-0x80]
  60dc40:	83 c0 01             	add    eax,0x1
  60dc43:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
  60dc46:	8b 4d 80             	mov    ecx,DWORD PTR [ebp-0x80]
  60dc49:	3b 4d ac             	cmp    ecx,DWORD PTR [ebp-0x54]
  60dc4c:	0f 83 63 02 00 00    	jae    0x60deb5
  60dc52:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  60dc55:	89 95 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],edx
  60dc5b:	83 7d ac 01          	cmp    DWORD PTR [ebp-0x54],0x1
  60dc5f:	76 33                	jbe    0x60dc94
  60dc61:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  60dc64:	89 85 c4 fe ff ff    	mov    DWORD PTR [ebp-0x13c],eax
  60dc6a:	6a 00                	push   0x0
  60dc6c:	8b 4d a4             	mov    ecx,DWORD PTR [ebp-0x5c]
  60dc6f:	51                   	push   ecx
  60dc70:	8b 55 80             	mov    edx,DWORD PTR [ebp-0x80]
  60dc73:	52                   	push   edx
  60dc74:	8d 85 34 ff ff ff    	lea    eax,[ebp-0xcc]
  60dc7a:	50                   	push   eax
  60dc7b:	8b 8d c4 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x13c]
  60dc81:	e8 2a bb 00 00       	call   0x6197b0
  60dc86:	b9 0a 00 00 00       	mov    ecx,0xa
  60dc8b:	8b f0                	mov    esi,eax
  60dc8d:	8d 7d d4             	lea    edi,[ebp-0x2c]
  60dc90:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  60dc92:	eb 66                	jmp    0x60dcfa
  60dc94:	83 7d cc 01          	cmp    DWORD PTR [ebp-0x34],0x1
  60dc98:	76 33                	jbe    0x60dccd
  60dc9a:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60dc9d:	89 8d c0 fe ff ff    	mov    DWORD PTR [ebp-0x140],ecx
  60dca3:	6a 00                	push   0x0
  60dca5:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  60dca8:	52                   	push   edx
  60dca9:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60dcac:	50                   	push   eax
  60dcad:	8d 8d 0c ff ff ff    	lea    ecx,[ebp-0xf4]
  60dcb3:	51                   	push   ecx
  60dcb4:	8b 8d c0 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x140]
  60dcba:	e8 31 ba 00 00       	call   0x6196f0
  60dcbf:	b9 0a 00 00 00       	mov    ecx,0xa
  60dcc4:	8b f0                	mov    esi,eax
  60dcc6:	8d 7d d4             	lea    edi,[ebp-0x2c]
  60dcc9:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  60dccb:	eb 2d                	jmp    0x60dcfa
  60dccd:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60dcd0:	89 95 bc fe ff ff    	mov    DWORD PTR [ebp-0x144],edx
  60dcd6:	6a 00                	push   0x0
  60dcd8:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
  60dcdb:	50                   	push   eax
  60dcdc:	8d 8d e4 fe ff ff    	lea    ecx,[ebp-0x11c]
  60dce2:	51                   	push   ecx
  60dce3:	8b 8d bc fe ff ff    	mov    ecx,DWORD PTR [ebp-0x144]
  60dce9:	e8 42 b8 00 00       	call   0x619530
  60dcee:	b9 0a 00 00 00       	mov    ecx,0xa
  60dcf3:	8b f0                	mov    esi,eax
  60dcf5:	8d 7d d4             	lea    edi,[ebp-0x2c]
  60dcf8:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  60dcfa:	83 7d d4 00          	cmp    DWORD PTR [ebp-0x2c],0x0
  60dcfe:	75 25                	jne    0x60dd25
  60dd00:	c6 85 e3 fe ff ff 00 	mov    BYTE PTR [ebp-0x11d],0x0
  60dd07:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
  60dd0b:	74 0d                	je     0x60dd1a
  60dd0d:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60dd10:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60dd13:	8b 02                	mov    eax,DWORD PTR [edx]
  60dd15:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  60dd18:	ff d2                	call   edx
  60dd1a:	8a 85 e3 fe ff ff    	mov    al,BYTE PTR [ebp-0x11d]
  60dd20:	e9 4d 02 00 00       	jmp    0x60df72
  60dd25:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  60dd28:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
  60dd2e:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60dd31:	0f b6 51 18          	movzx  edx,BYTE PTR [ecx+0x18]
  60dd35:	85 d2                	test   edx,edx
  60dd37:	74 65                	je     0x60dd9e
  60dd39:	c7 85 74 ff ff ff 00 	mov    DWORD PTR [ebp-0x8c],0x0
  60dd40:	00 00 00 
  60dd43:	eb 0f                	jmp    0x60dd54
  60dd45:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
  60dd4b:	83 c0 01             	add    eax,0x1
  60dd4e:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
  60dd54:	8b 8d 74 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x8c]
  60dd5a:	3b 4d 88             	cmp    ecx,DWORD PTR [ebp-0x78]
  60dd5d:	73 3a                	jae    0x60dd99
  60dd5f:	8b 55 8c             	mov    edx,DWORD PTR [ebp-0x74]
  60dd62:	52                   	push   edx
  60dd63:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
  60dd69:	50                   	push   eax
  60dd6a:	8b 8d 78 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x88]
  60dd70:	51                   	push   ecx
  60dd71:	e8 ea f6 ff ff       	call   0x60d460
  60dd76:	83 c4 0c             	add    esp,0xc
  60dd79:	8b 95 7c ff ff ff    	mov    edx,DWORD PTR [ebp-0x84]
  60dd7f:	03 55 8c             	add    edx,DWORD PTR [ebp-0x74]
  60dd82:	89 95 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],edx
  60dd88:	8b 85 78 ff ff ff    	mov    eax,DWORD PTR [ebp-0x88]
  60dd8e:	03 45 d8             	add    eax,DWORD PTR [ebp-0x28]
  60dd91:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
  60dd97:	eb ac                	jmp    0x60dd45
  60dd99:	e9 fd 00 00 00       	jmp    0x60de9b
  60dd9e:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  60dda1:	8b 11                	mov    edx,DWORD PTR [ecx]
  60dda3:	89 95 88 fe ff ff    	mov    DWORD PTR [ebp-0x178],edx
  60dda9:	8b 85 88 fe ff ff    	mov    eax,DWORD PTR [ebp-0x178]
  60ddaf:	83 e8 10             	sub    eax,0x10
  60ddb2:	89 85 88 fe ff ff    	mov    DWORD PTR [ebp-0x178],eax
  60ddb8:	83 bd 88 fe ff ff 70 	cmp    DWORD PTR [ebp-0x178],0x70
  60ddbf:	0f 87 d6 00 00 00    	ja     0x60de9b
  60ddc5:	8b 8d 88 fe ff ff    	mov    ecx,DWORD PTR [ebp-0x178]
  60ddcb:	0f b6 91 84 df 60 00 	movzx  edx,BYTE PTR [ecx+0x60df84]
  60ddd2:	ff 24 95 78 df 60 00 	jmp    DWORD PTR [edx*4+0x60df78]
  60ddd9:	c7 85 70 ff ff ff 00 	mov    DWORD PTR [ebp-0x90],0x0
  60dde0:	00 00 00 
  60dde3:	eb 0f                	jmp    0x60ddf4
  60dde5:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
  60ddeb:	83 c0 01             	add    eax,0x1
  60ddee:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
  60ddf4:	8b 8d 70 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x90]
  60ddfa:	3b 4d 88             	cmp    ecx,DWORD PTR [ebp-0x78]
  60ddfd:	73 3a                	jae    0x60de39
  60ddff:	8b 55 8c             	mov    edx,DWORD PTR [ebp-0x74]
  60de02:	52                   	push   edx
  60de03:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
  60de09:	50                   	push   eax
  60de0a:	8b 8d 78 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x88]
  60de10:	51                   	push   ecx
  60de11:	e8 4a f6 ff ff       	call   0x60d460
  60de16:	83 c4 0c             	add    esp,0xc
  60de19:	8b 95 7c ff ff ff    	mov    edx,DWORD PTR [ebp-0x84]
  60de1f:	03 55 8c             	add    edx,DWORD PTR [ebp-0x74]
  60de22:	89 95 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],edx
  60de28:	8b 85 78 ff ff ff    	mov    eax,DWORD PTR [ebp-0x88]
  60de2e:	03 45 d8             	add    eax,DWORD PTR [ebp-0x28]
  60de31:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
  60de37:	eb ac                	jmp    0x60dde5
  60de39:	eb 60                	jmp    0x60de9b
  60de3b:	c7 85 6c ff ff ff 00 	mov    DWORD PTR [ebp-0x94],0x0
  60de42:	00 00 00 
  60de45:	eb 0f                	jmp    0x60de56
  60de47:	8b 8d 6c ff ff ff    	mov    ecx,DWORD PTR [ebp-0x94]
  60de4d:	83 c1 01             	add    ecx,0x1
  60de50:	89 8d 6c ff ff ff    	mov    DWORD PTR [ebp-0x94],ecx
  60de56:	8b 95 6c ff ff ff    	mov    edx,DWORD PTR [ebp-0x94]
  60de5c:	3b 55 88             	cmp    edx,DWORD PTR [ebp-0x78]
  60de5f:	73 3a                	jae    0x60de9b
  60de61:	8b 45 8c             	mov    eax,DWORD PTR [ebp-0x74]
  60de64:	50                   	push   eax
  60de65:	8b 8d 7c ff ff ff    	mov    ecx,DWORD PTR [ebp-0x84]
  60de6b:	51                   	push   ecx
  60de6c:	8b 95 78 ff ff ff    	mov    edx,DWORD PTR [ebp-0x88]
  60de72:	52                   	push   edx
  60de73:	e8 b8 f5 ff ff       	call   0x60d430
  60de78:	83 c4 0c             	add    esp,0xc
  60de7b:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
  60de81:	03 45 8c             	add    eax,DWORD PTR [ebp-0x74]
  60de84:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
  60de8a:	8b 8d 78 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x88]
  60de90:	03 4d d8             	add    ecx,DWORD PTR [ebp-0x28]
  60de93:	89 8d 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],ecx
  60de99:	eb ac                	jmp    0x60de47
  60de9b:	8d 55 d4             	lea    edx,[ebp-0x2c]
  60de9e:	52                   	push   edx
  60de9f:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60dea2:	e8 f9 b9 00 00       	call   0x6198a0
  60dea7:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  60deaa:	03 45 98             	add    eax,DWORD PTR [ebp-0x68]
  60dead:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  60deb0:	e9 88 fd ff ff       	jmp    0x60dc3d
  60deb5:	eb 61                	jmp    0x60df18
  60deb7:	83 7d ac 01          	cmp    DWORD PTR [ebp-0x54],0x1
  60debb:	76 1a                	jbe    0x60ded7
  60debd:	8b 4d 98             	mov    ecx,DWORD PTR [ebp-0x68]
  60dec0:	51                   	push   ecx
  60dec1:	8b 55 8c             	mov    edx,DWORD PTR [ebp-0x74]
  60dec4:	52                   	push   edx
  60dec5:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  60dec8:	50                   	push   eax
  60dec9:	8b 4d a4             	mov    ecx,DWORD PTR [ebp-0x5c]
  60decc:	51                   	push   ecx
  60decd:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60ded0:	e8 1b bc 00 00       	call   0x619af0
  60ded5:	eb 38                	jmp    0x60df0f
  60ded7:	83 7d cc 01          	cmp    DWORD PTR [ebp-0x34],0x1
  60dedb:	76 1a                	jbe    0x60def7
  60dedd:	8b 55 8c             	mov    edx,DWORD PTR [ebp-0x74]
  60dee0:	52                   	push   edx
  60dee1:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  60dee4:	50                   	push   eax
  60dee5:	8b 4d a4             	mov    ecx,DWORD PTR [ebp-0x5c]
  60dee8:	51                   	push   ecx
  60dee9:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
  60deec:	52                   	push   edx
  60deed:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60def0:	e8 2b bb 00 00       	call   0x619a20
  60def5:	eb 18                	jmp    0x60df0f
  60def7:	6a 00                	push   0x0
  60def9:	6a 00                	push   0x0
  60defb:	8b 45 8c             	mov    eax,DWORD PTR [ebp-0x74]
  60defe:	50                   	push   eax
  60deff:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  60df02:	51                   	push   ecx
  60df03:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  60df06:	52                   	push   edx
  60df07:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60df0a:	e8 01 ba 00 00       	call   0x619910
  60df0f:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  60df12:	03 45 94             	add    eax,DWORD PTR [ebp-0x6c]
  60df15:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  60df18:	e9 23 fc ff ff       	jmp    0x60db40
  60df1d:	e9 00 fc ff ff       	jmp    0x60db22
  60df22:	83 7d b8 00          	cmp    DWORD PTR [ebp-0x48],0x0
  60df26:	74 2a                	je     0x60df52
  60df28:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60df2b:	89 8d 64 ff ff ff    	mov    DWORD PTR [ebp-0x9c],ecx
  60df31:	e8 da 09 00 00       	call   0x60e910
  60df36:	89 85 68 ff ff ff    	mov    DWORD PTR [ebp-0x98],eax
  60df3c:	8b 55 b8             	mov    edx,DWORD PTR [ebp-0x48]
  60df3f:	52                   	push   edx
  60df40:	8b 85 64 ff ff ff    	mov    eax,DWORD PTR [ebp-0x9c]
  60df46:	50                   	push   eax
  60df47:	8b 8d 68 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x98]
  60df4d:	e8 0e 13 00 00       	call   0x60f260
  60df52:	c6 85 e2 fe ff ff 01 	mov    BYTE PTR [ebp-0x11e],0x1
  60df59:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
  60df5d:	74 0d                	je     0x60df6c
  60df5f:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60df62:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60df65:	8b 02                	mov    eax,DWORD PTR [edx]
  60df67:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  60df6a:	ff d2                	call   edx
  60df6c:	8a 85 e2 fe ff ff    	mov    al,BYTE PTR [ebp-0x11e]
  60df72:	5f                   	pop    edi
  60df73:	5e                   	pop    esi
  60df74:	8b e5                	mov    esp,ebp
  60df76:	5d                   	pop    ebp
  60df77:	c3                   	ret
