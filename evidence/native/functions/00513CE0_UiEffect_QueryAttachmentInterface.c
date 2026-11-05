/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 10-instruction/24-byte effect attachment interface query used by the selected EffectList
   Add/Remove paths. Load the one stack receiver into ECX; null returns EAX=0; otherwise load
   receiver primary vtable +0xC, push interface ID 0x2F009DD0, call it and return. No retain/release
   or owner-field write occurs in this helper. The queried child and concrete window list ownership
   remain lower authority. */

undefined4 __cdecl UiEffect_QueryAttachmentInterface(int *param_1)

{
  undefined4 uVar1;
  
  if (param_1 != (int *)0x0) {
    uVar1 = (**(code **)(*param_1 + 0xc))(0x2f009dd0);
    return uVar1;
  }
  return 0;
}

