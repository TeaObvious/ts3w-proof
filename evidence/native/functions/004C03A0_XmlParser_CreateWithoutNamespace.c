/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004c03a5: Pass null shared-context and null namespace separator; forward incoming encoding.
 * 004c03aa: Clear hidden EAX allocator input before calling4C0180.
 * 004c03ba: Optional post-create namespace initialization is gated by parser+EC; the selected null-separator construction leaves it0.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role
   XmlParser_CreateWithoutNamespace. Physical ABI: cdecl stack+4 encoding; EAX parser/null; plain
   RET. Clears EAX allocator and passes two null stack options. */

void * __cdecl XmlParser_CreateWithoutNamespace(ushort *encoding)

{
  void *pvVar1;
  undefined4 uVar2;
  
  pvVar1 = XmlParser_CreateWithOptionalNamespaceSeparator
                     ((void *)0x0,encoding,(ushort *)0x0,(void *)0x0);
  if ((pvVar1 != (void *)0x0) && (*(char *)((int)pvVar1 + 0xec) != '\0')) {
    uVar2 = FUN_004bcb50((int)pvVar1);
    if ((char)uVar2 == '\0') {
      FUN_004bb890((int)pvVar1);
      return (void *)0x0;
    }
  }
  return pvVar1;
}

