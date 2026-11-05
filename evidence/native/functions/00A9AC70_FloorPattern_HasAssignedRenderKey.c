/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 separate key-at-offset10 predicate): Physical ECX points at a block
   whose16-byte key at+10/+14/+18/+1C is compared with all four words of globals11EC8A0 (initial
   all-zero key) and1184568 (native layout instanceLow DEAD, instanceHigh0, typeDEAD, group0).
   Return full EAX1 iff this key differs from BOTH values; otherwise EAX0, plain RET/no stack
   argument. Actual tested lane order is+10,+18,+1C,+14. A9EBC0 renderer caller passes its found
   node+8 before selecting a thickness-edge path; other actual incoming references are render
   preparation sites. This is not the A8E370 valuation loop, which never calls this predicate and
   directly looks up its entry's first key via C8EAE0. Shared invalid-key byte identity alone does
   not prove valuation admission, first-key semantics or a price policy. Preserve actual
   prototype/body and distinguish data evidence from the current managed explicit zero-price branch.
    */

undefined4 __fastcall FloorPattern_HasAssignedRenderKey(int param_1)

{
  if (((((*(int *)(param_1 + 0x10) != DAT_011ec8a0) || (*(int *)(param_1 + 0x18) != DAT_011ec8a8))
       || (*(int *)(param_1 + 0x1c) != DAT_011ec8ac)) || (*(int *)(param_1 + 0x14) != DAT_011ec8a4))
     && (((*(int *)(param_1 + 0x10) != DAT_01184568 || (*(int *)(param_1 + 0x18) != DAT_01184570))
         || ((*(int *)(param_1 + 0x1c) != DAT_01184574 || (*(int *)(param_1 + 0x14) != DAT_0118456c)
             ))))) {
    return 1;
  }
  return 0;
}

