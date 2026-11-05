/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161db0 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies
   [assembly=ScriptCore token=0x06001087; flags: System.UInt32; return=Sims3.SimIFace.Rect]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_RouteManager__RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies
          (undefined4 *param_1,uint param_2)

{
  void *this;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  this = (void *)FUN_005ebac0();
  if (this != (void *)0x0) {
    FUN_005ece20(this,&uStack_10,param_2);
    FUN_0076bf50(param_1,uStack_10,uStack_c);
    FUN_0076bf50(param_1 + 2,uStack_8,uStack_4);
  }
  return param_1;
}

