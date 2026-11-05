/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 main camera follow-by-identity adapter. Physical ECX receiver, stack4/8 identity
   low/high words, stackC offset pointer, stack10 Float32 seconds, stack14 final flag slot; RET14h.
   The existing inferred char final parameter and undefined return metadata are preserved; the
   instructions read/push the flag slot as a DWORD, without proving its downstream semantic width.
   Missing registry returns; otherwise resolve the identity, temporarily retain a found object, call
   the main follow core even for a null lookup result, then release the temporary reference. Offset
   transformation, notification, acquisition/retirement helpers and full trajectory semantics remain
   unresolved. Complete existing46 instructions115 owned bytes; no instruction, ABI or neighbor
   definition changed. */

void __thiscall
MainCamera_EnableObjectFollowById
          (void *this,undefined4 objectIdLow,undefined4 objectIdHigh,undefined4 *offsetWords,
          float seconds,char followFlags)

{
  int *piVar1;
  int iVar2;
  void *this_00;
  undefined4 *followedObject;
  
  this_00 = ObjectRegistry_GetGlobal();
  if (this_00 != (void *)0x0) {
    followedObject = ObjectRegistry_FindBorrowed(this_00,CONCAT44(objectIdHigh,objectIdLow));
    if (followedObject != (undefined4 *)0x0) {
      LOCK();
      followedObject[1] = followedObject[1] + 1;
      UNLOCK();
    }
    MainCamera_ApplyObjectFollow(this,followedObject,offsetWords,seconds,followFlags);
    if (followedObject != (undefined4 *)0x0) {
      piVar1 = followedObject + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*followedObject)(1);
      }
    }
  }
  return;
}

