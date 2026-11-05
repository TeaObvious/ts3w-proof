/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX child Transform plus one physical flag
   word/RET4. For a current parent obtains its Slots component, calls9576C0 before unlink9518D0, and
   clears Transform+30h. Preserves original slot/pose notification and optional point/reference
   cleanup order. Does not select another surface-cutout child. */

void __thiscall TransformComponent_DetachParentSlotLink(void *this,char param_1)

{
  int iVar1;
  void *pvVar2;
  void *pvVar3;
  int *piVar4;
  int *piStack_64;
  byte abStack_60 [4];
  undefined4 *puStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined1 auStack_50 [76];
  
  if (*(void **)((int)this + 0x30) != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(*(void **)((int)this + 0x30),DAT_011ea114);
    if (pvVar2 != (void *)0x0) {
      TransformComponent_ClearOwnedParentSurfaceCutout(this,pvVar2);
      if (*(void **)((int)this + 4) != (void *)0x0) {
        pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011dd484);
        if (pvVar3 != (void *)0x0) {
          (**(code **)(*(int *)((int)pvVar3 + 8) + 0x28))();
        }
      }
      Object_MarkUpdateFlags(*(void **)((int)this + 4),DAT_011ea150);
      *(uint *)((int)this + 0x34) = *(uint *)((int)this + 0x34) | 2;
      piStack_64 = (int *)0x0;
      FUN_009518d0(pvVar2,*(int *)((int)this + 4),(int *)&piStack_64);
      *(undefined4 *)((int)this + 0x30) = 0;
      ObjectEvents_Dispatch(0x21,*(void **)((int)this + 4),(void *)0x0);
      if (param_1 != '\0') {
        uStack_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
        uStack_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
        abStack_60[0] = 0x4f;
        abStack_60[1] = 0xc0;
        abStack_60[2] = 0x75;
        abStack_60[3] = 0x93;
        puStack_5c = (undefined4 *)0x0;
        piVar4 = FUN_00943e20((int)abStack_60);
        iVar1 = *piVar4;
        *(undefined4 *)(iVar1 + 0x10) = 0;
        *(undefined4 *)(iVar1 + 8) = 0;
        *(undefined4 *)(iVar1 + 0xc) = 0;
        *(undefined4 *)(iVar1 + 0x14) = 0;
        RenderCommand_EnqueueIfDispatcherExists(abStack_60);
        if (puStack_5c != (undefined4 *)0x0) {
          (**(code **)*puStack_5c)(auStack_50);
        }
      }
      if (piStack_64 != (int *)0x0) {
        pvVar2 = (void *)(**(code **)(*piStack_64 + 8))(3);
        if ((pvVar2 != (void *)0x0) && (*(int *)((int)pvVar2 + 0x1c) == *(int *)((int)this + 4))) {
          FUN_0080d740(pvVar2,(void *)0x0);
        }
      }
    }
  }
  return;
}

