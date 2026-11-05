/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_ProductGenericImpl. Export
   ordinal(s): 1221. Entry VA: 0x102c24d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A7E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl
UserToolUtils_ProductGenericImpl
          (uint param_1,undefined4 param_2,uint *param_3,int *param_4,int *param_5,int *param_6,
          float *param_7)

{
  int iVar1;
  char cVar2;
  undefined **ppuVar3;
  int *piVar4;
  void *pvVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  int iVar8;
  byte bVar9;
  int unaff_EBX;
  float10 fVar10;
  undefined8 uVar11;
  undefined4 uVar12;
  uint *puVar13;
  undefined4 uVar14;
  uint uVar15;
  undefined4 uVar16;
  int *piStack_8c;
  int aiStack_88 [3];
  char *pcStack_7c;
  int iStack_78;
  int iStack_74;
  int iStack_70;
  int iStack_6c;
  undefined1 auStack_68 [4];
  undefined **ppuStack_64;
  int *piStack_60;
  undefined **appuStack_5c [2];
  undefined2 uStack_54;
  undefined2 uStack_52;
  int aiStack_3c [3];
  int aiStack_30 [12];
  
  ppuVar3 = (undefined **)FUN_1055b120();
  aiStack_88[0] = 0;
  aiStack_88[1] = 0;
  aiStack_88[2] = 0;
  pcStack_7c = "UserTool/Host";
  ppuStack_64 = ppuVar3;
  FUN_1006a620(aiStack_88,(short *)&DAT_10ad11c4);
  if ((((ppuVar3 == (undefined **)0x0) || ((param_1 & 0xff000000) != 0x45000000)) ||
      (piVar4 = (int *)(**(code **)(*ppuVar3 + 0xcc))(param_1), piVar4 == (int *)0x0)) ||
     (piVar4 = (int *)(**(code **)(*piVar4 + 0xc))(0xb14a3b07), piVar4 == (int *)0x0))
  goto switchD_102c1597_default;
  switch(param_2) {
  case 0:
    *param_4 = piVar4[2];
    param_4[1] = piVar4[3];
    *param_5 = piVar4[5];
    *param_6 = piVar4[4];
    break;
  case 1:
    FUN_10269ee0(piVar4,aiStack_88);
    break;
  case 2:
    FUN_10269f40(piVar4,aiStack_88);
    break;
  case 3:
    *param_3 = (uint)*(byte *)(piVar4 + 0x19);
    break;
  case 4:
    (**(code **)(*ppuVar3 + 0xd8))(param_1);
    (**(code **)(*piVar4 + 4))();
    break;
  case 5:
    fVar10 = FUN_102c7470(piVar4);
    *param_7 = (float)fVar10;
    break;
  case 6:
    *param_7 = (float)piVar4[0x1c];
    break;
  case 7:
    *param_3 = piVar4[0x1e];
    break;
  case 8:
    *param_3 = (uint)((char)piVar4[0x21] != '\0');
    break;
  case 9:
    *param_3 = (uint)(*(char *)((int)piVar4 + 0x85) != '\0');
    break;
  case 10:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xac);
    }
    break;
  case 0xb:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xb0);
    }
    break;
  case 0xc:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xd0);
    }
    break;
  case 0xd:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_4 = *(int *)(iVar8 + 0xb8);
      param_4[1] = *(int *)(iVar8 + 0xbc);
    }
    break;
  case 0xe:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_4 = *(int *)(iVar8 + 200);
      param_4[1] = *(int *)(iVar8 + 0xcc);
    }
    break;
  case 0xf:
    iVar8 = FUN_102bd4f0(piVar4);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0x88);
      break;
    }
    goto LAB_102c17a1;
  case 0x10:
    iVar8 = FUN_102bd4f0(piVar4);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xa0);
      break;
    }
