/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original combo-control comparison; no execution. ECX control subobject and one
   stack word; RET4. Builds a temporary UTF16 string through retained helpers and appends a16-byte
   vector element, including growth path. No selected selection-index write. String/allocator child
   ownership is not recovered from inferred C types. */

void __thiscall WinComboBox_AppendValue(void *this,short *param_1)

{
  undefined4 *this_00;
  void *local_10;
  undefined4 local_c;
  int local_8;
  char *local_4;
  
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = "UI/UTFWin/Controls/ComboBox";
  FUN_0040b590(&local_10,param_1);
  this_00 = *(undefined4 **)((int)this + 0x48);
  if (this_00 < *(undefined4 **)((int)this + 0x4c)) {
    *(undefined4 **)((int)this + 0x48) = this_00 + 4;
    if (this_00 != (undefined4 *)0x0) {
      FUN_00408df0(this_00,&local_10);
    }
  }
  else {
    FUN_0051dbd0((void *)((int)this + 0x44),this_00,&local_10);
  }
  if ((2 < (int)(local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_10);
  }
  return;
}

