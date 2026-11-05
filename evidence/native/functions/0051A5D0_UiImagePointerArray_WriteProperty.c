/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete108byte property callback51A5D0..51A63B; four
   caller-clean stack words(context,inputValue,descriptor,allocator-unused), plainRET, meaningfulAL1
   only. Destination=inputContext+4 plus signed16 descriptor+E; inputValue+4 supplies pointerarray;
   descriptor+10 supplies unsignedcount. Each new pointer Query01BE6AB3 is retained via primary0 if
   nonnull; existing destination pointer is released via primary4 if nonnull; ONLY THEN new pointer
   is stored and both arrays advance4. Countzero returnsAL1 without elementwork. Actual StdDrawable
   property callbacktableFBC094 plus startupF80F70/descriptorFC071C selects this writer for eight
   Stateimages; never claim all pointer setters publish before release. */

bool __cdecl
UiImagePointerArray_WriteProperty
          (void *objectContext,void *inputValue,void *descriptor,void *opaqueAllocator)

{
  uint uVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  
  piVar2 = *(int **)((int)inputValue + 4);
  piVar4 = (int *)((int)*(short *)((int)descriptor + 0xe) + *(int *)((int)objectContext + 4));
  uVar1 = 0;
  if (*(int *)((int)descriptor + 0x10) != 0) {
    do {
      puVar3 = (undefined4 *)0x0;
      if (((int *)*piVar2 != (int *)0x0) &&
         (puVar3 = (undefined4 *)(**(code **)(*(int *)*piVar2 + 0xc))(0x1be6ab3),
         puVar3 != (undefined4 *)0x0)) {
        (**(code **)*puVar3)();
      }
      if ((int *)*piVar4 != (int *)0x0) {
        (**(code **)(*(int *)*piVar4 + 4))();
      }
      *piVar4 = (int)puVar3;
      uVar1 = uVar1 + 1;
      piVar4 = piVar4 + 1;
      piVar2 = piVar2 + 1;
    } while (uVar1 < *(uint *)((int)descriptor + 0x10));
  }
  return true;
}

