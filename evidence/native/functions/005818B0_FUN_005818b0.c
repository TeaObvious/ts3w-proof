/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX SceneEntity receiver, one stack word with incoming record pointer, RET4. Reads receiver+18; oldnull stores incoming directly, oldnonnull calls4E44E0 then stores incoming after helper returns. No equality/alias guard or flags+0C reset occurs here. 582D40 calls this replacement at583058 before occupancy computation and either959F10 attach call; an ensuing occupied result6 does not roll this record back. No complete allocation/free/malformed pointer/callback/thread policy is inferred. */

void __thiscall FUN_005818b0(void *this,undefined4 param_1)

{
  if (*(void **)((int)this + 0x18) == (void *)0x0) {
    *(undefined4 *)((int)this + 0x18) = param_1;
    return;
  }
  Memory_FreeIfNonNull(*(void **)((int)this + 0x18));
  *(undefined4 *)((int)this + 0x18) = param_1;
  return;
}
