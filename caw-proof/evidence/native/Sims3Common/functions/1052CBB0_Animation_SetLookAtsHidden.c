/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_SetLookAtsHidden. Export ordinal(s):
   17. Entry VA: 0x1052cbb0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600065C. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Animation_SetLookAtsHidden(undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *this;
  
                    /* 0x52cbb0  17  Animation_SetLookAtsHidden */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar1 != 0) {
      if (param_3 != '\0') {
        *(uint *)(iVar1 + 0x2c) = *(uint *)(iVar1 + 0x2c) | 0x2000;
        return;
      }
      *(uint *)(iVar1 + 0x2c) = *(uint *)(iVar1 + 0x2c) & 0xffffdfff;
    }
  }
  return;
}

