/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX destination vector, source vector RET4, returns SAME
   destination. Initializes empty destination with its own inline one-row region then delegates
   source begin/end and source-vector pointer to942900. Complete generic reserve/copy helper remains
   unexpanded; selected replay consumer treats resulting rows as independently destructible names.
    */

void * __thiscall ObjectSoundRows_CopyVector(void *this,void *sourceVector)

{
  int iVar1;
  undefined4 uVar2;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(char **)((int)this + 0xc) = "EASTL";
  iVar1 = (int)this + 0x14;
  *(int *)((int)this + 0x10) = iVar1;
  uVar2 = *(undefined4 *)((int)sourceVector + 0xc);
  *(int *)((int)this + 4) = iVar1;
  *(int *)this = iVar1;
  *(int *)((int)this + 8) = (int)this + 0x28;
  *(undefined4 *)((int)this + 0xc) = uVar2;
  FUN_00942900(*(void **)sourceVector,*(void **)((int)sourceVector + 4),sourceVector);
  return this;
}

