/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Sim model morph update, ECX+four raw Single words RET16. Refuses null/tagged current model+30; directly stores words at model+68/+6C/+70/+74 before Animation lookup. Rig key+ A8 and selected animation resource retained in message7334B554, then693380 dispatcher and cleanup. No finite guards, cancellation/task or supplied user callback in this child; full render consumer/deformation remains separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 0094F610_FUN_0094f610.asm
 */

void __thiscall
FUN_0094f610(void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  void *pvVar2;
  int *piVar3;
  int *piVar4;
  int *local_64;
  byte abStack_60 [4];
  undefined4 *puStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined1 auStack_50 [76];
  
  if (((*(uint *)((int)this + 0x30) & 3) == 0) && (*(int *)((int)this + 0x30) != 0)) {
    *(undefined4 *)(*(int *)((int)this + 0x30) + 0x68) = param_1;
    *(undefined4 *)(*(int *)((int)this + 0x30) + 0x6c) = param_2;
    *(undefined4 *)(*(int *)((int)this + 0x30) + 0x70) = param_3;
    pvVar2 = *(void **)((int)this + 4);
    *(undefined4 *)(*(int *)((int)this + 0x30) + 0x74) = param_4;
    local_64 = (int *)0x0;
    if (pvVar2 != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011dd484);
      if (pvVar2 != (void *)0x0) {
        AnimationComponent_AssignRigResourceKey
                  (pvVar2,(uint *)(*(int *)((int)this + 0x30) + 0xa8),1);
        piVar3 = (int *)(**(code **)(*(int *)((int)pvVar2 + 8) + 0x20))();
        if (piVar3 != (int *)0x0) {
          (**(code **)*piVar3)();
          local_64 = piVar3;
        }
        uStack_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
        uStack_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
        abStack_60[0] = 0x54;
        abStack_60[1] = 0xb5;
        abStack_60[2] = 0x34;
        abStack_60[3] = 0x73;
        puStack_5c = (undefined4 *)0x0;
        piVar3 = FUN_0094f2e0((int)abStack_60);
        if ((*(uint *)((int)this + 0x30) & 3) == 0) {
          piVar4 = *(int **)((int)this + 0x30);
        }
        else {
          piVar4 = (int *)0x0;
        }
        piVar1 = (int *)*piVar3;
        if (piVar4 != piVar1) {
          if (piVar4 != (int *)0x0) {
            (**(code **)*piVar4)();
          }
          *piVar3 = (int)piVar4;
          if (piVar1 != (int *)0x0) {
            (**(code **)(*piVar1 + 4))();
          }
        }
        piVar4 = (int *)piVar3[1];
        if (local_64 != piVar4) {
          if (local_64 != (int *)0x0) {
            (**(code **)*local_64)();
          }
          piVar3[1] = (int)local_64;
          if (piVar4 != (int *)0x0) {
            (**(code **)(*piVar4 + 4))();
          }
        }
        RenderCommand_EnqueueIfDispatcherExists(abStack_60);
        if (puStack_5c != (undefined4 *)0x0) {
          (**(code **)*puStack_5c)(auStack_50);
        }
        if (local_64 != (int *)0x0) {
          (**(code **)(*local_64 + 4))();
        }
      }
    }
  }
  return;
}

