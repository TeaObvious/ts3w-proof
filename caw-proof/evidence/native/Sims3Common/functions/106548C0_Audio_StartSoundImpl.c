/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StartSoundImpl. Export ordinal(s): 40.
   Entry VA: 0x106548c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600007F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Audio_StartSoundImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  ushort *puVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  int iVar6;
  
                    /* 0x6548c0  40  Audio_StartSoundImpl */
  if ((DAT_10c7d4a0 != 0) && (piVar1 = (int *)(DAT_10c7d4a0 + -0x27bd0), piVar1 != (int *)0x0)) {
    piVar2 = (int *)FUN_1055b120();
    iVar6 = 0x80;
    puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))(param_1,0x80,0xffffffff);
    FUN_10930890(&stack0xffffff7c,puVar3,param_1,iVar6);
    uVar5 = (**(code **)(*piVar1 + 0x118))(&stack0xffffff7c);
    uVar4 = (**(code **)(*piVar1 + 0x28))();
    (**(code **)(*piVar1 + 0x44))(0x3475365);
    (**(code **)(*piVar1 + 0x50))(0x3475381,uVar5);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,uVar4);
    (**(code **)(*piVar1 + 0x68))();
    return uVar4;
  }
  return 0;
}

