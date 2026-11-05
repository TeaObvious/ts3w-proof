/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 static: ECX DesignSwap; output-key pointer and variable hash stack words; RET0x08.
   Reuse hash map entry at+0x74 or allocate/register a pattern resource and store its key before
   upload. Local lifetime-shaped calls use virtual+0x00/+0x04; child effects and refcount semantics
   are not established here. Allocation failure can reach a null dereference; no new safe rollback
   or current baker-pool exclusion is inferred. Descriptive analyst role, not a recovered original
   symbol. */

void __thiscall DesignSwap_ReservePatternResource(void *this,uint *param_1)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  undefined4 *puVar4;
  int *piVar5;
  void *this_00;
  undefined1 uStack00000000;
  uint uStack00000008;
  int local_18 [2];
  uint uStack_10;
  uint uStack_c;
  uint uStack_8;
  uint uStack_4;
  
  piVar3 = (int *)FUN_004afe80();
  UInt32PairMap_Find((void *)((int)this + 0x74),local_18,&uStack00000008);
  if (local_18[0] != *(int *)(*(int *)((int)this + 0x78) + *(int *)((int)this + 0x7c) * 4)) {
    iVar1 = *(int *)(local_18[0] + 4);
    *param_1 = *(uint *)(iVar1 + 8);
    param_1[1] = *(uint *)(iVar1 + 0xc);
    uVar2 = *(uint *)(iVar1 + 0x14);
    param_1[2] = *(uint *)(iVar1 + 0x10);
    param_1[3] = uVar2;
    return;
  }
  puVar4 = (undefined4 *)FUN_004e4500(0x68,"World/DesignModeSwap/GetPatternKey",0);
  if (puVar4 == (undefined4 *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = FUN_00600ad0(puVar4);
  }
  (**(code **)*piVar5)();
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  CompositorKeys_ChooseUnusedRandomInstance(this_00,&uStack_10,0x341acc9);
  if (uStack_10 == 0 && uStack_c == 0) {
    (**(code **)(*piVar5 + 4))();
  }
  else {
    piVar5[2] = uStack_10;
    piVar5[3] = uStack_c;
    piVar5[4] = uStack_8;
    piVar5[5] = uStack_4;
    FUN_005fead0(piVar5);
    (**(code **)(*piVar3 + 0x5c))(piVar5,1);
    puVar4 = (undefined4 *)FUN_007f35b0((void *)((int)this + 0x74),(uint *)&uStack00000000);
    piVar3 = (int *)*puVar4;
    if (piVar5 != piVar3) {
      (**(code **)*piVar5)();
      *puVar4 = piVar5;
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 4))();
      }
    }
    (**(code **)(*piVar5 + 4))();
  }
  *param_1 = uStack_10;
  param_1[1] = uStack_c;
  param_1[2] = uStack_8;
  param_1[3] = uStack_4;
  return;
}

