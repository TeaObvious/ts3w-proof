/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: KeyNameMap_Save. Export ordinal(s): 1875. Entry
   VA: 0x1098afd0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008DB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl
KeyNameMap_Save(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  undefined4 uVar1;
  void *pvVar2;
  char cVar3;
  int *piVar4;
  int local_8 [2];
  
                    /* 0x98afd0  1875  KeyNameMap_Save */
  pvVar2 = DAT_10cb8078;
  FUN_106a8410(DAT_10cb8078,local_8,(uint *)&stack0x00000018);
  if (local_8[0] == *(int *)(*(int *)((int)pvVar2 + 4) + *(int *)((int)pvVar2 + 8) * 4)) {
    return false;
  }
  uVar1 = *(undefined4 *)(local_8[0] + 4);
  *(undefined4 *)(param_1 + 8) = param_4;
  *(undefined4 *)(param_1 + 0xc) = param_5;
  *(undefined4 *)(param_1 + 0x10) = param_2;
  *(undefined4 *)(param_1 + 0x14) = param_3;
  piVar4 = (int *)FUN_108e50d0();
  cVar3 = (**(code **)(*piVar4 + 0x1c))(param_1,0,uVar1,0,0);
  return cVar3 != '\0';
}

