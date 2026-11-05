/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 native class descriptor type-name getter. ScriptCore.UIManager vtable
   0x0100fbbc+0x0c. Original instruction bytes at 0x0060fc70: 8b4144c3cccc. mov eax,[ecx+0x44]; ret;
   runtime field value not determined statically. The adjacent vtable +0x10 slot is the verified
   native registration-table getter. original PC 1.67 TS3W.exe; proof:
   evidence/bindings/tables.json. */

undefined4 __fastcall GetNativeDescriptorTypeName_Field44(int param_1)

{
  return *(undefined4 *)(param_1 + 0x44);
}

