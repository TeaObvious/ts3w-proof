/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 six stack dwords RET18. Requires nonnull
   start and destination, obtains destination hash+28, invokes007FC280 and returns AL1 after
   enumeration regardless of path count. Null inputs give AL0; upper EAX incidental. This wrapper
   status is not the predicate that a path exists; request008029E0 separately scans every enumerated
   state's sync byte+4C with an initially true accumulator. */

uint SacsPaths_EnumerateTowardState
               (void *param_1,uint param_2,int param_3,int param_4,int param_5,uint param_6)

{
  uint in_EAX;
  undefined3 extraout_var;
  
  if ((param_2 != 0) && (in_EAX = 0, param_3 != 0)) {
    SacsPaths_BuildTraversalList(param_2,param_1,*(int *)(param_3 + 0x28),param_4,param_5,param_6);
    return CONCAT31(extraout_var,1);
  }
  return in_EAX & 0xffffff00;
}

