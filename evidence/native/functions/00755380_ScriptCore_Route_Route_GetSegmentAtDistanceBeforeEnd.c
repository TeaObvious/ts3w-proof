/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161b58 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetSegmentAtDistanceBeforeEnd [assembly=ScriptCore token=0x06001142;
   routeHandle: System.UInt32, fDistance: System.Single, bCreate: System.Boolean;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Route::Route_GetSegmentAtDistanceBeforeEnd
          (uint routeHandle,undefined4 distanceBeforeEnd,undefined4 createSegment)

{
  int *piVar1;
  int *routeState;
  int iVar2;
  int iVar3;
  undefined4 segmentId;
  int *selectedPath;

  routeState = (int *)FUN_0074b4b0(DAT_011d50c4,routeHandle);
  if (routeState != (int *)0x0) {
    (**(code **)(*routeState + 0x10))();
                    /* Instruction-verified path selection: +0xF4 chooses the active path pointer at
                       +0xEC; otherwise the first path in the +0xE0 list is used. This binding does
                       not traverse all remaining subpaths or subtract their lengths. Analyst field
                       roles; no recovered class layout is implied. */
    if ((char)routeState[0x3d] == '\0') {
      selectedPath = routeState + 0x38;
      if ((int *)*selectedPath == selectedPath) {
        selectedPath = (int *)0x0;
      }
      else {
        selectedPath = *(int **)(*selectedPath + 8);
      }
    }
    else {
      selectedPath = (int *)routeState[0x3b];
    }
    if (selectedPath != (int *)0x0) {
      piVar1 = selectedPath + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      iVar2 = (**(code **)(*selectedPath + 0x48))();
      if (iVar2 != 0) {
                    /* The original managed bCreate word at this point is [ESP+0x1C]; distance is
                       [ESP+0x18]. Both are forwarded to the selected path's virtual +0x48 call,
                       followed by the virtual +0xEC call with the returned value minus one.
                       Ghidra's apparent first no-argument +0x48 invocation is an ABI/decompiler
                       ambiguity; do not infer its prototype from pseudocode. */
        iVar2 = *selectedPath;
        iVar3 = (**(code **)(iVar2 + 0x48))(distanceBeforeEnd,createSegment);
        segmentId = (**(code **)(iVar2 + 0xec))(iVar3 + -1);
        FUN_007462e0((int *)&stack0xfffffff0);
        (**(code **)(*routeState + 0x14))();
        return segmentId;
      }
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*selectedPath)(1);
      }
    }
    (**(code **)(*routeState + 0x14))();
  }
                    /* Absent route or absent selected path reaches the zero return. Distinct from
                       the whole-route CreateSegmentAtDistanceBeforeEndOfRoute binding at
                       0x00751230, which walks backward over the subpath list. */
  return 0;
}

