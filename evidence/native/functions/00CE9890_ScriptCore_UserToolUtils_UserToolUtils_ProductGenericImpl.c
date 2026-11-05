/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e00 (original PC1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_ProductGenericImpl [assembly=ScriptCore token=0x06000BE7;
   productHandle: System.UInt32, funcID: System.UInt32, retUint32: System.UInt32&, instance:
   System.UInt64&, group: System.UInt32&, type: System.UInt32&, retFloat: System.Single&;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 catalog/template instruction contract): Existing managed registration
   identity preserved. Physicalcdecl seven stack arguments plainRET: producthandle,operation
   andfiveoutput/input pointers. Handle domain highbyte45, interfaceB14A3B07, operation0..27hex
   checked before40-way switch atCEA3CC. Object cases17count,19fullID-to-ordinal,20ordinal-to-fullID
   callC983E0/C97D70/C97E10 respectively (case numbers decimal); other product families have
   distinct helpers. Price case5 callsCEF6B0. Fullbodyandreferenced160-byte switch table retained;
   do not infer unsupported operations from truncated prefixes. */

int __cdecl
ScriptCore_UserToolUtils__UserToolUtils_ProductGenericImpl
          (uint param_1,undefined4 param_2,uint *param_3,int *param_4,int *param_5,int *param_6,
          float *param_7)

{
  int iVar1;
  bool bVar2;
  char cVar3;
  undefined **ppuVar4;
  int *piVar5;
  void *pvVar6;
  undefined4 *puVar7;
  uint *this;
  int iVar8;
  byte bVar9;
  void *unaff_EBX;
  float10 fVar10;
  undefined8 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  uint *puVar14;
  undefined4 uVar15;
  uint uVar16;
  undefined4 uVar17;
  int *piStack_8c;
  int aiStack_88 [3];
  char *pcStack_7c;
  uint uStack_78;
  int iStack_74;
  int iStack_70;
  int iStack_6c;
  undefined1 auStack_68 [4];
  undefined **ppuStack_64;
  int *piStack_60;
  undefined **appuStack_5c [2];
  undefined2 uStack_54;
  undefined2 uStack_52;
  uint auStack_3c [3];
  int aiStack_30 [12];
  
  ppuVar4 = (undefined **)GetGlobalInterfacePointer_11D5BBC();
  aiStack_88[0] = 0;
  aiStack_88[1] = 0;
  aiStack_88[2] = 0;
  pcStack_7c = "UserTool/Host";
  ppuStack_64 = ppuVar4;
  FUN_0040b590(aiStack_88,(short *)&DAT_01044eb0);
  if ((((ppuVar4 == (undefined **)0x0) || ((param_1 & 0xff000000) != 0x45000000)) ||
      (piVar5 = (int *)(**(code **)(*ppuVar4 + 0xcc))(param_1), piVar5 == (int *)0x0)) ||
     (piVar5 = (int *)(**(code **)(*piVar5 + 0xc))(0xb14a3b07), piVar5 == (int *)0x0))
  goto switchD_00ce9927_default;
                    /* Analyst: 40-way operation table; all40targets retained with original bytes.
                        */
  switch(param_2) {
  case 0:
    *param_4 = piVar5[2];
    param_4[1] = piVar5[3];
    *param_5 = piVar5[5];
    *param_6 = piVar5[4];
    break;
  case 1:
    FUN_00c93370(piVar5,aiStack_88);
    break;
  case 2:
    FUN_00c933d0(piVar5,aiStack_88);
    break;
  case 3:
    *param_3 = (uint)*(byte *)(piVar5 + 0x19);
    break;
  case 4:
    (**(code **)(*ppuVar4 + 0xd8))(param_1);
    (**(code **)(*piVar5 + 4))();
    break;
  case 5:
    fVar10 = CatalogProduct_ComputeDisplayPrice(piVar5);
    *param_7 = (float)fVar10;
    break;
  case 6:
    *param_7 = (float)piVar5[0x1c];
    break;
  case 7:
    *param_3 = piVar5[0x1e];
    break;
  case 8:
    *param_3 = (uint)((char)piVar5[0x21] != '\0');
    break;
  case 9:
    *param_3 = (uint)(*(char *)((int)piVar5 + 0x85) != '\0');
    break;
  case 10:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xac);
    }
    break;
  case 0xb:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xb0);
    }
    break;
  case 0xc:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xd0);
    }
    break;
  case 0xd:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_4 = *(int *)(iVar8 + 0xb8);
      param_4[1] = *(int *)(iVar8 + 0xbc);
    }
    break;
  case 0xe:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_4 = *(int *)(iVar8 + 200);
      param_4[1] = *(int *)(iVar8 + 0xcc);
    }
    break;
  case 0xf:
    iVar8 = FUN_00ce5e80(piVar5);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0x88);
      break;
    }
    goto LAB_00ce9b31;
  case 0x10:
    iVar8 = FUN_00ce5e80(piVar5);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xa0);
      break;
    }
