/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_GetClipInstanceIdForAges. Export
   ordinal(s): 9. Entry VA: 0x1052cb10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600066A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl Animation_GetClipInstanceIdForAges(int param_1,int param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  longlong lVar3;
  ulonglong uVar4;
  undefined8 uVar5;
  uint uVar6;
  WCHAR aWStack_104 [130];
  
                    /* 0x52cb10  9  Animation_GetClipInstanceIdForAges */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  FUN_109278a0(aWStack_104,0x100,pWVar2,0xffffffff);
  lVar3 = FUN_10375f20(param_1,param_2);
  uVar4 = FUN_10376d90((char *)aWStack_104,(uint *)&stack0xfffffeec);
  uVar6 = (uint)((ulonglong)lVar3 >> 0x20);
  uVar5 = FUN_10375f60(0,0,(uint)lVar3,uVar6);
  FUN_10375f60((uint)uVar4,(uint)(uVar4 >> 0x20),(uint)lVar3,uVar6);
  return uVar5;
}

