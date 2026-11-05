/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction-qualified semantics. cdecl two resource-key pointers/plainRET; compares four DWORDs in order0,8,C,4; full EAX0 equal/1 different. No guessed GUID semantics, partial key comparison or reference lifetime. */

undefined4 __cdecl FUN_0054e0a0(int *param_1,int *param_2)

{
  if ((((*param_1 == *param_2) && (param_1[2] == param_2[2])) && (param_1[3] == param_2[3])) &&
     (param_1[1] == param_2[1])) {
    return 0;
  }
  return 1;
}
