/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x103f1334) */
/* WARNING: Removing unreachable block (ram,0x103f135c) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_ExtractEnabledLayerIndices. Export
   ordinal(s): 83. Entry VA: 0x1039f0b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600048F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 * __cdecl CASUtils_ExtractEnabledLayerIndices(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint uVar3;
  uint auStack_18c [6];
  undefined4 auStack_174 [24];
  byte *pbStack_114;
  byte *pbStack_110;
  undefined1 *puStack_10c;
  byte abStack_104 [256];
  undefined1 auStack_4 [4];
  
                    /* 0x39f0b0  83  CASUtils_ExtractEnabledLayerIndices */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 != (LPCWSTR)0x0) {
    FUN_103ba880(auStack_174);
    FUN_103bae20(auStack_174,pWVar2);
    pbStack_114 = abStack_104;
    puStack_10c = auStack_4;
    abStack_104[0] = 0;
    auStack_18c[0] = 7;
    uVar3 = 0;
    pbStack_110 = pbStack_114;
    do {
      uVar3 = uVar3 + 1;
      FUN_1013f320(&pbStack_114,"Layer%dEnabled");
      FUN_103b9e20(auStack_174,pbStack_114,auStack_18c,&stack0xfffffe6f);
    } while (uVar3 < 5);
    FUN_103baaa0(auStack_174);
    return (undefined1 *)0x0;
  }
  return (undefined1 *)0x0;
}

