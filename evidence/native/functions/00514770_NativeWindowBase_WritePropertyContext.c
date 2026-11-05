/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 property-context producer. Physical receiver ECX and stack4 output pointer; RET4.
   Selected51FF70 does not consume the register return, but the other vtable/data users are
   unexpanded; existing undefined return/unassigned storage is preserved rather than asserting
   global void. Writes descriptor00FBBAB4, receiver and count1 to first3 DWORDs, then calls actual
   receiver vtable+14 and stores its raw result as fourth DWORD. The selected inherited
   callback51FF70 copies only first3 DWORDs. Descriptor+0C points17 rows at0114F550; selected
   Caption EEC1B00A row has tag12/count1/no override and field+7C. The virtual callback itself and
   arbitrary class/provider behavior remain unexpanded. Owned11 instructions35 bytes; no bytes or
   Listing change. */

void __thiscall NativeWindowBase_WritePropertyContext(void *this,void *outContext)

{
  undefined4 uVar1;
  
  *(undefined **)outContext = &DAT_00fbbab4;
  *(void **)((int)outContext + 4) = this;
  *(undefined4 *)((int)outContext + 8) = 1;
  uVar1 = (**(code **)(*(int *)this + 0x14))();
  *(undefined4 *)((int)outContext + 0xc) = uVar1;
  return;
}

