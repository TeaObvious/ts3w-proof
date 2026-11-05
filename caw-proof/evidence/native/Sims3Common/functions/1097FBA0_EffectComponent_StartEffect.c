/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EffectComponent_StartEffect. Export ordinal(s):
   1801. Entry VA: 0x1097fba0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060003E2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl EffectComponent_StartEffect(void *param_1)

{
  uint in_EAX;
  uint uVar1;
  
                    /* 0x97fba0  1801  EffectComponent_StartEffect */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10735c00(param_1,0,0);
    return uVar1;
  }
  return in_EAX & 0xffffff00;
}

