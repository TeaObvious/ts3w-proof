/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity:
   AnimationWrap_Clip_GetReferencedNamespaceHashcodes. Export ordinal(s): 1667. Entry VA:
   0x1097d200. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600030B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl AnimationWrap_Clip_GetReferencedNamespaceHashcodes(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  char cVar4;
  int *piVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  uint local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 uStack_20;
  char *pcStack_1c;
  int *piStack_14;
  undefined4 *puStack_c;
  
                    /* 0x97d200  1667  AnimationWrap_Clip_GetReferencedNamespaceHashcodes */
  local_30 = param_1[2];
  local_2c = param_1[3];
  local_24 = param_1[1];
  local_28 = *param_1;
  uVar7 = 0;
  param_1 = (undefined4 *)0x0;
  piVar5 = (int *)FUN_108e50d0();
  cVar4 = (**(code **)(*piVar5 + 0xc))(&local_30,&param_1,0,0,0,0);
  if (cVar4 != '\0') {
    local_28 = DAT_10acb0d4;
    local_24 = _DAT_10aadffc;
    pcStack_1c = "Animatio/Wrap";
    local_30 = 1;
    local_2c = 0;
    uStack_20 = 0;
    FUN_105eb910(0x10c571f8,1);
    local_2c = 0;
    FUN_10377610(piStack_14,&stack0xffffffc8);
    (**(code **)(*piStack_14 + 4))();
    uVar7 = local_2c;
    piVar5 = (int *)&DAT_10c571f8;
    puVar6 = DAT_10c571f8;
    if (DAT_10c571f8 == (undefined4 *)0x0) {
      piVar5 = &DAT_10c571fc;
      iVar2 = DAT_10c571fc;
      while (iVar2 == 0) {
        piVar5 = piVar5 + 1;
        iVar2 = *piVar5;
      }
      puVar6 = (undefined4 *)*piVar5;
    }
    puVar3 = (&DAT_10c571f8)[local_30];
    while (puVar6 != puVar3) {
      *puStack_c = *puVar6;
      puVar6 = (undefined4 *)puVar6[1];
      while (puVar6 == (undefined4 *)0x0) {
        piVar1 = piVar5 + 1;
        piVar5 = piVar5 + 1;
        puVar6 = (undefined4 *)*piVar1;
      }
      puStack_c = puStack_c + 1;
    }
    FUN_105eb910(0x10c571f8,local_30);
    local_2c = 0;
    if (1 < local_30) {
      FUN_10918e90(0x10c571f8);
    }
  }
  return uVar7;
}

