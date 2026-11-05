/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 physical cdecl three words/plainRET ALBoolean only. Called after click geometric bounds.
   If AB0830 gate, nonnull lot and raw point.level==0: obtains ACEC30 value and invokes AB0A40.
   False result produces optional error7 and returnsAL1 (caller refuses). Other paths AL0.
   Underlying mode/ownership policy not established by this selected wrapper; do not infer complete
   household/buildability rules from its decompiler name or reuse it as geometricbounds. */

bool __cdecl FUN_00a642d0(undefined *lot,LotPaintPoint *point,undefined *errors)

{
  char cVar1;
  uint uVar2;
  float local_50 [19];
  
  cVar1 = ObjectPickup_IsContextGateEnabled();
  if (((cVar1 != '\0') && (lot != (undefined *)0x0)) && (point->level == 0)) {
    uVar2 = FUN_00acec30((int)lot);
    uVar2 = FUN_00ab0a40(lot,uVar2);
    if ((char)uVar2 == '\0') {
      if (errors != (undefined *)0x0) {
        BuildEditErrorRecord_InitializeAtLotPoint(local_50,7,lot,point,0,0);
        FUN_00ad8570(errors,local_50);
        FUN_00ad70d0((int)local_50);
      }
      return true;
    }
  }
  return false;
}