LAB_102c17a1:
    *param_3 = 0;
    break;
  case 0x11:
    *param_3 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 == 0) {
      iVar8 = FUN_102bd4f0(piVar4);
      if (iVar8 == 0) {
        iVar8 = FUN_102bd510(piVar4);
        if (iVar8 == 0) {
          iVar8 = FUN_102bd530(piVar4);
          if (iVar8 == 0) {
            iVar8 = FUN_100f8770(piVar4);
            if (iVar8 == 0) {
              iVar8 = FUN_100f8790(piVar4);
              if (iVar8 != 0) {
                uVar15 = FUN_1026a970(iVar8);
                *param_3 = uVar15;
              }
            }
            else {
              uVar15 = FUN_1026dbf0(iVar8);
              *param_3 = uVar15;
            }
          }
          else {
            uVar15 = FUN_1026d040(iVar8);
            *param_3 = uVar15;
          }
        }
        else {
          uVar15 = FUN_1026b660(iVar8);
          *param_3 = uVar15;
        }
      }
      else {
        uVar15 = FUN_10270e10(iVar8);
        *param_3 = uVar15;
      }
    }
    else {
      uVar15 = FUN_1026f040(iVar8);
      *param_3 = uVar15;
    }
    break;
  case 0x12:
    *param_3 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 == 0) {
      iVar8 = FUN_102bd4f0(piVar4);
      if (iVar8 == 0) {
        iVar8 = FUN_10263ce0(piVar4);
        if ((iVar8 == 0) || (iVar8 = FUN_1026c040(iVar8), iVar8 == 0)) {
          iVar8 = FUN_102bd510(piVar4);
          if ((iVar8 == 0) || (iVar8 = FUN_1026b100(iVar8), iVar8 == 0)) {
            iVar8 = FUN_102bd530(piVar4);
            if ((iVar8 == 0) || (iVar8 = FUN_1026cbd0(iVar8), iVar8 == 0)) {
              iVar8 = FUN_100f8770(piVar4);
              if ((iVar8 == 0) || (iVar8 = FUN_1026d720(iVar8), iVar8 == 0)) {
                iVar8 = FUN_100f8790(piVar4);
                if ((iVar8 != 0) && (iVar8 = FUN_1026a4b0(iVar8), iVar8 != 0)) {
                  *param_3 = 1;
                }
              }
              else {
                *param_3 = 1;
              }
            }
            else {
              *param_3 = 1;
            }
          }
          else {
            *param_3 = 1;
          }
        }
        else {
          *param_3 = 1;
        }
      }
      else {
        iVar8 = FUN_10270830(iVar8);
        if (iVar8 != 0) {
          *param_3 = 1;
        }
      }
    }
    else {
      iVar8 = FUN_1026eb10(iVar8);
      if (iVar8 != 0) {
        *param_3 = 1;
      }
    }
    break;
  case 0x13:
    uVar15 = *param_3;
    *param_3 = 0xffffffff;
    pvVar5 = (void *)FUN_102bd4d0(piVar4);
    if (pvVar5 == (void *)0x0) {
      pvVar5 = (void *)FUN_102bd4f0(piVar4);
      if (pvVar5 == (void *)0x0) {
        pvVar5 = (void *)FUN_102bd510(piVar4);
        if (pvVar5 == (void *)0x0) {
          pvVar5 = (void *)FUN_102bd530(piVar4);
          if (pvVar5 == (void *)0x0) {
            pvVar5 = (void *)FUN_100f8770(piVar4);
            if (pvVar5 == (void *)0x0) {
              pvVar5 = (void *)FUN_100f8790(piVar4);
              if (pvVar5 != (void *)0x0) {
                uVar15 = FUN_1026a6a0(pvVar5,uVar15);
                *param_3 = uVar15;
              }
            }
            else {
              uVar15 = FUN_1026d910(pvVar5,uVar15);
              *param_3 = uVar15;
            }
          }
          else {
            uVar15 = FUN_1026cdc0(pvVar5,uVar15);
            *param_3 = uVar15;
          }
        }
        else {
          uVar15 = FUN_1026b2f0(pvVar5,uVar15);
          *param_3 = uVar15;
        }
      }
      else {
        uVar15 = FUN_10270b30(pvVar5,uVar15);
        *param_3 = uVar15;
      }
    }
    else {
      uVar15 = FUN_1026e9d0(pvVar5,uVar15);
      *param_3 = uVar15;
    }
    break;
  case 0x14:
    uVar15 = *param_3;
    *param_3 = 0xffffffff;
    pvVar5 = (void *)FUN_102bd4d0(piVar4);
    if (pvVar5 == (void *)0x0) {
      pvVar5 = (void *)FUN_102bd4f0(piVar4);
      if (pvVar5 == (void *)0x0) {
        pvVar5 = (void *)FUN_102bd510(piVar4);
        if (pvVar5 == (void *)0x0) {
          pvVar5 = (void *)FUN_102bd530(piVar4);
          if (pvVar5 == (void *)0x0) {
            pvVar5 = (void *)FUN_100f8770(piVar4);
            if (pvVar5 == (void *)0x0) {
              pvVar5 = (void *)FUN_100f8790(piVar4);
              if (pvVar5 != (void *)0x0) {
                uVar15 = FUN_1026a750(pvVar5,uVar15);
                *param_3 = uVar15;
              }
            }
            else {
              uVar15 = FUN_1026d9c0(pvVar5,uVar15);
              *param_3 = uVar15;
            }
          }
          else {
            uVar15 = FUN_1026ce70(pvVar5,uVar15);
            *param_3 = uVar15;
          }
        }
        else {
          uVar15 = FUN_1026b3a0(pvVar5,uVar15);
          *param_3 = uVar15;
        }
      }
      else {
        uVar15 = FUN_10270bf0(pvVar5,uVar15);
        *param_3 = uVar15;
      }
    }
    else {
      uVar15 = FUN_1026ea70(pvVar5,uVar15);
      *param_3 = uVar15;
    }
    break;
  case 0x15:
    uVar15 = *param_3;
    *param_3 = 0;
    pvVar5 = (void *)FUN_102bd4d0(piVar4);
    if (pvVar5 == (void *)0x0) {
      pvVar5 = (void *)FUN_102bd4f0(piVar4);
      if (pvVar5 == (void *)0x0) {
        pvVar5 = (void *)FUN_102bd510(piVar4);
        if (pvVar5 == (void *)0x0) {
          pvVar5 = (void *)FUN_102bd530(piVar4);
          if (pvVar5 == (void *)0x0) {
            pvVar5 = (void *)FUN_100f8770(piVar4);
            if (pvVar5 == (void *)0x0) {
              pvVar5 = (void *)FUN_100f8790(piVar4);
              if (pvVar5 != (void *)0x0) {
                uVar15 = FUN_1026a500(pvVar5,uVar15);
                *param_3 = uVar15;
              }
            }
            else {
              uVar15 = FUN_1026d770(pvVar5,uVar15);
              *param_3 = uVar15;
            }
          }
          else {
            uVar15 = FUN_1026cc20(pvVar5,uVar15);
            *param_3 = uVar15;
          }
        }
        else {
          uVar15 = FUN_1026b150(pvVar5,uVar15);
          *param_3 = uVar15;
        }
      }
      else {
        uVar15 = FUN_10270880(pvVar5,uVar15);
        *param_3 = uVar15;
      }
    }
    else {
      uVar15 = FUN_1026eb60(pvVar5,uVar15);
      *param_3 = uVar15;
    }
    break;
  case 0x16:
    uVar15 = *param_3;
    *param_3 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 == 0) {
      pvVar5 = (void *)FUN_102bd4f0(piVar4);
      if (pvVar5 != (void *)0x0) {
        uVar15 = FUN_10270930(pvVar5,uVar15);
        *param_3 = uVar15;
      }
    }
    else {
      *param_3 = 0;
    }
    break;
  case 0x17:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_3 = 0;
      piVar4 = (int *)FUN_108e50d0();
      uVar16 = 0;
      uVar14 = 0;
      uVar12 = 0;
      piStack_8c = (int *)0x0;
      iVar1 = *piVar4;
      uVar6 = 0;
      piVar4 = FUN_10323e50((int *)&piStack_8c);
      cVar2 = (**(code **)(iVar1 + 0xc))(iVar8 + 0x88,piVar4,uVar6,uVar12,uVar14,uVar16);
      if (cVar2 != '\0') {
        puVar7 = (undefined4 *)FUN_100cadb0((int *)&piStack_8c);
        FUN_1016b7e0(&piStack_60,puVar7);
        iStack_78 = 0;
        iStack_74 = 0;
        iStack_70 = 0;
        iStack_6c = 0;
        uVar6 = FUN_10722830();
        FUN_1072c690(aiStack_30,uVar6);
        FUN_10729210(piStack_60,aiStack_30);
        piVar4 = &iStack_78;
        uVar15 = 0xa6e5f629;
        pvVar5 = (void *)FUN_1072cb00(aiStack_30,aiStack_3c);
        uVar6 = FUN_1072c2e0(pvVar5,uVar15,piVar4);
        if ((char)uVar6 != '\0') {
          *param_4 = iStack_78;
          param_4[1] = iStack_74;
          *param_5 = iStack_6c;
          *param_6 = iStack_70;
          *param_3 = 1;
        }
        FUN_100d0720(aiStack_30);
        if (piStack_60 != (int *)0x0) {
          (**(code **)(*piStack_60 + 4))();
        }
      }
      if (piStack_8c != (int *)0x0) {
        (**(code **)(*piStack_8c + 4))();
      }
    }
    break;
  case 0x18:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      FUN_1006a590(aiStack_88,(undefined4 *)(iVar8 + 0x1f8));
    }
    break;
  case 0x19:
    iVar8 = FUN_10263ca0(piVar4);
    if (iVar8 == 0) {
      *param_3 = 0;
    }
    else {
      *param_3 = *(uint *)(iVar8 + 0xd4);
    }
    break;
  case 0x1a:
    uVar15 = *param_3;
    puVar13 = (uint *)(piVar4 + 2);
    *param_3 = 0;
    pvVar5 = (void *)FUN_100f8460();
    FUN_100f9ed0(pvVar5,puVar13,uVar15);
    break;
  case 0x1b:
    *param_3 = 0;
    iVar8 = FUN_102bd550(piVar4);
    if ((iVar8 != 0) && (uVar6 = FUN_101d1b30(*(int *)(iVar8 + 0x88)), (char)uVar6 != '\0')) {
      *param_3 = 1;
    }
    break;
  case 0x1c:
    *param_3 = piVar4[0x20];
    break;
  case 0x1d:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 == 0) {
      *param_3 = 1;
    }
    else {
      *param_3 = *(uint *)(iVar8 + 0xe8);
    }
    break;
  case 0x1e:
    *param_3 = (uint)(*(char *)((int)piVar4 + 0x87) != '\0');
    break;
  case 0x1f:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xa4);
    }
    break;
  case 0x20:
    bVar9 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 2) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x21:
    bVar9 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 3) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x22:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_4 = *(int *)(iVar8 + 0x178);
      param_4[1] = *(int *)(iVar8 + 0x17c);
      *param_5 = *(int *)(iVar8 + 0x184);
      *param_6 = *(int *)(iVar8 + 0x180);
      *param_3 = 1;
    }
    break;
  case 0x23:
    bVar9 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 4) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x24:
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      *param_4 = *(int *)(iVar8 + 0xc0);
      param_4[1] = *(int *)(iVar8 + 0xc4);
    }
    break;
  case 0x25:
    bVar9 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      bVar9 = (byte)((uint)*(undefined4 *)(iVar8 + 0x98) >> 0x1a) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x26:
    bVar9 = 0;
    iVar8 = FUN_102bd4d0(piVar4);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 7) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x27:
    uVar11 = FUN_10269b30((int)piVar4);
    *(undefined8 *)param_4 = uVar11;
  }
switchD_102c1597_default:
  appuStack_5c[0] = &PTR_FUN_10aca5b4;
  uStack_54 = 0;
  uStack_52 = 0;
  FUN_10928b90(appuStack_5c,0x13,9,aiStack_88,0x10,1);
  (**(code **)(*ppuStack_64 + 0x50))(appuStack_5c,auStack_68);
  iVar8 = iStack_70;
  ppuStack_64 = &PTR_FUN_10aca5b4;
  if (((uint)appuStack_5c[0] & 4) != 0) {
    FUN_10928a90(&ppuStack_64,'\0');
  }
  if ((2 < (int)(aiStack_88[0] - unaff_EBX & 0xfffffffeU)) && (unaff_EBX != 0)) {
    FUN_10918e90(unaff_EBX);
  }
  return iVar8;
}

