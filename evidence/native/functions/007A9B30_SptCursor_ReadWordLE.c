/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 SPT section instruction contract. ECXcursor, no stackargs RET, EAXrawDWORD.
   Cursor+0=offset,+4=buffer; reads fourBYTEs inascending order and assembleslittleendianword,
   storesoffset aftereachbyte (final+4). No local length/end/overflowcheck.
   Signednessbelongsconsumer; not everytoken/count is signedint.
   Doesnotproveoutercontainerboundedness. */

uint __thiscall SptCursor_ReadWordLE(void *this)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  int iVar4;
  int iVar5;
  undefined4 local_4;
  
  iVar4 = *(int *)((int)this + 4);
  iVar5 = *(int *)this;
  *(int *)this = iVar5 + 1;
  uVar1 = *(undefined1 *)(iVar4 + iVar5);
  *(int *)this = iVar5 + 2;
  uVar2 = *(undefined1 *)(iVar4 + iVar5 + 1);
  *(int *)this = iVar5 + 3;
  uVar3 = *(undefined1 *)(iVar4 + iVar5 + 2);
  *(int *)this = iVar5 + 4;
  local_4 = CONCAT13(*(undefined1 *)(iVar4 + iVar5 + 3),CONCAT12(uVar3,CONCAT11(uVar2,uVar1)));
  return local_4;
}

