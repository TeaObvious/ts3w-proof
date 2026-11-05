/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl one stack resource pointer; raw loadsECX
   from[ESP+4], then JMP [resource.vtable+4]. It forwards that method's result/return without adding
   callback state. Do not infer AddRef vsRelease solely from slot number; actual resource vtable
   owns that meaning. Used as releaseCallback when clearing an untagged existing slot in7286D0, not
   the generic client notification object. */

undefined4 __cdecl ResourceCallback_InvokeVirtual04(void *resource)

{
  undefined4 uVar1;
  
                    /* WARNING: Could not recover jumptable at 0x00d4b3a9. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  uVar1 = (**(code **)(*(int *)resource + 4))();
  return uVar1;
}

