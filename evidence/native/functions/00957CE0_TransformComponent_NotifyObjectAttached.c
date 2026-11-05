/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Unless Transform flag4, refreshes when flags&3 then
   dispatches event0e with composed world pose. Always returnsAL1. */

bool __thiscall TransformComponent_NotifyObjectAttached(void *this)

{
  float local_30 [11];
  
  if ((*(uint *)((int)this + 0x34) & 4) == 0) {
    if ((*(uint *)((int)this + 0x34) & 3) != 0) {
      FUN_00956e60((int)this);
    }
    TransformComponent_GetWorldQuaternionTranslation(this,local_30);
    ObjectEvents_Dispatch(0xe,*(void **)((int)this + 4),local_30);
  }
  return true;
}

