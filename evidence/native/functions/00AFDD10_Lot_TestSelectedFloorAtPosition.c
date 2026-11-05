/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Static PC1.67 original instruction comparison; 241 complete owned bytes/79 actual Listing
   instructions. No runtime execution.
   Five stack inputs and plain RET; Boolean consumers use AL, not stale upper EAX. Encodes signed
   cell/quadrant and checks against lot dimensions and inclusive level bounds. Selected floor
   presence query00A8E170 precedes optional00ACF030 fallback controlled by param3. Param4 may accept
   early; otherwise00A8CB10 and existing lower-level-property query decide. Audio query0086C530
   supplies flags0,0,1. No full floor subsystem or CLR visibility equivalence is inferred. */

uint __cdecl
Lot_TestSelectedFloorAtPosition(void *param_1,float *param_2,char param_3,char param_4,char param_5)

{
  bool bVar1;
  uint uVar2;
  undefined2 local_8;
  char local_6;
  undefined1 local_5;
  undefined3 uStack_4;
  
  local_8._0_1_ = -1;
  local_8._1_1_ = -1;
  _local_5 = CONCAT31(uStack_4,0xff);
  local_6 = '\0';
  LotLocation_EncodeCellAndQuadrant(param_2,(char *)&local_8);
  uVar2 = (uint)(char)local_8;
  if (((((((int)uVar2 < 0) || (*(int *)((int)param_1 + 0x174) <= (int)uVar2)) || (local_8._1_1_ < 0)
        ) || ((*(int *)((int)param_1 + 0x178) <= (int)local_8._1_1_ ||
              (uVar2 = (uint)local_6, (int)uVar2 < *(int *)((int)param_1 + 0x17c))))) ||
      (*(int *)((int)param_1 + 0x180) < (int)uVar2)) ||
     ((uVar2 = FUN_00a8e170(*(void **)((int)param_1 + 0x290),&local_8,(byte)_local_5,1),
      (char)uVar2 == '\0' &&
      ((param_3 == '\0' ||
       (uVar2 = FUN_00acf030(param_1,(char *)&local_8,param_5), (char)uVar2 == '\0')))))) {
    return uVar2 & 0xffffff00;
  }
  if (param_4 != '\0') {
    return 1;
  }
  bVar1 = FloorManager_TileHasAnyRequestedFlag(*(void **)((int)param_1 + 0x290),(char *)&local_8);
  if ((bVar1) &&
     (uVar2 = Lot_TestLowerLevelPropertyAtPosition(param_1,(LotXZLevel *)param_2),
     (char)uVar2 == '\0')) {
    return 1;
  }
  return 0;
}

