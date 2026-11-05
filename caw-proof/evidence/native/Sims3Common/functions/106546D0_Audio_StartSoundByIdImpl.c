/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StartSoundByIdImpl. Export ordinal(s): 39.
   Entry VA: 0x106546d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000083. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 Audio_StartSoundByIdImpl(void)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 unaff_retaddr;
  
                    /* 0x6546d0  39  Audio_StartSoundByIdImpl */
  piVar1 = (int *)FUN_106a3c60();
  uVar2 = 0;
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x44))(0x3475365);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,unaff_retaddr);
    uVar2 = (**(code **)(*piVar1 + 0x68))();
  }
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

