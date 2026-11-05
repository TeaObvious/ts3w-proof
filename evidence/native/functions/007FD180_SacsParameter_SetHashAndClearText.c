/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX parameter slot,one dword RET4.
   Clears/frees existing text+4 then stores32bit hash+8. This is representation mutation, not C#
   readonly-record allocation or explicit resource-group map policy. Native zero-as-default lookup
   and retained definition relation are separate consumers. */

void __thiscall SacsParameter_SetHashAndClearText(void *this,undefined4 param_1)

{
  void *allocation;
  
  allocation = *(void **)((int)this + 4);
  if (allocation != (void *)0x0) {
    *(undefined4 *)((int)this + 4) = 0;
    Memory_FreeIfNonNull(allocation);
    *(undefined4 *)((int)this + 8) = param_1;
    return;
  }
  *(undefined4 *)((int)this + 8) = param_1;
  return;
}

