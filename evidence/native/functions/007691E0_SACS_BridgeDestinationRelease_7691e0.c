/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 bridge destination helper. Requires stored destination driver +0x1C and nonzero
   destination actor hash +0x20; resolves destination walker through 0x00803C00, then calls
   0x00801BD0 with source walker. The caller-supplied Boolean is not read in this helper. A missing
   destination actor produces no waiter release. Raw proof:
   guides/sacs/native/disassembly/bridge-destination-release-7691e0.objdump.txt;
   guides/sacs/native/disassembly/destination-walker-lookup-803c00.objdump.txt;
   reference . */

void __thiscall SACS_BridgeDestinationRelease_7691e0(void *this,int param_1)

{
  void *this_00;
  
  if (((*(void **)((int)this + 0x1c) != (void *)0x0) && (*(int *)((int)this + 0x20) != 0)) &&
     (this_00 = (void *)SACS_LookupDestinationWalker_803c00
                                  (*(void **)((int)this + 0x1c),*(int *)((int)this + 0x20)),
     this_00 != (void *)0x0)) {
    if (*(int *)(param_1 + 0x10) != 0) {
      SACS_ResolveStateTextCache(*(int *)(param_1 + 0x10));
    }
    SACS_ReleaseDestinationWait_801bd0(this_00,param_1);
  }
  return;
}

