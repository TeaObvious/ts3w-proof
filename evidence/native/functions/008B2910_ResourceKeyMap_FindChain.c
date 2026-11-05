/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Walk node links+18 and compare all four
   resource-key DWORDs. Hash collisions do not imply key equality; native memory key layout is
   instanceLow/high,type,group. */

int * ResourceKeyMap_FindChain(int *param_1,int *param_2)

{
  if (param_1 != (int *)0x0) {
    do {
      if ((((*param_2 == *param_1) && (param_2[2] == param_1[2])) && (param_2[3] == param_1[3])) &&
         (param_2[1] == param_1[1])) {
        return param_1;
      }
      param_1 = (int *)param_1[6];
    } while (param_1 != (int *)0x0);
  }
  return (int *)0x0;
}

