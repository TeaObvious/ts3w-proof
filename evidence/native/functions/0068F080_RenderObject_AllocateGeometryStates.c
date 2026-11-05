/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall UInt32count RET4 successonlyAL.
   Releases oldstateallocation then zeros pointer/count when oldpointer exists. Count*20 unsignedMUL
   overflow saturates allocation sizeFFFFFFFF. Allocation failurefalse; otherwise stores count32.
   Count0 succeeds. Does not initialize records or provide transactional rollback; original MLOD
   caller ignores result. */

bool __thiscall RenderObject_AllocateGeometryStates(void *this,uint stateCount)

{
  int iVar1;
  
  if (*(void **)((int)this + 0x50) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 0x50));
    *(undefined4 *)((int)this + 0x50) = 0;
    *(undefined4 *)((int)this + 0x54) = 0;
  }
  if (stateCount != 0) {
    iVar1 = FUN_004e4500(-(uint)((int)((ulonglong)stateCount * 0x14 >> 0x20) != 0) |
                         (uint)((ulonglong)stateCount * 0x14),
                         "Renderer/Drawable/PrimitiveInfosForStates",0);
    *(int *)((int)this + 0x50) = iVar1;
    if (iVar1 == 0) {
      return false;
    }
    *(uint *)((int)this + 0x54) = stateCount;
  }
  return true;
}

