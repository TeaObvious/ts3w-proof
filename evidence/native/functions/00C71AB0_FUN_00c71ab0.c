/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   Receiver ECX is manager, one low-byte recursion flag on stack (TEST BL,BL; RET4), NOT the inferred undefined4* semantic input. Selected world wrapper supplies0. Builds a retained-object vector before splitting; LOCK increment of object+4 and matching releases keep source pointers alive. Calls95C620(manager,null), then virtual3C(source,1) without checking a success status. Allocation/clone failure is not a transaction-wide rollback contract. */
void __thiscall FUN_00c71ab0(void *this,undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  int *allocation;
  undefined4 *puVar4;
  void *pvVar5;
  uint uVar6;
  void *this_00;
  int *piVar7;
  undefined4 *puStack_18;
  undefined4 *local_14;
  int *local_10;
  int *local_c;
  int *local_8;
  char *local_4;
  
  puVar3 = param_1;
  if ((char)param_1 != '\0') {
    puVar4 = (undefined4 *)(**(code **)(*(int *)this + 0x58))();
    param_1 = (undefined4 *)0x0;
    if (puVar4 != (undefined4 *)0x0) {
      do {
        pvVar5 = (void *)(**(code **)(*(int *)this + 0x4c))(&param_1);
        FUN_00c71ab0(pvVar5,puVar3);
        param_1 = (undefined4 *)((int)param_1 + 1);
      } while (param_1 < puVar4);
    }
  }
  param_1 = *(undefined4 **)((int)this + 0x14);
  local_14 = *(undefined4 **)((int)this + 0x18);
  piVar7 = (int *)0x0;
  local_10 = (int *)0x0;
  local_c = (int *)0x0;
  local_8 = (int *)0x0;
  local_4 = "World/ObjectARCVector";
  piVar1 = local_10;
  allocation = local_10;
  if (param_1 != local_14) {
    do {
      puVar4 = param_1;
      puVar3 = (undefined4 *)*param_1;
      if (puVar3 != (undefined4 *)0x0) {
        pvVar5 = Object_GetComponentByMask(puVar3,DAT_011ea290);
        if (pvVar5 != (void *)0x0) {
          uVar6 = TreeComponent_GetEntryCount((int)pvVar5);
          if (1 < uVar6) {
            piVar1 = puVar3 + 1;
            LOCK();
            *piVar1 = *piVar1 + 1;
            UNLOCK();
            puStack_18 = puVar3;
            if (piVar7 < local_8) {
              local_c = piVar7 + 1;
              if (piVar7 != (int *)0x0) {
                *piVar7 = (int)puVar3;
                LOCK();
                *piVar1 = *piVar1 + 1;
                UNLOCK();
              }
            }
            else {
              FUN_00876270(&local_10,piVar7,(int *)&puStack_18);
            }
            piVar7 = local_c;
            if (puStack_18 != (undefined4 *)0x0) {
              piVar1 = puStack_18 + 1;
              LOCK();
              iVar2 = *piVar1;
              *piVar1 = *piVar1 + -1;
              UNLOCK();
              if (iVar2 == 1) {
                LOCK();
                *piVar1 = 1;
                UNLOCK();
                (**(code **)*puStack_18)(1);
              }
            }
            puVar4 = param_1;
          }
        }
      }
      param_1 = puVar4 + 1;
      piVar1 = local_10;
      allocation = local_10;
    } while (param_1 != local_14);
  }
  for (; local_10 = allocation, piVar1 != piVar7; piVar1 = piVar1 + 1) {
    pvVar5 = (void *)*piVar1;
    if (pvVar5 == (void *)0x0) {
      this_00 = (void *)0x0;
    }
    else {
      this_00 = Object_GetComponentByMask(pvVar5,DAT_011ea290);
    }
    FUN_0095c620(this_00,this,(undefined4 *)0x0);
    (**(code **)(*(int *)this + 0x3c))(pvVar5,1);
    allocation = local_10;
  }
  FUN_00be7d50(allocation,piVar7);
  if (allocation != (int *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  return;
}

