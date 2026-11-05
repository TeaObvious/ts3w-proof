/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX node, four physical stack words,
   RET10; pointer+50 absent gives EAX0. Otherwise reads parameter-definition +2C and calls007F3B80
   with default0 through supplied driver argument. VTable01020F10 slot+44. Decompiled void return is
   unreliable; XOR EAX and caller consuming EAX establish key return. Full driver value-coercion
   path remains bounded. */

void __thiscall SacsParameterNode_ReadCurrentValue(int param_1,undefined4 param_2,void *param_3)

{
  if (*(int *)(param_1 + 0x50) != 0) {
    SacsContext_ReadParameterHash(param_3,*(int *)(*(int *)(param_1 + 0x50) + 0x2c),0);
  }
  return;
}

