/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration-path observation: Stores a script-host setup callback and invokes
   it from 0x0076B75B during setup. Caller 0x00EC9870 supplies 0x00EC96E0, which reaches the SACS
   descriptor wrapper. Raw source:
   evidence/bindings/consumer-trace.md; TS3W.exe
   . */

void __cdecl
InstallScriptHostSetupCallback
          (undefined4 param_1,char param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  void *this;
  undefined4 uVar1;
  void *this_00;
  int *piVar2;
  
  this = DAT_011cf3f4;
  if (DAT_011cf3f4 != (void *)0x0) {
    uVar1 = FUN_0059f7e0(DAT_011cf3f4,0x2957b48);
    if ((char)uVar1 == '\0') {
      this_00 = (void *)FUN_004e4500(0x30,"Services/Script",0);
      if (this_00 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_0076b270(this_00,param_1,param_3,param_2,param_4,param_5);
      }
      FUN_0059fd00(this,piVar2,1);
    }
    uVar1 = FUN_0059f7e0(this,0x557f63f2);
    if ((char)uVar1 == '\0') {
      piVar2 = (int *)FUN_004e4500(0x14,"Services/ScriptMessageServer",0);
      if (piVar2 != (int *)0x0) {
        FUN_0059f4c0(piVar2,0x557f63f2,0);
        *piVar2 = (int)&PTR_FUN_01008be4;
        piVar2[4] = 0;
        FUN_0059fd00(this,piVar2,2);
        return;
      }
      FUN_0059fd00(this,(int *)0x0,2);
    }
  }
  return;
}

