/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical caller-cleaned three DWORD words/plain RET; second is
   kind, low byte of third is animated gate, first unused in this body. Kind1 AND animated
   yieldsF4CFD7DA, kinds2/3/4/5 yieldF4DBA07F/06AAC53A/7BBC9F2F/0F612D91; other/defaultE4CFBAEC.
   Decompiler final unsigned arithmetic is equivalent to the explicit default/Rail selection; a
   diagnostic name helper without the animated flag is not this entire selector. */

int __cdecl Steering_SelectBodyClassId(undefined4 param_1,int param_2,char param_3)

{
  if ((param_3 != '\0') && (param_2 == 1)) {
    return -0xb302826;
  }
  if (param_2 == 2) {
    return -0xb245f81;
  }
  if (param_2 == 3) {
    return 0x6aac53a;
  }
  if (param_2 == 4) {
    return 0x7bbc9f2f;
  }
  return (-(uint)(param_2 != 5) & 0xe56e8d5b) + 0xf612d91;
}

