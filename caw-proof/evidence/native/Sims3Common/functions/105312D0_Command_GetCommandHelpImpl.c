/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Command_GetCommandHelpImpl. Export ordinal(s):
   313. Entry VA: 0x105312d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060002A0. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Command_GetCommandHelpImpl(int param_1)

{
  int *piVar1;
  void *this;
  undefined4 uVar2;
  wchar_t *pwVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 unaff_EBX;
  undefined *puStack_54;
  undefined *puStack_50;
  undefined2 *puStack_4c;
  char *pcStack_48;
  undefined **appuStack_44 [2];
  undefined2 uStack_3c;
  undefined2 uStack_3a;
  undefined4 auStack_24 [9];
  
  piVar1 = (int *)FUN_1055b120();
  this = (void *)FUN_10387250();
  uVar2 = 0;
  puStack_54 = (undefined *)0x0;
                    /* 0x5312d0  313  Command_GetCommandHelpImpl */
  if ((((piVar1 != (int *)0x0) && (this != (void *)0x0)) && (param_1 != 0)) &&
     (pwVar3 = (wchar_t *)(**(code **)(*piVar1 + 0x58))(param_1), uVar2 = unaff_EBX,
     pwVar3 != (wchar_t *)0x0)) {
    pcStack_48 = "Scripting/Command/CommandList";
    puStack_54 = &_Dst_10ca8244;
    puStack_50 = &_Dst_10ca8244;
    puStack_4c = &DAT_10ca8246;
    iVar4 = FUN_103877c0(this,pwVar3);
    if ((iVar4 != 0) && (*(int *)(iVar4 + 8) != 0)) {
      iVar4 = FUN_103877c0(this,pwVar3);
      FUN_1006cf90(&puStack_54,*(int **)(iVar4 + 8));
      puVar5 = FUN_102c0e40(auStack_24,&puStack_54);
      appuStack_44[0] = &PTR_FUN_10aca5b4;
      uStack_3c = 0;
      uStack_3a = 0;
      FUN_100c4ac0(appuStack_44,(int)puVar5);
      FUN_10074c30(auStack_24);
      (**(code **)(*piVar1 + 0x50))(appuStack_44,&stack0xffffffa8);
      FUN_10074c30(appuStack_44);
    }
    if ((2 < (int)((int)puStack_4c - (int)puStack_54 & 0xfffffffeU)) &&
       (puStack_54 != (undefined *)0x0)) {
      FUN_10918e90((int)puStack_54);
    }
  }
  return uVar2;
}

