/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 SPT section instruction contract. ECXcursor +oneoutputpointerstack RET4, returns
   outputEAX. Reads12ascendingbytes, reconstructsthreeFLOAT32words, MOVSSstores atoutput0/4/8; no
   normalization/vectoraxisflip/numericintconversion. Offsetupdatedpereachbyte; caller owns
   validbuffer/output. Decompiled temporarypointer/float casts are rawbitreconstruction. */

float * __thiscall SptCursor_ReadFloat3LE(void *this,float *output)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  float *pfVar4;
  float *pfVar5;
  float *pfVar6;
  
  pfVar4 = output;
  iVar2 = *(int *)((int)this + 4);
  iVar3 = *(int *)this;
  *(int *)this = iVar3 + 1;
  uVar1 = *(undefined1 *)(iVar2 + iVar3);
  *(int *)this = iVar3 + 2;
  output._0_2_ = CONCAT11(*(undefined1 *)(iVar2 + iVar3 + 1),uVar1);
  *(int *)this = iVar3 + 3;
  output._0_3_ = CONCAT12(*(undefined1 *)(iVar2 + iVar3 + 2),output._0_2_);
  *(int *)this = iVar3 + 4;
  output = (float *)CONCAT13(*(undefined1 *)(iVar2 + iVar3 + 3),output._0_3_);
  pfVar5 = output;
  *(int *)this = iVar3 + 5;
  uVar1 = *(undefined1 *)(iVar2 + iVar3 + 4);
  *(int *)this = iVar3 + 6;
  output._0_2_ = CONCAT11(*(undefined1 *)(iVar2 + iVar3 + 5),uVar1);
  *(int *)this = iVar3 + 7;
  output._0_3_ = CONCAT12(*(undefined1 *)(iVar2 + iVar3 + 6),output._0_2_);
  *(int *)this = iVar3 + 8;
  output = (float *)CONCAT13(*(undefined1 *)(iVar2 + iVar3 + 7),output._0_3_);
  pfVar6 = output;
  *(int *)this = iVar3 + 9;
  uVar1 = *(undefined1 *)(iVar2 + iVar3 + 8);
  *(int *)this = iVar3 + 10;
  *pfVar4 = (float)pfVar5;
  output._0_2_ = CONCAT11(*(undefined1 *)(iVar2 + iVar3 + 9),uVar1);
  *(int *)this = iVar3 + 0xb;
  output._0_3_ = CONCAT12(*(undefined1 *)(iVar2 + iVar3 + 10),output._0_2_);
  *(int *)this = iVar3 + 0xc;
  uVar1 = *(undefined1 *)(iVar2 + iVar3 + 0xb);
  pfVar4[1] = (float)pfVar6;
  output = (float *)CONCAT13(uVar1,output._0_3_);
  pfVar4[2] = (float)output;
  return pfVar4;
}

