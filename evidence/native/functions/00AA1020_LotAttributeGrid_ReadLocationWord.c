/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 static: ECX attribute-grid service plus location pointer, RET0x04; AX UInt16
   result. If+7C storage exists call retained lookup with signed-byte X/Z and signed level minus
   stored minimum; otherwise return0. Attribute semantics are not established as room ID, PatternID
   or current material/proxy grouping. Child lookup/layout remains bounded. Descriptive role, not
   recovered symbol. */

undefined2 __thiscall LotAttributeGrid_ReadLocationWord(void *this,char *param_1)

{
  undefined2 *puVar1;
  
  if (*(void **)((int)this + 0x7c) != (void *)0x0) {
    puVar1 = (undefined2 *)
             RoomGrid_GetLogicalCell
                       (*(void **)((int)this + 0x7c),(int)*param_1,(int)param_1[1],
                        (int)param_1[2] - *(int *)((int)this + 0xc));
    return *puVar1;
  }
  return 0;
}

