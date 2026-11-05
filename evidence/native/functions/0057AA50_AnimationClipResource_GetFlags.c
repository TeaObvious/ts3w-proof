/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Returns DWORD at resource+0x4c
   backing data+0x1c, or0 when backing data absent. BindResource consumes bit1 as byte+0x5fb. */

undefined4 __fastcall AnimationClipResource_GetFlags(int param_1)

{
  if (*(int *)(param_1 + 0x4c) != 0) {
    return *(undefined4 *)(*(int *)(param_1 + 0x4c) + 0x1c);
  }
  return 0;
}

