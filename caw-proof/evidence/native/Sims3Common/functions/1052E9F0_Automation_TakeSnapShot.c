/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Automation_TakeSnapShot. Export ordinal(s): 51.
   Entry VA: 0x1052e9f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000364. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Automation_TakeSnapShot(int param_1)

{
  short sVar1;
  int *piVar2;
  short *psVar3;
  short *psVar4;
  undefined2 *puStack_3c;
  char *pcStack_38;
  undefined4 uStack_34;
  undefined1 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
                    /* 0x52e9f0  51  Automation_TakeSnapShot */
  if ((param_1 != 0) && (piVar2 = (int *)FUN_1055b120(), piVar2 != (int *)0x0)) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1);
    sVar1 = *psVar3;
    pcStack_38 = "Scripting/Automation";
    puStack_3c = &DAT_10ca8246;
    psVar4 = psVar3;
    while (sVar1 != 0) {
      psVar4 = psVar4 + 1;
      sVar1 = *psVar4;
    }
    FUN_1001f8c0(&stack0xffffffbc,psVar3,(int *)(psVar3 + ((int)psVar4 - (int)psVar3 >> 1)));
    piVar2 = (int *)FUN_107cd170();
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x14))(&_Dst_10ca8244,1);
      puStack_3c = (undefined2 *)0x1;
      pcStack_38 = (char *)0x0;
      uStack_34 = 0;
      uStack_30 = 1;
      uStack_2c = 0;
      uStack_28 = 0;
      uStack_24 = 0;
      uStack_20 = 0;
      uStack_1c = 0;
      uStack_18 = 0;
      uStack_14 = 0;
      uStack_10 = 0;
      (**(code **)(*piVar2 + 0x34))(&puStack_3c);
    }
    if (2 < (int)((uint)(puStack_3c + -0x8654122) & 0xfffffffe)) {
      FUN_10918e90(0x10ca8244);
    }
  }
  return;
}

