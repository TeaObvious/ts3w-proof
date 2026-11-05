/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StartSoundMP3Impl. Export ordinal(s): 41.
   Entry VA: 0x10654980. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000080. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Audio_StartSoundMP3Impl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  short *psVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
                    /* 0x654980  41  Audio_StartSoundMP3Impl */
  if ((DAT_10c7d4a0 != 0) && (piVar1 = (int *)(DAT_10c7d4a0 + -0x27bd0), piVar1 != (int *)0x0)) {
    piVar2 = (int *)FUN_1055b120();
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    FUN_10931e80(&stack0xfffffdf4,psVar3,param_1);
    uVar4 = (**(code **)(*piVar1 + 0x118))();
    uVar5 = (**(code **)(*piVar1 + 0x28))();
    (**(code **)(*piVar1 + 0x44))();
    (**(code **)(*piVar1 + 0x50))(0x3475381,uVar4);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,uVar5);
    (**(code **)(*piVar1 + 0x5c))(0x9fa9372e,&stack0xfffffdd8,0x208);
    (**(code **)(*piVar1 + 0x68))();
    return uVar5;
  }
  return 0;
}

