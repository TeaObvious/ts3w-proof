/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Manifest_SaveToRecord. Export ordinal(s): 1936.
   Entry VA: 0x10986a50. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060007F0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 __cdecl Manifest_SaveToRecord(void *param_1,uint param_2)

{
  void *pvVar1;
  undefined1 uVar2;
  int iVar3;
  int local_8 [2];
  
                    /* 0x986a50  1936  Manifest_SaveToRecord */
  iVar3 = FUN_108e50d0();
  pvVar1 = DAT_10cb8078;
  if (iVar3 != 0) {
    FUN_106a8410(DAT_10cb8078,local_8,&param_2);
    if ((local_8[0] != *(int *)(*(int *)((int)pvVar1 + 4) + *(int *)((int)pvVar1 + 8) * 4)) &&
       (*(int **)(local_8[0] + 4) != (int *)0x0)) {
      uVar2 = FUN_107a6930(param_1,*(int **)(local_8[0] + 4),(undefined *)0x0);
      return uVar2;
    }
  }
  return 0;
}

