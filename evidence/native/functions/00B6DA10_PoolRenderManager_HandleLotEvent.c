/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX manager plus event ID/payload, RET0x08; meaningful AL success, upper
   return bits not certified. Matching lot event044D8D32 gets signed level at payload12,
   creates/setup missing level geometry, calls B66120 with endpoint data and low-byte flag at
   payload34, then marks dirty. Event03FABF1D resets through optional service and visits
   nonnegative-level geometry;5251D88C/9251D9D2/B126940A reset selected fields. Runtime event/child
   semantics remain bounded; no current batch-preparation equivalence. Descriptive role, not
   recovered symbol. */

uint __thiscall PoolRenderManager_HandleLotEvent(void *this,uint param_1,int param_2)

{
  undefined4 *puVar1;
  int *this_00;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  void *this_01;
  int *piVar5;
  undefined4 uVar6;
  int iVar7;
  int **ppiVar8;
  char local_30;
  undefined1 local_2f;
  undefined1 local_2e;
  int *local_2c;
  uint local_28;
  uint local_24;
  uint local_20;
  int local_1c;
  int *local_18;
  int local_14;
  int local_10 [2];
  undefined4 local_8 [2];
  
  iVar2 = param_2;
  iVar7 = *(int *)(*(int *)((int)this + 4) + 0x10);
  puVar3 = *(undefined4 **)(*(int *)((int)this + 4) + 0x14);
  if (param_1 < 0x5251d88d) {
    if (param_1 != 0x5251d88c) {
      if (param_1 == 0x3fabf1d) {
        if ((*(int *)(*(int *)(param_2 + 8) + 0x48) == iVar7) &&
           (*(undefined4 **)(*(int *)(param_2 + 8) + 0x4c) == puVar3)) {
          if ((*(char *)((int)this + 0x7c) == '\0') && (*(int *)(param_2 + 0xc) != 0)) {
            if ((*(uint *)((int)this + 0xb0) & 1) != 0) {
              FUN_007f6050((int)this + 0xb0);
            }
            if ((*(uint *)((int)this + 0xb4) & 1) != 0) {
              FUN_007f6050((int)this + 0xb4);
            }
            FUN_00b6d120((int)this);
          }
          PickCandidateMap_Begin((void *)((int)this + 0x20),&local_18);
          puVar3 = *(undefined4 **)((int)this + 0x24);
          piVar4 = (int *)puVar3[*(int *)((int)this + 0x28)];
          iVar7 = local_14;
          piVar5 = local_18;
          if (local_18 != piVar4) {
            do {
              this_00 = (int *)piVar5[1];
              if (this_00 != (int *)0x0) {
                puVar3 = (undefined4 *)(**(code **)*this_00)();
              }
              if (*piVar5 < 0) {
LAB_00b6dc8d:
                if (this_00 != (int *)0x0) {
                  puVar3 = (undefined4 *)(**(code **)(*this_00 + 4))();
                }
              }
              else if (this_00 != (int *)0x0) {
                puVar3 = (undefined4 *)FUN_00b65fd0(this_00,*(undefined4 *)(param_2 + 0xc));
                goto LAB_00b6dc8d;
              }
              piVar5 = (int *)piVar5[2];
              while (piVar5 == (int *)0x0) {
                puVar1 = (undefined4 *)(iVar7 + 4);
                iVar7 = iVar7 + 4;
                piVar5 = (int *)*puVar1;
              }
              if (piVar5 == piVar4) {
                return CONCAT31((int3)((uint)puVar3 >> 8),1);
              }
            } while( true );
          }
        }
      }
      else if (param_1 == 0x44d8d32) {
        if ((*(int *)(param_2 + 8) != iVar7) || (*(undefined4 **)(param_2 + 0xc) != puVar3)) {
          return (uint)puVar3 & 0xffffff00;
        }
        local_28 = (uint)*(char *)(param_2 + 0x12);
        UInt32PairMap_Find((void *)((int)this + 0x20),local_10,&local_28);
        local_2c = (int *)0x0;
        if (local_10[0] == *(int *)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4)) {
          puVar3 = (undefined4 *)FUN_004e4500(0x280,"LotRenderer/PoolRenderManager/PoolGeometry",0);
          if (puVar3 == (undefined4 *)0x0) {
            piVar4 = (int *)0x0;
          }
          else {
            piVar4 = PoolGeometry_Construct(puVar3);
          }
          FUN_008c8d00(&local_2c,piVar4);
          piVar4 = local_2c;
          PoolGeometry_SetupLotLevel
                    (local_2c,*(int *)((int)this + 4),this,(int)*(char *)(iVar2 + 0x12));
          local_24 = (uint)*(char *)(iVar2 + 0x12);
          ppiVar8 = &local_2c;
          this_01 = (void *)FUN_007f35b0((void *)((int)this + 0x20),&local_24);
          StatePointerSlots_AssignVirtualLifetime(this_01,(int *)ppiVar8);
        }
        else {
          StatePointerSlots_AssignVirtualLifetime(&local_2c,(int *)(local_10[0] + 4));
          piVar4 = local_2c;
        }
        if (piVar4 != (int *)0x0) {
          if (*(int *)(iVar2 + 0x2c) == 0) {
            PoolGeometry_UpdatePresenceRectangle
                      (piVar4,(char *)(iVar2 + 0x10),(char *)(iVar2 + 0x13),*(char *)(iVar2 + 0x34))
            ;
          }
          else {
            piVar5 = *(int **)(iVar2 + 0x20);
            if (piVar5 != (int *)(iVar2 + 0x1c)) {
              do {
                local_2f = (undefined1)piVar5[5];
                local_30 = (char)piVar5[4];
                local_2e = *(undefined1 *)(iVar2 + 0x12);
                param_1 = CONCAT22(CONCAT11(param_1._3_1_,local_2e),
                                   CONCAT11((char)piVar5[7],(char)piVar5[6]));
                PoolGeometry_UpdatePresenceRectangle
                          (piVar4,&local_30,(char *)&param_1,*(char *)(iVar2 + 0x34));
                piVar5 = FUN_004e1030(piVar5);
              } while (piVar5 != (int *)(iVar2 + 0x1c));
            }
          }
        }
        local_1c = (int)*(char *)(iVar2 + 0x12);
        local_20 = local_20 & 0xffffff00;
        puVar3 = FUN_00628a70((void *)((int)this + 0x40),local_8,&local_1c);
        if (piVar4 != (int *)0x0) {
          uVar6 = (**(code **)(*piVar4 + 4))();
          return CONCAT31((int3)((uint)uVar6 >> 8),1);
        }
      }
      goto LAB_00b6dcef;
    }
  }
  else if ((param_1 != 0x9251d9d2) && (param_1 != 0xb126940a)) goto LAB_00b6dcef;
  if ((*(int *)(param_2 + 8) == iVar7) && (*(undefined4 **)(param_2 + 0xc) == puVar3)) {
    puVar3 = (undefined4 *)0x0;
    *(undefined1 *)((int)this + 0x1d) = 1;
    *(undefined4 *)((int)this + 0x60) = 0;
    *(undefined4 *)((int)this + 100) = 0;
    *(undefined4 *)((int)this + 0x68) = 0;
    *(undefined4 *)((int)this + 0x6c) = 0;
  }
LAB_00b6dcef:
  return CONCAT31((int3)((uint)puVar3 >> 8),1);
}

