# Original authored Caption descriptor and empty-string commit

Static original PC1.67 evidence. Names describe established roles. These pairs
join the selected inherited descriptor to the actual generic string write;
they do not recover every native UI class, string provider or XML parser.

## Physical contracts

| Entry | Actual role and physical boundary | Complete original pair |
| --- | --- | --- |
| `0040a460` | UTF16 string clear; ECX object, no stack words, plain RET. Existing return metadata remains undefined/unassigned. | [ASM](../../evidence/native/functions/0040A460_NativeUtf16String_Clear.asm) ([C](../../evidence/native/functions/0040A460_NativeUtf16String_Clear.c)) |
| `00514770` | Property-context output; ECX receiver, Stack4 output, RET4. Existing return metadata remains undefined/unassigned. | [ASM](../../evidence/native/functions/00514770_NativeWindowBase_WritePropertyContext.asm) ([C](../../evidence/native/functions/00514770_NativeWindowBase_WritePropertyContext.c)) |
| `0051ff70` | Inherited-context callback; Stack4 output, Stack8 parent context, StackC/10 unused raw words; caller removes16 bytes, success AL, plain RET. | [ASM](../../evidence/native/functions/0051FF70_NativeWindowBase_GetInheritedPropertyContext.asm) ([C](../../evidence/native/functions/0051FF70_NativeWindowBase_GetInheritedPropertyContext.c)) |

The selected callers ignore the first two register results. Their other caller
and vtable/data users are unexpanded; no global void-return contract follows.
The actual C display uses void while database return metadata remains undefined
with unassigned storage. The callback's last two words are raw undefined4, with
no inferred semantic signedness.

## Actual inherited row and selected Caption

The existing custom-window inherited callback table at00FBC0B8 selects51FF70.
[Descriptor lookup](../../evidence/native/functions/00511CA0_NativePropertyContext_FindDescriptor.asm) ([C](../../evidence/native/functions/00511CA0_NativePropertyContext_FindDescriptor.c))
passes output, actual parent context, row and allocator to that callback. The
callback reads parent-context+4, invokes514770 into a local four-word buffer,
copies only its first three words and returns AL1.

The producer writes descriptor00FBBAB4, the same receiver and count1. Its fourth
word comes from the receiver's virtual+14 and is not copied by this callback.
That virtual producer remains an explicit boundary. The descriptor points to17
complete20-byte rows at0114F550. [Exact original data](../../evidence/native/data/ui-authored-caption-descriptor.txt)
contains that32-byte descriptor and340-byte row table. Caption ID EEC1B00A is row
0114F618: words0/0/EEC1B00A/007C0012/1. Its low12-bit type is string12, count1,
callback-table pointer0, no8000 flag, and signed field offset+7C. Therefore this
selected row has no custom write/address override. Other rows' complete behavior
and arbitrary native-class inheritance are not inferred.

## Presence, preparation and commit

[Authored-property application](../../evidence/native/functions/0054B600_LayoutXml_ApplyAuthoredProperty.asm) ([C](../../evidence/native/functions/0054B600_LayoutXml_ApplyAuthoredProperty.c))
uses propid and exact type lookup, actual descriptor compatibility and count
admission. In its scalar branch, absent key may parse the supplied literal.
Present key instead invokes the actual key parser. A failed key parse skips
both literal and key-provider calls; it then reaches descriptor write. A parsed
key whose installed providers all decline reports2FC50009 before that write.
These are distinct branches, with no literal fallback.

[Value preparation](../../evidence/native/functions/00511B80_NativePropertyDescriptor_PrepareValueBuffer.asm) ([C](../../evidence/native/functions/00511B80_NativePropertyDescriptor_PrepareValueBuffer.c))
allocates and zeros string storage. [Generic write](../../evidence/native/functions/00511D40_NativePropertyDescriptor_Write.asm) ([C](../../evidence/native/functions/00511D40_NativePropertyDescriptor_Write.c))
selects the Caption row's direct destination. A null string input calls40A460,
which compares begin/end, writes UTF16 zero when nonempty and sets end=begin;
an already empty string is unchanged. This operation allocates nothing and
calls no child. Preparation failure and generic-write failure retain their own
error/return paths; this is not universal transactional rollback.

A present count attribute selects the distinct array reader even when its
numeric value is1. The [complete array reference](authored-value-arrays.md)
records slot/count/type admission, key-versus-scalar choice and error joins.
The [window-property reference](authored-window-properties.md) supplies original
constructors, typed bridge ABI, exact type names and descriptor inheritance.

## Limits

Key lexical conversion4AF360, string conversion54AF20, array text fallback471360,
provider virtual calls, allocation failure, XML cursor internals, other native
class chains and all malformed-resource behavior remain their specific
producers. The selected null-string clear is established without guessing those
services. Original managed WindowBase.Caption forwarding is a separate payload
boundary. These are static original bytes, physical ABI and actual annotated C;
no runtime UI, notification, reentrancy or visual acceptance is claimed.
