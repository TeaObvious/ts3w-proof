/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete Grid, three stack DWORDs/RET0C. Null window
   returns. Build/find/remove actual type1 window record in map+3E0 using column,row,IWindow. On
   found record erase native node/count before load retained cell-container IWindow+4E4 and invoke
   its virtualE0(RemoveChild) with window interface. No direct Shutdown call; actual container
   removal/release and separate final reference ownership determine later destruction. Missing map
   node does not detach an unrelated window. This consumer plus constructor producer proves the real
   cell-container link. */

void __thiscall UiGrid_RemoveCellWindow(void *this,int column,int row,void *windowInterface)

{
  void *pvVar1;
  void *allocation;
  undefined4 local_1c;
  int local_18;
  int local_14;
  void *local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  pvVar1 = windowInterface;
  if (windowInterface != (void *)0x0) {
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    local_18 = row;
    local_1c = 1;
    local_14 = column;
    local_10 = windowInterface;
    FUN_00526950((void *)((int)this + 0x3e0),(int *)&windowInterface,(int)&local_1c);
    allocation = windowInterface;
    if (windowInterface != (void *)((int)this + 0x3e4)) {
      *(int *)((int)this + 0x3f4) = *(int *)((int)this + 0x3f4) + -1;
      FUN_004e1030(windowInterface);
      FUN_004e1330(allocation,(int *)((int)this + 0x3e4));
      Memory_FreeIfNonNull(allocation);
      (**(code **)(**(int **)((int)this + 0x4e4) + 0xe0))(pvVar1);
    }
  }
  return;
}

