/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original instruction review: takes full 64-bit content ID and stream adapter pointer. Obtains
   source content database, copies dependencies into supplied memory database, then00ad46c0
   writes/remaps selected content and returns adapter status. Actual reader 00ad6150 consumes the
   corresponding household type key list. Called registered void entry hides status. */

undefined1
LotContent_ExportHouseholdToTravelDatabase(uint param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined1 uVar1;
  void *this;
  undefined4 uVar2;
  int iVar3;
  int *local_18 [6];
  
  this = DAT_011ea6a4;
  FUN_00ad4100();
  FUN_007d7900(local_18);
  uVar2 = FUN_009a16e0(this,local_18);
  if ((char)uVar2 != '\0') {
    iVar3 = FUN_007d9130((int *)*param_3,local_18[0]);
    if (iVar3 != 0) {
      FUN_00ad46c0(param_3,(char *)local_18,param_1,param_2);
      uVar1 = *(undefined1 *)(param_3 + 5);
      StreamReader_ReleaseAuxiliary(local_18);
      return uVar1;
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return 0;
}

