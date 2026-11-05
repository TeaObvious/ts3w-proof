/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX source LOD plus destination LOD pointer, RET4, ALsuccess.
   Allocates same drawable count, copies each via690EC0, copies parameter-owner and metadata,
   recomputes bounds, marksdestination+72=1, copies+71/+74. Null destination/allocation/null
   drawable fails; child copy is void and its allocation failures are not checked here. No authored
   range recalculation. */

bool __thiscall ModelLOD_CopyDrawablesForMaterialClone(void *this,void *destinationLod)

{
  void *this_00;
  bool bVar1;
  uint uVar2;
  
  if ((destinationLod != (void *)0x0) &&
     (bVar1 = ModelLodResource_AllocateDrawables(destinationLod,*(uint *)((int)this + 0x44)), bVar1)
     ) {
    uVar2 = 0;
    if (*(int *)((int)this + 0x44) != 0) {
      do {
        this_00 = *(void **)(*(int *)((int)destinationLod + 0x40) + uVar2 * 4);
        if (this_00 == (void *)0x0) {
          return false;
        }
        Drawable_CopyGeometryAndMaterialBindings
                  (this_00,*(void **)(*(int *)((int)this + 0x40) + uVar2 * 4));
        uVar2 = uVar2 + 1;
      } while (uVar2 < *(uint *)((int)this + 0x44));
    }
    FUN_006de790((void *)((int)destinationLod + 0x28),*(int *)((int)this + 0x30));
    FUN_006dacd0((int)destinationLod);
    FUN_006dab20((int)destinationLod);
    *(undefined1 *)((int)destinationLod + 0x72) = 1;
    *(undefined1 *)((int)destinationLod + 0x70) = 0;
    *(undefined1 *)((int)destinationLod + 0x71) = *(undefined1 *)((int)this + 0x71);
    *(undefined2 *)((int)destinationLod + 0x74) = *(undefined2 *)((int)this + 0x74);
    return true;
  }
  return false;
}

