/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * cdecl request pointer, plain RET and only AL1 defined. Resource state+18 bit1 queues retry030290F0; absent/tagged nonpending state invokes optional callback+28 virtual10 without publishing model. Live owner is acquired/retained; absent animation rig requeues. No callback selects message2BE20162/current model+30; callback selects6A4479F1/retained callback/pending+34. Message enqueue, component writes, event13/bone resource and cleanup are ordered but child dispatch/retirement remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 005AE5B0_FUN_005ae5b0.asm
 */

undefined4 __cdecl FUN_005ae5b0(int param_1)

{
  int iVar1;
  bool bVar2;
  int *piVar3;
  undefined4 uVar4;
  void *pvVar5;
  undefined4 *puVar6;
  void **outObject;
  uint uVar7;
  uint extraout_EDX;
  longlong lVar8;
  byte abStack_c2 [2];
  int *local_c0;
  undefined4 *puStack_bc;
  int *piStack_b8;
  void *pvStack_b4;
  byte local_b0 [4];
  undefined4 *local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined1 auStack_a0 [64];
  byte abStack_60 [4];
  undefined4 *puStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined1 auStack_50 [76];
  
  GetGlobalInterfacePointer_11D5BBC();
  if (((uint)*(int **)(param_1 + 0x18) & 1) != 0) {
    piVar3 = (int *)FUN_007693a0();
    uVar4 = (**(code **)(*piVar3 + 0x1c))(0x30290f0,param_1,0,0);
    return CONCAT31((int3)((uint)uVar4 >> 8),1);
  }
  if ((*(int *)(param_1 + 0x18) == 0) || ((*(uint *)(param_1 + 0x18) & 3) != 0)) {
    piVar3 = *(int **)(param_1 + 0x18);
    if (*(int **)(param_1 + 0x28) != (int *)0x0) {
      uVar4 = (**(code **)(**(int **)(param_1 + 0x28) + 0x10))();
      return CONCAT31((int3)((uint)uVar4 >> 8),1);
    }
  }
  else {
    pvVar5 = ObjectRegistry_GetGlobal();
    local_c0 = (int *)0x0;
    bVar2 = ObjectRegistry_AcquireGuid(pvVar5,*(ulonglong *)(param_1 + 0x20),&local_c0);
    if ((bVar2) && (local_c0 != (int *)0x0)) {
      pvVar5 = Object_GetComponentByMask(local_c0,DAT_011dd484);
      if (pvVar5 != (void *)0x0) {
        piVar3 = (int *)(**(code **)(*(int *)((int)pvVar5 + 8) + 0x20))();
        if (piVar3 == (int *)0x0) {
          piVar3 = (int *)FUN_007693a0();
          (**(code **)(*piVar3 + 0x1c))(0x30290f0,param_1,0,0);
          uVar4 = FUN_007462e0((int *)(local_b0 + -0x20));
          return CONCAT31((int3)((uint)uVar4 >> 8),1);
        }
        (**(code **)*piVar3)();
        (**(code **)(*piVar3 + 4))();
      }
    }
    if (*(int *)(param_1 + 0x28) == 0) {
      uStack_54 = *(undefined4 *)(param_1 + 0x24);
      uStack_58 = *(undefined4 *)(param_1 + 0x20);
      abStack_60[0] = 0x62;
      abStack_60[1] = 1;
      abStack_60[2] = 0xe2;
      abStack_60[3] = 0x2b;
      puStack_5c = (undefined4 *)0x0;
      puVar6 = FUN_005add80((int)abStack_60);
      if ((*(uint *)(param_1 + 0x18) & 3) == 0) {
        piVar3 = *(int **)(param_1 + 0x18);
      }
      else {
        piVar3 = (int *)0x0;
      }
      FUN_008c8d00(puVar6,piVar3);
      RenderCommand_EnqueueIfDispatcherExists(abStack_60);
      if (local_c0 != (int *)0x0) {
        pvVar5 = Object_GetComponentByMask(local_c0,DAT_011ea0fc);
        if (pvVar5 != (void *)0x0) {
          if ((*(uint *)(param_1 + 0x18) & 3) == 0) {
            puVar6 = *(undefined4 **)(param_1 + 0x18);
          }
          else {
            puVar6 = (undefined4 *)0x0;
          }
          FUN_00a9b9b0((void *)((int)pvVar5 + 0x30),puVar6);
          FUN_00739e40(pvVar5,(undefined4 *)(*(int *)(param_1 + 0x18) + 8));
        }
        if (local_c0 != (int *)0x0) {
          pvVar5 = Object_GetComponentByMask(local_c0,DAT_011dd484);
          if (pvVar5 != (void *)0x0) {
            puVar6 = (undefined4 *)(**(code **)(*(int *)((int)pvVar5 + 8) + 0x20))();
            FUN_007fd370(&piStack_b8,puVar6);
            ObjectEvents_Dispatch(0x13,local_c0,piStack_b8);
            iVar1 = *(int *)(param_1 + 0x18);
            puStack_bc = (undefined4 *)0x0;
            piVar3 = FUN_0068fef0((int *)&puStack_bc);
            lVar8 = FUN_005e5e80(iVar1,extraout_EDX,piVar3);
            if ((char)lVar8 == '\0') {
              pvVar5 = (void *)FUN_004e4500(0x14,"CAS/BoneDeltas",0);
              if (pvVar5 == (void *)0x0) {
                puVar6 = (undefined4 *)0x0;
              }
              else {
                uVar7 = FUN_00575750((int)(piStack_b8 + 10));
                puVar6 = FUN_00574850(pvVar5,uVar7);
              }
              FUN_00874fb0(&puStack_bc,puVar6);
              FUN_005e5e20(*(void **)(param_1 + 0x18),puStack_bc);
            }
            FUN_007462e0((int *)&puStack_bc);
            if (piStack_b8 != (int *)0x0) {
              (**(code **)(*piStack_b8 + 4))();
            }
          }
        }
      }
      if (puStack_5c != (undefined4 *)0x0) {
        (**(code **)*puStack_5c)(auStack_50);
      }
    }
    else {
      local_a8 = *(undefined4 *)(param_1 + 0x20);
      local_a4 = *(undefined4 *)(param_1 + 0x24);
      local_b0[0] = 0xf1;
      local_b0[1] = 0x79;
      local_b0[2] = 0x44;
      local_b0[3] = 0x6a;
      local_ac = (undefined4 *)0x0;
      puVar6 = FUN_005ae500((int)local_b0);
      if ((*(uint *)(param_1 + 0x18) & 3) == 0) {
        piVar3 = *(int **)(param_1 + 0x18);
      }
      else {
        piVar3 = (int *)0x0;
      }
      FUN_008c8d00(puVar6,piVar3);
      StatePointerSlots_AssignVirtualLifetime(puVar6 + 1,(int *)(param_1 + 0x28));
      RenderCommand_EnqueueIfDispatcherExists(local_b0);
      pvVar5 = ObjectRegistry_GetGlobal();
      pvStack_b4 = (void *)0x0;
      outObject = (void **)FUN_0068fef0((int *)&pvStack_b4);
      bVar2 = ObjectRegistry_AcquireGuid(pvVar5,*(ulonglong *)(param_1 + 0x20),outObject);
      if ((bVar2) && (pvStack_b4 != (void *)0x0)) {
        pvVar5 = Object_GetComponentByMask(pvStack_b4,DAT_011ea0fc);
        if (pvVar5 != (void *)0x0) {
          if ((*(uint *)(param_1 + 0x18) & 3) == 0) {
            puVar6 = *(undefined4 **)(param_1 + 0x18);
          }
          else {
            puVar6 = (undefined4 *)0x0;
          }
          FUN_00a9b9b0((void *)((int)pvVar5 + 0x34),puVar6);
          FUN_00868fe0(pvVar5,(undefined4 *)(*(int *)(param_1 + 0x18) + 8));
        }
      }
      FUN_007462e0((int *)&pvStack_b4);
      if (local_ac != (undefined4 *)0x0) {
        (**(code **)*local_ac)(auStack_a0);
      }
    }
    piVar3 = local_c0;
    if (local_c0 != (int *)0x0) {
      piVar3 = local_c0 + 1;
      LOCK();
      iVar1 = *piVar3;
      *piVar3 = *piVar3 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar3 = 1;
        UNLOCK();
        if (local_c0 != (int *)0x0) {
          piVar3 = (int *)(**(code **)*local_c0)(1);
        }
      }
    }
  }
  return CONCAT31((int3)((uint)piVar3 >> 8),1);
}

