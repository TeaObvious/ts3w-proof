/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 0054bb55: Store fifth and sixth stack inputs as error callback/context at reader+50/+54.
 * 0054bb63: Initialize generated object-ID counter to rawEF54054C; class IDs, authored object IDs and live pointers are different domains.
 * 0054bbcd: Construct embedded cursor+98 with incoming stream, null source label and null allocator; follows non-namespace parser creation.
 * 0054bbf0: Physical six-word callee cleanup confirms RET18; EAX is the constructed receiver.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role LayoutXml_ConstructReader.
   Physical ABI: ECX reader; six stack words: opaque
   contextWord,stream,document,notificationVector,errorCallback,errorContext; EAX receiver; RET18.
   Limits: Reader/context/notification pointer structures remain opaque; no broad native factory or
   pending-ref closure is implied. */

void * __thiscall
LayoutXml_ConstructReader
          (void *this,uint contextWord,void *stream,void *document,void *notifications,
          void *errorCallback,void *errorContext)

{
  int iVar1;
  float fVar2;
  
  *(undefined ***)this = &PTR_LAB_00fc2090;
  *(uint *)((int)this + 4) = contextWord;
  FUN_004e8cb0((void *)((int)this + 8),0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
  FUN_004e8cb0((void *)((int)this + 0x2c),0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
  fVar2 = FLOAT_00f998f8;
  *(void **)((int)this + 0x50) = errorCallback;
  *(void **)((int)this + 0x54) = errorContext;
  *(undefined4 *)((int)this + 0x58) = 0xef54054c;
  *(undefined4 *)((int)this + 0x5c) = 0;
  iVar1 = (int)this + 0x60;
  *(int *)((int)this + 100) = iVar1;
  *(int *)iVar1 = iVar1;
  *(float *)((int)this + 0x78) = fVar2;
  *(undefined4 *)((int)this + 0x7c) = DAT_0103fd88;
  *(char **)((int)this + 0x84) = "UI/UTFWin/XmlReaderState";
  *(undefined4 *)((int)this + 0x70) = 1;
  *(undefined4 **)((int)this + 0x6c) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x74) = 0;
  *(undefined4 *)((int)this + 0x80) = 0;
  *(void **)((int)this + 0x8c) = notifications;
  *(void **)((int)this + 0x88) = document;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  XmlCursor_ConstructEntry((void *)((int)this + 0x98),stream,(ushort *)0x0,(void *)0x0);
  FUN_004e8ae0((void *)((int)this + 0x2c),0,0,0,0,0);
  FUN_004e8ae0((void *)((int)this + 8),0,0,0,0,0);
  return this;
}

