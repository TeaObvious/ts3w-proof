/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall UInt32count RET4 successonlyAL.
   Frees previous drawables and pointer table before allocation. Count*4 saturates overflowFFFFFFFF,
   zeros pointertable, allocatesD0-byte renderobjects and initializes each. Partial failure
   returnsfalse without transactional oldstate restoration. No reasonable-input count cap
   established here. */

bool __thiscall ModelLodResource_AllocateDrawables(void *this,uint drawableCount)

{
  int *allocation;
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  
  if (*(int *)((int)this + 0x40) != 0) {
    uVar3 = 0;
    if (*(int *)((int)this + 0x44) != 0) {
      do {
        allocation = *(int **)(*(int *)((int)this + 0x40) + uVar3 * 4);
        if (allocation != (int *)0x0) {
          FUN_00690100(allocation);
          Memory_FreeIfNonNull(allocation);
        }
        uVar3 = uVar3 + 1;
      } while (uVar3 < *(uint *)((int)this + 0x44));
    }
    Memory_FreeIfNonNull(*(void **)((int)this + 0x40));
    *(undefined4 *)((int)this + 0x40) = 0;
    *(undefined4 *)((int)this + 0x44) = 0;
  }
  if (drawableCount != 0) {
    iVar1 = FUN_004e4500(-(uint)((int)((ulonglong)drawableCount * 4 >> 0x20) != 0) |
                         (uint)((ulonglong)drawableCount * 4),"Renderer/Model/Drawables",0);
    *(int *)((int)this + 0x40) = iVar1;
    if (iVar1 == 0) {
      return false;
    }
    uVar3 = 0;
    *(uint *)((int)this + 0x44) = drawableCount;
    if (drawableCount != 0) {
      do {
        *(undefined4 *)(*(int *)((int)this + 0x40) + uVar3 * 4) = 0;
        uVar3 = uVar3 + 1;
      } while (uVar3 < drawableCount);
    }
    uVar3 = 0;
    if (drawableCount != 0) {
      do {
        puVar2 = (undefined4 *)FUN_004e4500(0xd0,"Renderer/Model/Drawable",0);
        if (puVar2 == (undefined4 *)0x0) {
          puVar2 = (undefined4 *)0x0;
        }
        else {
          puVar2 = RenderObject_InitializeParameterSlots(puVar2);
        }
        *(undefined4 **)(*(int *)((int)this + 0x40) + uVar3 * 4) = puVar2;
        if (*(int *)(*(int *)((int)this + 0x40) + uVar3 * 4) == 0) {
          return false;
        }
        FUN_0068ee30(*(void **)(*(int *)((int)this + 0x40) + uVar3 * 4),(int)this);
        uVar3 = uVar3 + 1;
      } while (uVar3 < drawableCount);
    }
  }
  return true;
}

