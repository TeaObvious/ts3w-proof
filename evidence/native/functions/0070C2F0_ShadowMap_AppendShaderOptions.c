/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX shadow-map owner, output-vector pointer, RET4. Enabled
   byte+A gates all output; byte+8 wins and emits9507A8D4, else byte+9 emits8315A094. At most one
   hash per call.0070BB50 calls this on115C3C4 before appending flora caller options. Stored SSET
   metadata joins these to OPT_SWITCH_SHADOWMAP_TYPE; the numeric hashes themselves are not semantic
   names. */

void __thiscall ShadowMap_AppendShaderOptions(void *this,void *param_1)

{
  undefined4 *puVar1;
  undefined4 local_8;
  undefined4 local_4;
  
  local_8 = 0x9507a8d4;
  local_4 = 0x8315a094;
  if (*(char *)((int)this + 10) != '\0') {
    if (*(char *)((int)this + 8) == '\0') {
      if (*(char *)((int)this + 9) != '\0') {
        puVar1 = *(undefined4 **)((int)param_1 + 4);
        if (puVar1 < *(undefined4 **)((int)param_1 + 8)) {
          *(undefined4 **)((int)param_1 + 4) = puVar1 + 1;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = 0x8315a094;
            return;
          }
        }
        else {
          FUN_00452bf0(param_1,puVar1,&local_4);
        }
      }
    }
    else {
      puVar1 = *(undefined4 **)((int)param_1 + 4);
      if (*(undefined4 **)((int)param_1 + 8) <= puVar1) {
        FUN_00452bf0(param_1,puVar1,&local_8);
        return;
      }
      *(undefined4 **)((int)param_1 + 4) = puVar1 + 1;
      if (puVar1 != (undefined4 *)0x0) {
        *puVar1 = 0x9507a8d4;
        return;
      }
    }
  }
  return;
}

