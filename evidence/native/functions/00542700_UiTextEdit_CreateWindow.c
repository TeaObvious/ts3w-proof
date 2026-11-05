/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual TextEdit descriptorFC0C30 identifies class6F42B4F0,
   instance size690hex, property descriptor114FE40 and constructor factory atFC0C54. Physical
   factory consumes two DWORDs RET8; first is unused, second supplied to
   allocation5050B0(size690,align10,nameFC10D4,context). Null allocation or null constructor result
   returns0, otherwise541F20 initializes complete object and factory returns IWindow complete+4.
   Allocation API calling convention is not changed here. */

void * UiTextEdit_CreateWindow(uint opaqueUnused,uint allocationContext)

{
  uint *this;
  void *pvVar1;
  
  this = FUN_005050b0(0x690,0x10,"UI/UTFWin/EA::UTFWinControls::WinTextEdit",
                      (int *)allocationContext);
  if (this != (uint *)0x0) {
    pvVar1 = UiTextEdit_InitializeFields(this);
    if (pvVar1 != (void *)0x0) {
      return (void *)((int)pvVar1 + 4);
    }
  }
  return (void *)0x0;
}

