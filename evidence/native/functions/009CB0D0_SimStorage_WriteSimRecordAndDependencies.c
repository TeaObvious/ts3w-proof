/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this in ECX plus6 stack dwords, RET 24, BooleanAL. Contextpointer
   mustbenon-null. Nonzero existing internal instance64 reuses full key; null/zero instance requests
   fresh key. flags&1 selects travelrecordgroup. Serializes04f88964 content and referenced keys;
   special handling for resource types 025ed6f4 and 00b2d882 visible in originalASM. Decompiler
   indirect-call stacktracking corrupts locals/outputs; typedentry doesnot make every body
   expression authoritative. Complete DBPF virtual calls and dependencies outside this function
   remainopen. */

bool __thiscall
SimStorage_WriteSimRecordAndDependencies
          (void *this,void *simContent,void *database,void *context,uint flags,
          TravelNativeResourceKey *outfitKey,TravelNativeResourceKey *exportKey)

{
  char cVar1;
  byte bVar2;
  undefined1 uVar3;
  uint *puVar4;
  int *piVar5;
  int *piVar6;
  undefined3 extraout_var;
  int *piVar7;
  undefined1 uVar8;
  int *unaff_EBX;
  uint unaff_EBP;
  int iVar9;
  undefined4 unaff_ESI;
  undefined4 *puVar10;
  int unaff_EDI;
  int *piVar11;
  int *piStack_e4;
  int *piVar12;
  undefined4 uVar13;
  uint uStack_cc;
  int local_c8;
  int *piStack_c4;
  uint local_c0;
  int *local_bc;
  int *local_b8;
  uint local_b4;
  void *local_b0;
  int *piStack_ac;
  uint local_a8;
  undefined **appuStack_98 [2];
  uint uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  uint uStack_84;
  uint auStack_80 [2];
  undefined **appuStack_78 [2];
  undefined2 uStack_70;
  undefined2 uStack_6e;
  undefined **ppuStack_58;
  undefined2 uStack_50;
  undefined2 uStack_4e;
  undefined **appuStack_38 [2];
  undefined2 uStack_30;
  undefined2 uStack_2e;
  int iStack_2c;
  undefined4 uStack_18;
  void *pvStack_14;
  int *piStack_10;
  int iStack_c;
  int *piStack_4;
  undefined4 *this_00;
  
  if (context == (void *)0x0) {
    return false;
  }
  local_c0 = 0;
  local_bc = (int *)0x0;
  local_b8 = (int *)0x0;
  local_b4 = 0;
  local_b0 = this;
  if ((exportKey == (TravelNativeResourceKey *)0x0) ||
     ((int)exportKey->InstanceId == 0 && *(int *)((int)&exportKey->InstanceId + 4) == 0)) {
    uStack_88 = (**(code **)(*(int *)simContent + 0x18))();
    uStack_90 = 0;
    uStack_8c = 0;
    uStack_84 = flags;
    piStack_e4 = (int *)0x9cb167;
    puVar4 = DownloadContent_GenerateSimRecordKey(auStack_80,&uStack_90);
    local_c0 = *puVar4;
    local_bc = (int *)puVar4[1];
    local_b8 = (int *)puVar4[2];
    local_b4 = puVar4[3];
  }
  else {
    local_c0 = (uint)exportKey->InstanceId;
    local_bc = *(int **)((int)&exportKey->InstanceId + 4);
    local_b8 = (int *)exportKey->TypeId;
    local_b4 = exportKey->GroupId;
  }
  local_a8 = flags & 1;
  local_c8 = 0;
  piStack_e4 = (int *)((local_a8 != 0) + 1);
  if (database != (void *)0x0) {
    piVar12 = (int *)0x1;
    cVar1 = (**(code **)(*(int *)database + 0x34))(&local_c0,&local_c8,2);
    if (cVar1 != '\0') {
      if (exportKey != (TravelNativeResourceKey *)0x0) {
        *(int *)&exportKey->InstanceId = unaff_EDI;
        *(undefined4 *)((int)&exportKey->InstanceId + 4) = unaff_ESI;
        exportKey->TypeId = unaff_EBP;
        exportKey->GroupId = uStack_cc;
      }
      FUN_005afe80(&local_bc,(int *)((int)pvStack_14 + 0x28));
      FUN_004afe30((int *)&local_bc);
      piVar6 = local_b8;
      piStack_ac = local_b8;
      piVar5 = (int *)FUN_004afe80();
      if (piVar5 == (int *)0x0) {
        if (local_bc != (int *)0x0) {
          FUN_004e44e0((int)local_bc);
        }
        if (piVar12 != (int *)0x0) {
          (**(code **)(*piVar12 + 8))();
          return false;
        }
      }
      else {
        piStack_c4 = piStack_10;
        if ((local_c0 == 0) || (piStack_c4 = *(int **)(local_c8 + 0xa4), piStack_c4 != (int *)0x0))
        {
          piVar7 = local_bc;
          if (piStack_4 != (int *)0x0) {
            for (; piVar7 != piVar6; piVar7 = piVar7 + 4) {
              if (((piVar7[2] == 0x25ed6f4) && (*piVar7 == *piStack_4)) &&
                 (piVar7[1] == piStack_4[1])) goto LAB_009cb2b5;
            }
            piStack_4 = (int *)0x0;
          }
LAB_009cb2b5:
          piVar7 = local_bc;
          if (local_bc != piVar6) {
            do {
              if (piVar7[2] == 0x25ed6f4) {
                if ((piStack_4 == (int *)0x0) ||
                   ((*piStack_4 == *piVar7 && (piStack_4[1] == piVar7[1])))) {
                  piStack_e4 = (int *)0x0;
                  cVar1 = (**(code **)(*piVar5 + 0xc))(piVar7,&piStack_e4,0,0,0,0);
                  if (cVar1 != '\0') {
                    if (piStack_e4 == (int *)0x0) goto LAB_009cb470;
                    piVar6 = (int *)(**(code **)(*piStack_e4 + 0xc))(0x25ed708);
                    if (piVar6 != (int *)0x0) {
                      (**(code **)*piVar6)();
                      piVar11 = (int *)0x0;
                      uVar13 = 0;
                      cVar1 = (**(code **)(*piStack_c4 + 0x34))(piVar7,&stack0xffffff24,2,2,1);
                      if (cVar1 == '\0') {
                        (**(code **)(*piVar11 + 0x20))();
                        if (unaff_EBX != (int *)0x0) {
                          (**(code **)(*unaff_EBX + 8))();
                        }
                        (**(code **)(*piVar6 + 4))();
                        if (piStack_e4 != (int *)0x0) {
                          (**(code **)(*piStack_e4 + 4))();
                        }
                        goto LAB_009cb58a;
                      }
                      piVar11 = (int *)(**(code **)(*unaff_EBX + 0x18))();
                      FUN_005e7d20(piVar6,piVar11,0,(undefined4 *)0x0);
                      (**(code **)(*unaff_EBX + 0x20))();
                      if (unaff_EDI != 0) {
                        FUN_009caee0(piVar6,iStack_2c,uVar13);
                      }
                      if (unaff_EBX != (int *)0x0) {
                        (**(code **)(*unaff_EBX + 8))();
                      }
                      (**(code **)(*piVar6 + 4))();
                    }
                  }
                  if (piStack_e4 != (int *)0x0) {
                    (**(code **)(*piStack_e4 + 4))();
                  }
                }
              }
              else {
                bVar2 = FUN_00993d10(piVar7);
                if (CONCAT31(extraout_var,bVar2) == 0) {
                  if ((piVar7[2] == 0xb2d882) &&
                     (iVar9 = (**(code **)(*piVar5 + 0x58))(piVar7), iVar9 == 0)) {
                    piVar6 = (int *)(**(code **)(*piVar5 + 0x44))(piVar7);
                    if (piVar6 != (int *)0x0) {
                      FUN_007097a0(appuStack_98,piVar7);
                      FUN_007d9130(piStack_10,piVar6);
                    }
                  }
                  else {
                    piStack_e4 = (int *)0x0;
                    cVar1 = (**(code **)(*piVar5 + 0xc))(piVar7,&piStack_e4,0,0,0,0);
                    if (cVar1 != '\0') {
                      (**(code **)(*piVar5 + 0x1c))(piStack_e4,0,piStack_10,0,0);
                    }
                    if (piStack_e4 != (int *)0x0) {
                      (**(code **)(*piStack_e4 + 4))();
                    }
                  }
                }
              }
LAB_009cb470:
              piVar7 = piVar7 + 4;
            } while (piVar7 != piStack_ac);
          }
          if (local_c0 != 0) {
            if ((undefined4 *)(local_c8 + 0x94) != (undefined4 *)((int)pvStack_14 + 0x78)) {
              FUN_00408d60((undefined4 *)((int)pvStack_14 + 0x78),*(void **)(local_c8 + 0x94),
                           *(undefined2 **)(local_c8 + 0x98));
            }
          }
          piVar6 = (int *)(**(code **)(*piVar12 + 0x18))();
          uVar13 = FUN_009a67a0(pvStack_14,piVar6,(void *)0x0);
          (**(code **)(*piVar12 + 0x20))();
          piVar6 = *(int **)(iStack_c + 0x34);
          piVar5 = *(int **)(iStack_c + 0x30);
          uVar8 = (char)uVar13;
          do {
            if (piVar5 == piVar6) {
LAB_009cb5c4:
              if (DAT_011ea958 != 0) {
                appuStack_78[0] = &PTR_FUN_00fba6f4;
                uStack_6e = 0xc;
                uStack_70 = 0;
                ppuStack_58 = &PTR_FUN_00fba6f4;
                uStack_4e = 10;
                uStack_50 = 0;
                appuStack_38[0] = &PTR_FUN_00fba6f4;
                uStack_2e = 10;
                uStack_30 = 0;
                piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
                (**(code **)(*piVar6 + 0x134))(appuStack_98,DAT_011ea958,appuStack_78,3);
                appuStack_98[0] = &PTR_FUN_00fba6f4;
                if ((uStack_90 & 4) != 0) {
                  FUN_004f5760(appuStack_98,'\0');
                }
                iVar9 = 2;
                puVar10 = &uStack_18;
                do {
                  this_00 = puVar10 + -8;
                  *this_00 = &PTR_FUN_00fba6f4;
                  if ((*(byte *)(puVar10 + -6) & 4) != 0) {
                    FUN_004f5760(this_00,'\0');
                  }
                  iVar9 = iVar9 + -1;
                  puVar10 = this_00;
                } while (-1 < iVar9);
              }
              if (local_bc != (int *)0x0) {
                FUN_004e44e0((int)local_bc);
              }
              if (piVar12 != (int *)0x0) {
                (**(code **)(*piVar12 + 8))();
              }
              return (bool)uVar8;
            }
            iVar9 = *piVar5;
            uVar3 = 0;
            uVar8 = 0;
            if ((*(int *)(iVar9 + 0x40) != 0) && (*(int *)(iVar9 + 0x44) != 0)) {
              piStack_e4 = (int *)0x0;
              cVar1 = (**(code **)(*piStack_10 + 0x34))(iVar9 + 8,&piStack_e4,2,2,1,0);
              if (cVar1 == '\0') {
                if (piStack_e4 != (int *)0x0) {
                  (**(code **)(*piStack_e4 + 8))();
                }
                goto LAB_009cb5c4;
              }
              piVar7 = (int *)(**(code **)(*piStack_e4 + 0x18))();
              uVar3 = FUN_00d63a80((void *)*piVar5,piVar7);
              (**(code **)(*piStack_e4 + 0x20))();
              if (piStack_e4 != (int *)0x0) {
                (**(code **)(*piStack_e4 + 8))();
              }
            }
            piVar5 = piVar5 + 1;
            uVar8 = uVar3;
          } while( true );
        }
LAB_009cb58a:
        if (local_bc != (int *)0x0) {
          FUN_004e44e0((int)local_bc);
        }
        if (piVar12 != (int *)0x0) {
          (**(code **)(*piVar12 + 8))();
        }
      }
      return false;
    }
    if (piVar12 != (int *)0x0) {
      (**(code **)(*piVar12 + 8))();
    }
  }
  return false;
}

