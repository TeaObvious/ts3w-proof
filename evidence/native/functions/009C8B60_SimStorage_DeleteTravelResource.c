/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this inECX, internal16-byte key pointer on stack, RET 4. Null
   TravelDB pointer+70 yieldsAL=0; otherwise tail-jumps database vtable+40 with original key
   argument intact. Underlying DBPF deletion effects remain unverified. */

bool __thiscall SimStorage_DeleteTravelResource(void *this,TravelNativeResourceKey *nativeKey)

{
  undefined1 uVar1;
  
  if (*(int *)((int)this + 0x70) != 0) {
                    /* WARNING: Could not recover jumptable at 0x009c8b70. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(**(int **)((int)this + 0x70) + 0x40))();
    return (bool)uVar1;
  }
  return false;
}

