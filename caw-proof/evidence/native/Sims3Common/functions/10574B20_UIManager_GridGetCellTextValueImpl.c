/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GridGetCellTextValueImpl. Export
   ordinal(s): 1121. Entry VA: 0x10574b20. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006D0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl UIManager_GridGetCellTextValueImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 unaff_retaddr;
  int iStack_64;
  uint uStack_60;
  undefined **appuStack_54 [2];
  ushort uStack_4c;
  undefined2 uStack_4a;
  undefined **appuStack_3c [2];
  undefined **appuStack_34 [2];
  undefined2 uStack_2c;
  undefined2 uStack_2a;
  short *psStack_10;
  undefined *puStack_4;
  
  uStack_60 = 0x1057217a;
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_60 = param_1;
    iStack_64 = 0x105721a1;
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))();
    if (piVar2 != (int *)0x0) {
      iStack_64 = -0x50e116fe;
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))();
      if (piVar2 != (int *)0x0) {
        puStack_4 = &_Str2_10b624fc;
        (**(code **)(*piVar2 + 0x1d8))(unaff_retaddr,param_1,&puStack_4);
        iStack_64 = 0;
        uStack_60 = 0;
        FUN_1006a620(&iStack_64,psStack_10);
        appuStack_54[0] = &PTR_FUN_10aca5b4;
        uStack_4c = 0;
        uStack_4a = 0;
        FUN_10928b90(appuStack_54,0x13,9,&iStack_64,0x10,1);
        appuStack_34[0] = &PTR_FUN_10aca5b4;
        uStack_2c = 0;
        uStack_2a = 0;
        FUN_100c4ac0(appuStack_34,(int)appuStack_54);
        appuStack_54[0] = &PTR_FUN_10aca5b4;
        if ((uStack_4c & 4) != 0) {
          FUN_10928a90(appuStack_54,'\0');
        }
        if ((2 < (int)(-iStack_64 & 0xfffffffeU)) && (iStack_64 != 0)) {
          FUN_10918e90(iStack_64);
        }
        (**(code **)(*piVar1 + 0x50))(appuStack_34,&stack0xffffff98);
        appuStack_3c[0] = &PTR_FUN_10aca5b4;
        if (((uint)appuStack_34[0] & 4) != 0) {
          FUN_10928a90(appuStack_3c,'\0');
        }
        return param_1;
      }
    }
  }
  return 0;
}

