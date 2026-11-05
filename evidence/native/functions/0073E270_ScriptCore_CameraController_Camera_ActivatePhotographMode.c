/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x0115ed78 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_ActivatePhotographMode [assembly=ScriptCore token=0x06000711;
   photographerId: System.UInt64, activate: System.Boolean, minZoom: System.Single, maxZoom:
   System.Single, cameraQuality: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CameraController__Camera_ActivatePhotographMode
               (undefined4 param_1,undefined4 param_2,float param_3,float param_4,uint param_5)

{
  int iVar1;
  void *pvVar2;
  int *piVar3;
  void *this;
  
  iVar1 = FUN_00969bd0();
  if ((iVar1 != 0) && (pvVar2 = (void *)FUN_00f21ff0(iVar1), pvVar2 != (void *)0x0)) {
    if (param_3._0_1_ == '\0') {
      piVar3 = (int *)FUN_00513de0((int)pvVar2);
      if ((piVar3 != (int *)0x0) &&
         (this = (void *)(**(code **)(*piVar3 + 0xc))(0xc49dcd29), this != (void *)0x0)) {
        FUN_0097d220((int)this);
        FUN_0097abf0(this,3);
        FUN_0097abb0(this,_DAT_00f9b634,DAT_010009b0);
        FUN_0097abe0((int)this);
      }
      FUN_0096b060(pvVar2,1,'\0');
    }
    else {
      FUN_0096b060(pvVar2,5,'\x01');
      piVar3 = (int *)FUN_00513de0((int)pvVar2);
      if ((piVar3 != (int *)0x0) &&
         (pvVar2 = (void *)(**(code **)(*piVar3 + 0xc))(0xc49dcd29), pvVar2 != (void *)0x0)) {
        FUN_0097d420((int)pvVar2);
        if ((param_3 != DAT_00fab218) && (param_4 != DAT_00fab218)) {
          FUN_0097abb0(pvVar2,param_3,param_4);
        }
        if (param_5 < 3) {
          FUN_0097abf0(pvVar2,param_5);
          FUN_0097abd0((int)pvVar2);
          return;
        }
      }
    }
  }
  return;
}

