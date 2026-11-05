/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXedittransaction+lot/location/vector RET0C EAXgroup key. A76AC0 registers location hash
   first, then deep-copies requested key/vector into edit record; no collision retry or remap. Owns
   undo record separate from manager unique-insert result. */

uint __thiscall FireplaceEdit_RecordAddedGroup(void *this,int param_1,int *param_2,int *param_3)

{
  undefined4 *this_00;
  uint uVar1;
  undefined4 local_18 [2];
  void *local_10;
  
  uVar1 = FireplaceGroups_AddFromLocation
                    (*(void **)(param_1 + 0x2cc),(undefined *)param_2,(undefined *)param_3);
  FUN_00d20290(local_18,param_1,uVar1,param_3);
  this_00 = *(undefined4 **)((int)this + 0x58);
  if (this_00 < *(undefined4 **)((int)this + 0x5c)) {
    *(undefined4 **)((int)this + 0x58) = this_00 + 6;
    if (this_00 != (undefined4 *)0x0) {
      FUN_00d20130(this_00,local_18);
    }
  }
  else {
    FUN_00d202f0((void *)((int)this + 0x54),this_00,local_18);
  }
  *(undefined4 *)((int)this + 0x50) = 1;
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return uVar1;
}

