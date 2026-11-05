/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration-path observation: Constructs the SACS Scripting/ScriptFunctions
   descriptor with vtable 0x01007DA8. Its +0x10 slot points to 0x007691D0, which returns the SACS
   native registration table. Raw source:
   evidence/bindings/consumer-trace.md; TS3W.exe
   . */

undefined4 * __fastcall ConstructSACSNativeDescriptor(undefined4 *param_1)

{
  int *piVar1;
  undefined4 *this;
  
  *param_1 = &PTR_FUN_01007da8;
  _DAT_011d5bb4 = param_1;
  piVar1 = (int *)FUN_00593930();
  this = (undefined4 *)FUN_004e4500(0x18,"Scripting/SacsHost/",0);
  if (this == (undefined4 *)0x0) {
    this = (undefined4 *)0x0;
  }
  else {
    FUN_007d4000(this,"SacsHostAcquireDriverAsync","Scripting/SacsHost",0x78abd377);
    *this = &PTR_FUN_01007dec;
    this[1] = &PTR_FUN_01007ddc;
    this[2] = &PTR_LAB_01007dbc;
  }
  DAT_011d5bb8 = this;
  (**(code **)(*piVar1 + 0x10))(this,0);
  return param_1;
}

