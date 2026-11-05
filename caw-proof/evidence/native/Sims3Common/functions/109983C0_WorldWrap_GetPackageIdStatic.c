/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetPackageIdStatic. Export ordinal(s):
   2644. Entry VA: 0x109983c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600051A. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_GetPackageIdStatic(undefined4 *param_1,LPCWSTR param_2)

{
  undefined4 uVar1;
  longlong *plVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined1 local_c0 [16];
  longlong local_b0 [2];
  undefined4 local_a0 [20];
  undefined4 local_50 [20];
  
                    /* 0x9983c0  2644  WorldWrap_GetPackageIdStatic */
  uVar5 = 0;
  uVar6 = 0;
  uVar3 = 0;
  uVar4 = 0;
  FUN_1039c030(local_a0);
  uVar1 = FUN_10998290(param_2,local_a0,0);
  if ((char)uVar1 != '\0') {
    FUN_109335c0(local_c0,local_50);
    plVar2 = FUN_1055daf0(local_b0,local_c0);
    uVar5 = (undefined4)*plVar2;
    uVar6 = *(undefined4 *)((int)plVar2 + 4);
    uVar3 = (undefined4)plVar2[1];
    uVar4 = *(undefined4 *)((int)plVar2 + 0xc);
  }
  FUN_1039c0f0(local_a0);
  *param_1 = uVar5;
  param_1[1] = uVar6;
  param_1[2] = uVar3;
  param_1[3] = uVar4;
  return;
}

