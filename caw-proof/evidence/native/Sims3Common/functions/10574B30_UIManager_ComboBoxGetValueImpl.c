/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_ComboBoxGetValueImpl. Export
   ordinal(s): 1073. Entry VA: 0x10574b30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006D4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_ComboBoxGetValueImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  short *psVar3;
  undefined4 unaff_retaddr;
  uint uStack_5c;
  undefined **appuStack_4c [2];
  ushort uStack_44;
  undefined2 uStack_42;
  undefined **appuStack_34 [2];
  undefined **appuStack_2c [2];
  undefined2 uStack_24;
  undefined2 uStack_22;
  undefined4 uStack_10;
  undefined1 auStack_8 [8];
  
  uStack_5c = 0x105722ca;
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_5c = param_1;
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))();
    if (piVar2 != (int *)0x0) {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0x2f5528d9);
      if (piVar2 != (int *)0x0) {
        psVar3 = (short *)(**(code **)(*piVar2 + 0x34))(unaff_retaddr);
        uStack_5c = 0;
        FUN_1006a620(&uStack_5c,psVar3);
        appuStack_4c[0] = &PTR_FUN_10aca5b4;
        uStack_44 = 0;
        uStack_42 = 0;
        FUN_10928b90(appuStack_4c,0x13,9,&uStack_5c,0x10,1);
        appuStack_2c[0] = &PTR_FUN_10aca5b4;
        uStack_24 = 0;
        uStack_22 = 0;
        FUN_100c4ac0(appuStack_2c,(int)appuStack_4c);
        appuStack_4c[0] = &PTR_FUN_10aca5b4;
        if ((uStack_44 & 4) != 0) {
          FUN_10928a90(appuStack_4c,'\0');
        }
        if ((2 < (int)(-uStack_5c & 0xfffffffe)) && (uStack_5c != 0)) {
          FUN_10918e90(uStack_5c);
        }
        (**(code **)(*piVar1 + 0x50))(appuStack_2c,auStack_8);
        appuStack_34[0] = &PTR_FUN_10aca5b4;
        if (((uint)appuStack_2c[0] & 4) != 0) {
          FUN_10928a90(appuStack_34,'\0');
        }
        return uStack_10;
      }
    }
  }
  return 0;
}

