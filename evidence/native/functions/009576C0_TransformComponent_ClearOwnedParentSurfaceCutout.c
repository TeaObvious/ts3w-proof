/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX child Transform plus one physical word, RET4.
   Requires parent+30h nonnull, parent Slots+64h equal to child owner at Transform+4, and93A1B0 low
   ALtrue. Enqueues057F931A with zero key, then clears parent Slots+64h through94FEB0. Nonowner or
   failed resource lookup leaves installation unchanged. No sibling scan/fallback. */

void __thiscall TransformComponent_ClearOwnedParentSurfaceCutout(void *this,void *param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int local_70 [4];
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50 [76];
  
  if (*(int *)((int)this + 0x30) != 0) {
    iVar1 = *(int *)((int)this + 4);
    iVar2 = SharedPointerOffset0x64_Load32((int)param_1);
    if (iVar2 == iVar1) {
      local_70[0] = 0;
      local_70[1] = 0;
      local_70[2] = 0;
      local_70[3] = 0;
      uVar3 = FUN_0093a1b0((uint *)(iVar1 + 0x18),local_70);
      if ((char)uVar3 != '\0') {
        local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
        local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
        local_60[0] = 0x1a;
        local_60[1] = 0x93;
        local_60[2] = 0x7f;
        local_60[3] = 5;
        local_5c = (undefined4 *)0x0;
        puVar4 = (undefined4 *)FUN_00956430((int)local_60);
        iVar1 = *(int *)((int)this + 0x30);
        *puVar4 = *(undefined4 *)(iVar1 + 8);
        puVar4[1] = *(undefined4 *)(iVar1 + 0xc);
        puVar4[5] = 0;
        puVar4[4] = 0;
        puVar4[2] = 0;
        puVar4[3] = 0;
        RenderCommand_EnqueueIfDispatcherExists(local_60);
        SharedPointerOffset0x64_Store32(param_1,0);
        if (local_5c != (undefined4 *)0x0) {
          (**(code **)*local_5c)(local_50);
        }
      }
    }
  }
  return;
}

