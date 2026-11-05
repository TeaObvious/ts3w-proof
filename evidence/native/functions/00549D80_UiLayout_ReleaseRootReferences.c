/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX actual layout, no stack words/plainRET. If registration
   manager+1C exists notify virtual14(identity+8,layout) then clear it. Invoke layout virtual10
   BEFORE releasing every retained interface pointer from vector+64..+68; finally set
   end+68=start+64. For actual constructor-installedFC1EC0, virtual10 is54A8A0 which destroys roots
   from host. This indirect call proves original Shutdown path; it is not a direct54A7D0->54A8A0
   call or current reference-counter loop. */

void __thiscall UiLayout_ReleaseRootReferences(void *this)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  if (*(int **)((int)this + 0x1c) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x1c) + 0x14))((int)this + 8,this);
    *(undefined4 *)((int)this + 0x1c) = 0;
  }
  (**(code **)(*(int *)this + 0x10))();
  puVar1 = *(undefined4 **)((int)this + 0x68);
  for (puVar2 = *(undefined4 **)((int)this + 100); puVar2 != puVar1; puVar2 = puVar2 + 1) {
    (**(code **)(*(int *)*puVar2 + 4))();
  }
  *(undefined4 *)((int)this + 0x68) = *(undefined4 *)((int)this + 100);
  return;
}

