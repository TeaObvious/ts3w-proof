/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: order3/5/2/6/1/4/0 then -1, final rectangles through shared ContainsPoint helper;
   EAX int RET8.
   Literal component order is 3,5,2,6,1,4,0, else -1; final rectangles use the common half-open
   helper. EAX integer; RET 8. Auto-analysis is disabled and no inferred prototype is forced.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

int WinScrollbar_PickComponent(float param_1,float param_2)

{
  undefined4 uVar1;
  int in_ECX;
  
  if ((((*(float *)(in_ECX + 0x2e0) <= param_1) && (*(float *)(in_ECX + 0x2e4) <= param_2)) &&
      (param_1 < *(float *)(in_ECX + 0x2e8))) && (param_2 < *(float *)(in_ECX + 0x2ec))) {
    return 3;
  }
  if (((*(float *)(in_ECX + 0x300) <= param_1) && (*(float *)(in_ECX + 0x304) <= param_2)) &&
     ((param_1 < *(float *)(in_ECX + 0x308) && (param_2 < *(float *)(in_ECX + 0x30c))))) {
    return 5;
  }
  if (((*(float *)(in_ECX + 0x2d0) <= param_1) && (*(float *)(in_ECX + 0x2d4) <= param_2)) &&
     ((param_1 < *(float *)(in_ECX + 0x2d8) && (param_2 < *(float *)(in_ECX + 0x2dc))))) {
    return 2;
  }
  if ((((*(float *)(in_ECX + 0x310) <= param_1) && (*(float *)(in_ECX + 0x314) <= param_2)) &&
      (param_1 < *(float *)(in_ECX + 0x318))) && (param_2 < *(float *)(in_ECX + 0x31c))) {
    return 6;
  }
  if (((*(float *)(in_ECX + 0x2c0) <= param_1) && (*(float *)(in_ECX + 0x2c4) <= param_2)) &&
     ((param_1 < *(float *)(in_ECX + 0x2c8) && (param_2 < *(float *)(in_ECX + 0x2cc))))) {
    return 1;
  }
  uVar1 = UiRect_ContainsPointHalfOpen((void *)(in_ECX + 0x2f0),param_1,param_2);
  if ((char)uVar1 != '\0') {
    return 4;
  }
  uVar1 = UiRect_ContainsPointHalfOpen((void *)(in_ECX + 0x2b0),param_1,param_2);
  return ((char)uVar1 != '\0') - 1;
}

