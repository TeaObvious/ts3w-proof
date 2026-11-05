/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StopSoundArrayImpl. Export ordinal(s): 45.
   Entry VA: 0x10654b50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000094. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Audio_StopSoundArrayImpl(int param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x654b50  45  Audio_StopSoundArrayImpl */
  if (((DAT_10c7d4a0 != 0) && (piVar1 = (int *)(DAT_10c7d4a0 - 0x27bd0), piVar1 != (int *)0x0)) &&
     (param_1 != 0)) {
    (**(code **)(*piVar1 + 0x44))(0xa320cc2);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,param_1);
    uVar2 = (**(code **)(*piVar1 + 0x68))();
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  return DAT_10c7d4a0 & 0xffffff00;
}

