/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 native class descriptor type-name getter. ScriptCore.EATrace vtable
   0x01002190+0x0c; ScriptCore.Simulator vtable 0x01008eb8+0x0c. Original instruction bytes at
   0x005360c0: 8b4104c3cccc. mov eax,[ecx+0x4]; ret; runtime field value not determined statically.
   The adjacent vtable +0x10 slot is the verified native registration-table getter. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3; proof:
   registration-audit/tables.json and tools/descriptor_type_getters.py.
   
   Analyst note, original PC1.67 static. Existing shared field4 accessor name/ABI and all prior
   annotations are preserved. Complete2instruction body MOV EAX,[ECX+4];RET. In the selected custom
   interface vtables0100F11C/0100F358/0100F62C, ECX is complete+250/+2E0/+380, so this returns the
   custom-ID field254/2E4/384. Other descriptor/name users are distinct valid aliases; do not
   relabel this shared primitive as exclusively UI or change their type contracts. */

undefined4 __fastcall GetNativeDescriptorTypeName_Field4(int param_1)

{
  return *(undefined4 *)(param_1 + 4);
}

