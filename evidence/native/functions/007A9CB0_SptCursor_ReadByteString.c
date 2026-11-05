/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 SPT section instruction contract. ECXcursor, onestackstringdescriptor RET4. Clears
   outputstring then reconstructs UInt32LEbytecount; unsigned compareadjusts stringlength,
   rawbytecopy count frombuffer+offset, advancesoffsetbycount. No UTF8/UTF16 decoding, trimming,
   separatornormalization, embeddedzero filtering or local remainingbuffercheck.
   Stringallocation/admission/overflow/outercaller protection not fullyexpanded; C param
   reusedaspointer is lengthbits, not inputaddress. */

void __thiscall SptCursor_ReadByteString(void *this,int *outputString)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  int iVar5;
  int iVar6;
  void *_Src;
  int *this_00;
  int *piVar7;
  undefined1 *puVar8;
  void *_Dst;
  undefined1 *puVar9;
  int local_10 [4];
  
  this_00 = outputString;
  memmove(&DAT_011c8e54,&DAT_00f98f7a,0);
  DAT_011c8e54 = 0;
  if (local_10 != outputString) {
    FUN_00405910(outputString,&DAT_011c8e54,&DAT_011c8e54);
  }
  iVar5 = *(int *)this;
  iVar6 = *(int *)((int)this + 4);
  *(int *)this = iVar5 + 1;
  uVar2 = *(undefined1 *)(iVar6 + iVar5);
  *(int *)this = iVar5 + 2;
  uVar3 = *(undefined1 *)(iVar6 + iVar5 + 1);
  *(int *)this = iVar5 + 3;
  uVar4 = *(undefined1 *)(iVar6 + iVar5 + 2);
  *(int *)this = iVar5 + 4;
  _Src = (void *)this_00[1];
  outputString = (int *)CONCAT13(*(undefined1 *)(iVar6 + iVar5 + 3),
                                 CONCAT12(uVar4,CONCAT11(uVar3,uVar2)));
  piVar7 = (int *)((int)_Src - *this_00);
  if (outputString < piVar7) {
    _Dst = (void *)(*this_00 + (int)outputString);
    if (_Dst != _Src) {
      memmove(_Dst,_Src,1);
      this_00[1] = (int)_Dst + (this_00[1] - (int)_Src);
    }
  }
  else if (piVar7 < outputString) {
    FUN_00409d00(this_00,(void *)((int)outputString - (int)piVar7),0);
  }
  puVar9 = (undefined1 *)*this_00;
  puVar8 = (undefined1 *)(*(int *)((int)this + 4) + *(int *)this);
  puVar1 = puVar8 + (int)outputString;
  for (; puVar8 != puVar1; puVar8 = puVar8 + 1) {
    *puVar9 = *puVar8;
    puVar9 = puVar9 + 1;
  }
  *(int *)this = *(int *)this + (int)outputString;
  return;
}

