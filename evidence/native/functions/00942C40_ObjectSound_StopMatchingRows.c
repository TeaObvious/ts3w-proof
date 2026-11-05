/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 object sound admission. ECX component, byte stopMode + UInt32 rowMask RET8.
   Captures original begin/end ONCE, scans by20. Select maskFFFFFFFF or nonzero(rowMask&packedID).
   Active4C and row bit40000000 clear ->8608E0(maskedID,stopMode); otherwise942A00(maskedID,true).
   The latter can erase/shift rows; this loop STILL advances old iterator toward old captured end.
   Do not rewrite as live-index iteration or infer safe complete removal of multiple deferred rows;
   no runtime witness here. */

void __thiscall ObjectSound_StopMatchingRows(void *this,byte stopMode,uint rowMask)

{
  uint *puVar1;
  uint uVar2;
  uint *puVar3;
  
  puVar1 = *(uint **)((int)this + 0x24);
  for (puVar3 = *(uint **)((int)this + 0x20); puVar3 != puVar1; puVar3 = puVar3 + 5) {
    uVar2 = *puVar3;
    if ((rowMask == 0xffffffff) || ((rowMask & uVar2) != 0)) {
      if ((*(char *)((int)this + 0x4c) == '\0') || ((uVar2 & 0x40000000) != 0)) {
        ObjectSound_FinishAndRetire(this,uVar2 & 0x3fffffff,1);
      }
      else {
        Audio_SubmitHandleStopCommand(uVar2 & 0x3fffffff,stopMode);
      }
    }
                    /* Captured-end iterator increment is preserved even after942A00 may erase/shift
                       current row. No safe-live-iteration claim. */
  }
  return;
}

