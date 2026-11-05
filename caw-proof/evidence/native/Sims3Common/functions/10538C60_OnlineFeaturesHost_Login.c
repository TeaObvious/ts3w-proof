/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_Login. Export ordinal(s): 518.
   Entry VA: 0x10538c60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000599. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl OnlineFeaturesHost_Login(int param_1,int param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int **ppiVar3;
  undefined4 *puVar4;
  int iVar5;
  char *pcVar6;
  void *unaff_EBX;
  int *piVar7;
  char *unaff_ESI;
  undefined *puVar8;
  undefined *puStack_34;
  undefined *puStack_30;
  undefined *puStack_2c;
  char *pcStack_28;
  int *piStack_24;
  undefined *puStack_20;
  undefined *puStack_1c;
  undefined *puStack_18;
  char *pcStack_14;
  int iStack_10;
  
  piVar1 = (int *)FUN_1055b120();
  if (DAT_10c788dc == 0) {
    puStack_34 = (undefined *)0x0;
  }
  else {
    puStack_34 = (undefined *)(DAT_10c788dc + -8);
  }
  if ((((piVar1 != (int *)0x0) && (param_1 != 0)) && (param_2 != 0)) &&
     (puStack_34 != (undefined *)0x0)) {
    pcStack_14 = "Services/OnlineFeaturesHost";
    puStack_20 = &_Dst_10ca8244;
    puStack_1c = &_Dst_10ca8244;
    puStack_18 = &DAT_10ca8245;
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
    ppiVar3 = FUN_10926f20(&puStack_34,pWVar2,0xffffffff,(char *)0x0);
    piVar7 = (int *)&_Dst_10ca8244;
    if (ppiVar3 != &piStack_24) {
      FUN_1000e8a0(&piStack_24,*ppiVar3,(undefined1 *)ppiVar3[1]);
      piVar7 = piStack_24;
    }
    if ((1 < (int)puStack_2c - (int)puStack_34) && (puStack_34 != (undefined *)0x0)) {
      FUN_10918e90((int)puStack_34);
    }
    pcStack_28 = "Services/OnlineFeaturesHost";
    puStack_34 = &_Dst_10ca8244;
    puStack_30 = &_Dst_10ca8244;
    puStack_2c = &DAT_10ca8245;
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
    puVar4 = FUN_10926f20(&puStack_18,pWVar2,0xffffffff,(char *)0x0);
    pcVar6 = &_Dst_10ca8244;
    puVar8 = &DAT_10ca8245;
    if (puVar4 != (undefined4 *)&stack0xffffffc8) {
      FUN_1000e8a0(&stack0xffffffc8,(void *)*puVar4,(undefined1 *)puVar4[1]);
      pcVar6 = unaff_ESI;
      puVar8 = puStack_30;
    }
    if ((1 < iStack_10 - (int)puStack_18) && (puStack_18 != (undefined *)0x0)) {
      FUN_10918e90((int)puStack_18);
    }
    iVar5 = FUN_1067e920(unaff_EBX,piVar7,pcVar6);
    if ((1 < (int)puVar8 - (int)pcVar6) && (pcVar6 != (char *)0x0)) {
      FUN_10918e90((int)pcVar6);
    }
    if ((1 < (int)puStack_20 - (int)piVar7) && (piVar7 != (int *)0x0)) {
      FUN_10918e90((int)piVar7);
    }
    return iVar5;
  }
  return 1;
}

