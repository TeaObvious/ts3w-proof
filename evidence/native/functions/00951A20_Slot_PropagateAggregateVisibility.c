/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Reads event24 payload byte+2 (aggregate
   mask0x39 result). Iterates slot relationships with00950F40 and synchronously dispatches object
   event25 with a pointer to that copied lowbyte. Iterator yields child object atcursor+8. Exact
   iterator graph policy is outside this review. */

bool __thiscall Slot_PropagateAggregateVisibility(void *this,char *summary3)

{
  char cVar1;
  int iVar2;
  void *local_14;
  undefined1 local_10;
  int local_c;
  undefined4 local_8;
  
  local_c = (int)this + 0x48;
  summary3 = (char *)CONCAT31(summary3._1_3_,summary3[2]);
  local_8 = 0;
  local_10 = 0;
  local_14 = this;
  iVar2 = FUN_00950f40((int *)&local_14);
  cVar1 = (char)iVar2;
  while (cVar1 != '\0') {
    ObjectEvents_Dispatch(0x19,*(void **)(local_c + 8),&summary3);
    iVar2 = FUN_00950f40((int *)&local_14);
    cVar1 = (char)iVar2;
  }
  return true;
}

