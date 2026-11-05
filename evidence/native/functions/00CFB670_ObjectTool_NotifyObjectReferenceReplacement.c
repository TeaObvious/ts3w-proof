/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Receiver is the object-tool+58 interface selected by original
   ctor/table and07A90300 query. Relative+308 maps tool+360 and is notified through CB3C50.
   Relative+4/+8 select tool+5C/+60 using relative+29F(tool+2F7), then CB3C90.
   Relative+16C(tool+1C4) calls CCB010 with oldGUID only. Four GUID DWORDs/RET10h. */

void __thiscall
ObjectTool_NotifyObjectReferenceReplacement
          (void *this,int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  
  Undoable_NotifyObjectReplacement(param_1,param_2,param_3,param_4,*(int *)((int)this + 0x308));
  if (*(char *)((int)this + 0x29f) == '\0') {
    pvVar1 = *(void **)((int)this + 4);
  }
  else {
    pvVar1 = *(void **)((int)this + 8);
  }
  Undoable_VisitObjectReplacementTree(param_1,param_2,param_3,param_4,pvVar1);
  if (*(void **)((int)this + 0x16c) != (void *)0x0) {
    SlotPlacement_RemoveCachedHostCandidates(*(void **)((int)this + 0x16c),param_1,param_2);
  }
  return;
}

