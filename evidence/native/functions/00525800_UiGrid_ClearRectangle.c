/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX Grid interface, four signed stack DWORDs/RET10hex.
   Signed nonpositive requested count initially returnsAL1; query actual bounds through virtualF8,
   clamp column/row starts and inclusive ends with signed CMP/CMOVL/JLE, reject clamped nonpositive
   extent withAL0. Iterate columns outer/rows inner and invoke Grid virtual198 ClearCell for each
   actual coordinate, ignoring per-cell return. Invalidate IWindow through interface-24C virtual90
   afterwards. Actual ClearAll uses this slot19C; current key snapshot/clear order is not equivalent
   native rectangle iteration. Actual C contains unaff_retaddr/unaff_EBX and shifted column/row
   local aliases after the indirect virtual0xF8 call; these are decompiler stack-tracking defects,
   not use of a real return address as a coordinate. Original EDI=column, ESI=row, signed clamp/loop
   instructions and physical PUSH ESI;PUSH EDI to virtual0x198 are authoritative. No speculative
   callee ABI correction is cascaded. */

bool __thiscall UiGrid_ClearRectangle(void *this,int column,int row,int columnCount,int rowCount)

{
  int iVar1;
  int iVar2;
  int unaff_EBX;
  int unaff_retaddr;
  int local_10;
  int iStack_c;
  int iStack_8;
  
  if ((columnCount < 1) || (rowCount < 1)) {
    return true;
  }
  (**(code **)(*(int *)this + 0xf8))(&local_10);
  if (unaff_retaddr < unaff_EBX) {
    unaff_retaddr = unaff_EBX;
  }
  iVar2 = columnCount;
  if (iStack_c + 1 < unaff_retaddr + columnCount) {
    iVar2 = (iStack_c - unaff_retaddr) + 1;
  }
  if (0 < iVar2) {
    if (column < local_10) {
      column = local_10;
    }
    if (iStack_8 + 1 < column + columnCount) {
      columnCount = (iStack_8 - column) + 1;
    }
    if (0 < columnCount) {
      iVar2 = unaff_retaddr + iVar2;
      if (unaff_retaddr < iVar2) {
        iVar1 = column;
        do {
          for (; iVar1 < column + columnCount; iVar1 = iVar1 + 1) {
            (**(code **)(*(int *)this + 0x198))(unaff_retaddr,iVar1);
          }
          unaff_retaddr = unaff_retaddr + 1;
          iVar1 = column;
        } while (unaff_retaddr < iVar2);
      }
      (**(code **)(*(int *)((int)this + -0x24c) + 0x90))();
      return true;
    }
  }
  return false;
}

