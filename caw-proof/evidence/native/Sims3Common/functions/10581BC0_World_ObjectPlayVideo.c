/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectPlayVideo. Export ordinal(s): 1527.
   Entry VA: 0x10581bc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C3C. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl World_ObjectPlayVideo(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  undefined4 uVar4;
  uint *puVar5;
  uint unaff_EBX;
  uint unaff_EBP;
  uint unaff_ESI;
  uint unaff_EDI;
  undefined1 unaff_retaddr;
  uint auStack_20 [8];
  
                    /* 0x581bc0  1527  World_ObjectPlayVideo */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    uVar2 = FUN_1072abb0(iVar1);
    if (uVar2 != 0) {
      piVar3 = (int *)FUN_1055b120();
      if (param_3 == 0) {
        uVar4 = 0;
      }
      else {
        uVar4 = (**(code **)(*piVar3 + 0x58))(param_3);
      }
      piVar3 = (int *)FUN_108e50d0();
      auStack_20[0] = 0;
      auStack_20[1] = 0;
      auStack_20[2] = 0;
      auStack_20[3] = 0;
      (**(code **)(*piVar3 + 0x80))(auStack_20,uVar4,0xb1cc1af6,0);
      if (param_1 == 0) {
        puVar5 = (uint *)FUN_105cb1d0(auStack_20,(uint *)&stack0xffffffd0);
        unaff_EDI = *puVar5;
        unaff_ESI = puVar5[1];
        unaff_EBP = puVar5[2];
        unaff_EBX = puVar5[3];
      }
      else {
        FUN_105ca7d0(param_1,(uint *)&stack0xffffffdc);
      }
      uVar4 = FUN_10580b30(param_1,param_2,unaff_EDI,unaff_ESI,unaff_EBP,unaff_EBX,unaff_retaddr,0,0
                          );
      return uVar4;
    }
  }
  return 0;
}

