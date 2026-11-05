/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SetPathEndOrientation. Export ordinal(s):
   694. Entry VA: 0x10543320. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000194. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_SetPathEndOrientation(uint param_1,int param_2)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 auStack_48 [16];
  
                    /* 0x543320  694  Route_SetPathEndOrientation */
  puVar2 = (undefined4 *)&stack0x0000000c;
  puVar3 = auStack_48;
  for (iVar1 = 0x10; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar3 = *puVar2;
    puVar2 = puVar2 + 1;
    puVar3 = puVar3 + 1;
  }
  FUN_10541e60(param_1,param_2);
  return;
}