LAB_00ce9b31:
    *param_3 = 0;
    break;
  case 0x11:
    *param_3 = 0;
    pvVar6 = (void *)FUN_007ddb20(piVar5);
    if (pvVar6 == (void *)0x0) {
      iVar8 = FUN_00ce5e80(piVar5);
      if (iVar8 == 0) {
        iVar8 = FUN_00b30580(piVar5);
        if (iVar8 == 0) {
          iVar8 = FUN_00ce5ea0(piVar5);
          if (iVar8 == 0) {
            iVar8 = FUN_00ce5ec0(piVar5);
            if (iVar8 == 0) {
              iVar8 = FUN_00ce5ee0(piVar5);
              if (iVar8 != 0) {
                uVar16 = FUN_00c93e00(iVar8);
                *param_3 = uVar16;
              }
            }
            else {
              uVar16 = FUN_00c96fa0(iVar8);
              *param_3 = uVar16;
            }
          }
          else {
            uVar16 = FUN_00c963f0(iVar8);
            *param_3 = uVar16;
          }
        }
        else {
          uVar16 = FUN_00c94ac0(iVar8);
          *param_3 = uVar16;
        }
      }
      else {
        uVar16 = FUN_00c9a0b0(iVar8);
        *param_3 = uVar16;
      }
    }
    else {
      uVar16 = ObjectProduct_CountAuthoredAndExtraPresets(pvVar6);
      *param_3 = uVar16;
    }
    break;
  case 0x12:
    *param_3 = 0;
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 == 0) {
      iVar8 = FUN_00ce5e80(piVar5);
      if (iVar8 == 0) {
        iVar8 = FUN_00c8d240(piVar5);
        if ((iVar8 == 0) || (iVar8 = FUN_00c954a0(iVar8), iVar8 == 0)) {
          iVar8 = FUN_00b30580(piVar5);
          if ((iVar8 == 0) || (iVar8 = FUN_00c94590(iVar8), iVar8 == 0)) {
            iVar8 = FUN_00ce5ea0(piVar5);
            if ((iVar8 == 0) || (iVar8 = FUN_00c95f80(iVar8), iVar8 == 0)) {
              iVar8 = FUN_00ce5ec0(piVar5);
              if ((iVar8 == 0) || (iVar8 = FUN_00c96ad0(iVar8), iVar8 == 0)) {
                iVar8 = FUN_00ce5ee0(piVar5);
                if ((iVar8 != 0) && (iVar8 = FUN_00c93940(iVar8), iVar8 != 0)) {
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
        iVar8 = FUN_00c99ad0(iVar8);
        if (iVar8 != 0) {
          *param_3 = 1;
        }
      }
    }
    else {
      iVar8 = FUN_00c97eb0(iVar8);
      if (iVar8 != 0) {
        *param_3 = 1;
      }
    }
    break;
  case 0x13:
    uVar16 = *param_3;
    *param_3 = 0xffffffff;
    pvVar6 = (void *)FUN_007ddb20(piVar5);
    if (pvVar6 == (void *)0x0) {
      pvVar6 = (void *)FUN_00ce5e80(piVar5);
      if (pvVar6 == (void *)0x0) {
        pvVar6 = (void *)FUN_00b30580(piVar5);
        if (pvVar6 == (void *)0x0) {
          pvVar6 = (void *)FUN_00ce5ea0(piVar5);
          if (pvVar6 == (void *)0x0) {
            pvVar6 = (void *)FUN_00ce5ec0(piVar5);
            if (pvVar6 == (void *)0x0) {
              pvVar6 = (void *)FUN_00ce5ee0(piVar5);
              if (pvVar6 != (void *)0x0) {
                uVar16 = FUN_00c93b30(pvVar6,uVar16);
                *param_3 = uVar16;
              }
            }
            else {
              uVar16 = FUN_00c96cc0(pvVar6,uVar16);
              *param_3 = uVar16;
            }
          }
          else {
            uVar16 = FUN_00c96170(pvVar6,uVar16);
            *param_3 = uVar16;
          }
        }
        else {
          uVar16 = FUN_00c94780(pvVar6,uVar16);
          *param_3 = uVar16;
        }
      }
      else {
        uVar16 = FUN_00c99dd0(pvVar6,uVar16);
        *param_3 = uVar16;
      }
    }
    else {
      uVar16 = ObjectProduct_FindPresetOrdinalByFullId(pvVar6,uVar16);
      *param_3 = uVar16;
    }
    break;
  case 0x14:
    uVar16 = *param_3;
    *param_3 = 0xffffffff;
    pvVar6 = (void *)FUN_007ddb20(piVar5);
    if (pvVar6 == (void *)0x0) {
      pvVar6 = (void *)FUN_00ce5e80(piVar5);
      if (pvVar6 == (void *)0x0) {
        pvVar6 = (void *)FUN_00b30580(piVar5);
        if (pvVar6 == (void *)0x0) {
          pvVar6 = (void *)FUN_00ce5ea0(piVar5);
          if (pvVar6 == (void *)0x0) {
            pvVar6 = (void *)FUN_00ce5ec0(piVar5);
            if (pvVar6 == (void *)0x0) {
              pvVar6 = (void *)FUN_00ce5ee0(piVar5);
              if (pvVar6 != (void *)0x0) {
                uVar16 = FUN_00c93be0(pvVar6,uVar16);
                *param_3 = uVar16;
              }
            }
            else {
              uVar16 = FUN_00c96d70(pvVar6,uVar16);
              *param_3 = uVar16;
            }
          }
          else {
            uVar16 = FUN_00c96220(pvVar6,uVar16);
            *param_3 = uVar16;
          }
        }
        else {
          uVar16 = FUN_00c94830(pvVar6,uVar16);
          *param_3 = uVar16;
        }
      }
      else {
        uVar16 = FUN_00c99e90(pvVar6,uVar16);
        *param_3 = uVar16;
      }
    }
    else {
      uVar16 = ObjectProduct_GetPresetFullIdByOrdinal(pvVar6,uVar16);
      *param_3 = uVar16;
    }
    break;
  case 0x15:
    uVar16 = *param_3;
    *param_3 = 0;
    pvVar6 = (void *)FUN_007ddb20(piVar5);
    if (pvVar6 == (void *)0x0) {
      pvVar6 = (void *)FUN_00ce5e80(piVar5);
      if (pvVar6 == (void *)0x0) {
        pvVar6 = (void *)FUN_00b30580(piVar5);
        if (pvVar6 == (void *)0x0) {
          pvVar6 = (void *)FUN_00ce5ea0(piVar5);
          if (pvVar6 == (void *)0x0) {
            pvVar6 = (void *)FUN_00ce5ec0(piVar5);
            if (pvVar6 == (void *)0x0) {
              pvVar6 = (void *)FUN_00ce5ee0(piVar5);
              if (pvVar6 != (void *)0x0) {
                uVar16 = FUN_00c93990(pvVar6,uVar16);
                *param_3 = uVar16;
              }
            }
            else {
              uVar16 = FUN_00c96b20(pvVar6,uVar16);
              *param_3 = uVar16;
            }
          }
          else {
            uVar16 = FUN_00c95fd0(pvVar6,uVar16);
            *param_3 = uVar16;
          }
        }
        else {
          uVar16 = FUN_00c945e0(pvVar6,uVar16);
          *param_3 = uVar16;
        }
      }
      else {
        uVar16 = FUN_00c99b20(pvVar6,uVar16);
        *param_3 = uVar16;
      }
    }
    else {
      uVar16 = FUN_00c97f00(pvVar6,uVar16);
      *param_3 = uVar16;
    }
    break;
  case 0x16:
    uVar16 = *param_3;
    *param_3 = 0;
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 == 0) {
      pvVar6 = (void *)FUN_00ce5e80(piVar5);
      if (pvVar6 != (void *)0x0) {
        uVar16 = FUN_00c99bd0(pvVar6,uVar16);
        *param_3 = uVar16;
      }
    }
    else {
      *param_3 = 0;
    }
    break;
  case 0x17:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_3 = 0;
      piVar5 = (int *)FUN_004afe80();
      uVar17 = 0;
      uVar15 = 0;
      uVar13 = 0;
      piStack_8c = (int *)0x0;
      iVar1 = *piVar5;
      uVar12 = 0;
      piVar5 = FUN_0074efa0((int *)&piStack_8c);
      cVar3 = (**(code **)(iVar1 + 0xc))(iVar8 + 0x88,piVar5,uVar12,uVar13,uVar15,uVar17);
      if (cVar3 != '\0') {
        puVar7 = (undefined4 *)FUN_0076d330((int *)&piStack_8c);
        FUN_007fd370(&piStack_60,puVar7);
        uStack_78 = 0;
        iStack_74 = 0;
        iStack_70 = 0;
        iStack_6c = 0;
        uVar12 = FUN_0092f9c0();
        FUN_00939a40(aiStack_30,uVar12);
        ObjectParams_AppendDirectAndResourceExpansion(piStack_60,aiStack_30);
        puVar14 = &uStack_78;
        uVar16 = 0xa6e5f629;
        this = ParameterBuilder_FinalizeBorrowedTable(aiStack_30,auStack_3c);
        bVar2 = ParameterTable_CopyResourceKey16(this,uVar16,puVar14);
        if (bVar2) {
          *param_4 = uStack_78;
          param_4[1] = iStack_74;
          *param_5 = iStack_6c;
          *param_6 = iStack_70;
          *param_3 = 1;
        }
        FUN_00582cf0(aiStack_30);
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
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      FUN_00408e50(aiStack_88,(undefined4 *)(iVar8 + 0x1f8));
    }
    break;
  case 0x19:
    iVar8 = FUN_00c8d200(piVar5);
    if (iVar8 == 0) {
      *param_3 = 0;
    }
    else {
      *param_3 = *(uint *)(iVar8 + 0xd4);
    }
    break;
  case 0x1a:
    uVar16 = *param_3;
    puVar14 = (uint *)(piVar5 + 2);
    *param_3 = 0;
    pvVar6 = (void *)ProductPresets_GetGlobalOwner();
    FUN_00b31a40(pvVar6,puVar14,uVar16);
    break;
  case 0x1b:
    *param_3 = 0;
    iVar8 = FUN_00ce5f00(piVar5);
    if ((iVar8 != 0) && (bVar2 = RoofType_IsPagoda(*(int *)(iVar8 + 0x88)), bVar2)) {
      *param_3 = 1;
    }
    break;
  case 0x1c:
    *param_3 = piVar5[0x20];
    break;
  case 0x1d:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 == 0) {
      *param_3 = 1;
    }
    else {
      *param_3 = *(uint *)(iVar8 + 0xe8);
    }
    break;
  case 0x1e:
    *param_3 = (uint)(*(char *)((int)piVar5 + 0x87) != '\0');
    break;
  case 0x1f:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_3 = *(uint *)(iVar8 + 0xa4);
    }
    break;
  case 0x20:
    bVar9 = 0;
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 2) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x21:
    bVar9 = 0;
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 3) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x22:
    iVar8 = FUN_007ddb20(piVar5);
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
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 4) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x24:
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      *param_4 = *(int *)(iVar8 + 0xc0);
      param_4[1] = *(int *)(iVar8 + 0xc4);
    }
    break;
  case 0x25:
    bVar9 = 0;
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      bVar9 = (byte)((uint)*(undefined4 *)(iVar8 + 0x98) >> 0x1a) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x26:
    bVar9 = 0;
    iVar8 = FUN_007ddb20(piVar5);
    if (iVar8 != 0) {
      bVar9 = (byte)(*(uint *)(iVar8 + 0x9c) >> 7) & 1;
    }
    *param_3 = (uint)(bVar9 != 0);
    break;
  case 0x27:
    uVar11 = FUN_00c92fc0((int)piVar5);
    *(undefined8 *)param_4 = uVar11;
  }
switchD_00ce9927_default:
  appuStack_5c[0] = &PTR_FUN_00fba6f4;
  uStack_54 = 0;
  uStack_52 = 0;
  FUN_004f59c0(appuStack_5c,0x13,9,aiStack_88,0x10,1);
  (**(code **)(*ppuStack_64 + 0x50))(appuStack_5c,auStack_68);
  iVar8 = iStack_70;
  ppuStack_64 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_5c[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_64,'\0');
  }
  if ((2 < (int)(aiStack_88[0] - (int)unaff_EBX & 0xfffffffeU)) && (unaff_EBX != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EBX);
  }
  return iVar8;
}

