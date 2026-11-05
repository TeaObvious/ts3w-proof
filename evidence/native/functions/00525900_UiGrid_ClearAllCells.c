/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX Grid interface, no stack words/plainRET, lowALtrue.
   Query current bounds virtualF8; when available form inclusive counts end-start+1 and invoke
   virtual19C(column,row,columnCount,rowCount)->525800, then virtualE8 selection reset and IWindow
   interface-24C virtual90 invalidation. Set selection fields interface+1B0/+1B4 toFFFFFFFF. No
   simple direct ClearCell per dictionary key or whole CLR map clear; actual bounds define
   traversal. Actual C shows unaff_ESI and shifted bounds locals after indirect virtual0xF8.
   Original initialized four-DWORD bounds and physical PUSH order to virtual0x19C define the
   coordinates/counts; the C aliases are not literal uninitialized bounds. No speculative deeper ABI
   edits are made. */

bool __thiscall UiGrid_ClearAllCells(void *this)

{
  char cVar1;
  int unaff_ESI;
  int local_10;
  int local_c;
  int local_8;
  undefined4 local_4;
  
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  cVar1 = (**(code **)(*(int *)this + 0xf8))(&local_10);
  if (cVar1 != '\0') {
    (**(code **)(*(int *)this + 0x19c))
              (unaff_ESI,local_10,(local_c - unaff_ESI) + 1,(local_8 - local_10) + 1);
    (**(code **)(*(int *)this + 0xe8))();
    (**(code **)(*(int *)((int)this + -0x24c) + 0x90))();
    *(undefined4 *)((int)this + 0x1b0) = 0xffffffff;
    *(undefined4 *)((int)this + 0x1b4) = 0xffffffff;
  }
  return true;
}

