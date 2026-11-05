/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   OnlineFeaturesHost_UnregisteredFromSharingService. Export ordinal(s): 530. Entry VA: 0x10537970.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x060005A0. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

void __cdecl OnlineFeaturesHost_UnregisteredFromSharingService(uint param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    iVar1 = 0;
    if ((param_1 & 0xffff0000) != 0) {
      iVar1 = 0x10;
      param_1 = param_1 >> 0x10;
    }
    if ((param_1 & 0xff00) != 0) {
      iVar1 = iVar1 + 8;
      param_1 = param_1 >> 8;
    }
    if ((param_1 & 0xf0) != 0) {
      iVar1 = iVar1 + 4;
      param_1 = param_1 >> 4;
    }
    if ((param_1 & 0xc) != 0) {
      iVar1 = iVar1 + 2;
      param_1 = param_1 >> 2;
    }
    if ((param_1 & 2) != 0) {
      iVar1 = iVar1 + 1;
    }
    if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
      FUN_106747d0(iVar1);
    }
  }
  return;
}

