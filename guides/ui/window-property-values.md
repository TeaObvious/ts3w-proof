# PC 1.67 typed window properties and Caption dispatch

The eight registered UIManager boundaries below retain their original inferred
Ghidra projections. Physical stack inputs and return instructions take precedence
when those projections are narrower or inconsistent. Original registration rows
are retained as [64 bytes of necessary data](../../evidence/native/ui-property-registration-data.tsv).
The executable/version basis is [central](../../evidence/native/README.md).

Six saved bodies are complete:602 actual Listing instructions and1811 owned bytes.
Vector-get and string-get retain one-byte function metadata and ZERO actual Listing
instructions. Their224/448-byte original linear windows are separately bounded;
full-looking decompiled C does not promote those windows to complete bodies.
All eight existing ASM windows remain exact original-byte references. The six
complete bodies occupy1811 of1856 bytes in their windows;45 alignment bytes remain
outside those bodies. The two bounded windows add672 bytes. Window and direct-E8
scope is unchanged. The two zero-Listing entries have no owned-call index rows;
linear E8 calls within their bounded windows are not promoted into that index.
Selected child effects and indirect targets remain unexpanded.

| Entry | Extent and paired evidence |
| --- | --- |
| `0077B670` GetUInt32Property | 227 complete bytes/73 Listing instructions; [ASM](../../evidence/native/functions/0077B670_ScriptCore_UIManager_UIManager_GetUInt32PropertyImpl.asm) ([C](../../evidence/native/functions/0077B670_ScriptCore_UIManager_UIManager_GetUInt32PropertyImpl.c)) |
| `0077B760` SetFloatProperty | 245 complete bytes/74 Listing instructions; [ASM](../../evidence/native/functions/0077B760_ScriptCore_UIManager_UIManager_SetFloatPropertyImpl.asm) ([C](../../evidence/native/functions/0077B760_ScriptCore_UIManager_UIManager_SetFloatPropertyImpl.c)) |
| `0077B860` GetFloatProperty | 233 complete bytes/74 Listing instructions; [ASM](../../evidence/native/functions/0077B860_ScriptCore_UIManager_UIManager_GetFloatPropertyImpl.asm) ([C](../../evidence/native/functions/0077B860_ScriptCore_UIManager_UIManager_GetFloatPropertyImpl.c)) |
| `0077BBB0` SetVector2FloatProperty | 255 complete bytes/78 Listing instructions; [ASM](../../evidence/native/functions/0077BBB0_ScriptCore_UIManager_UIManager_SetVector2FloatPropertyImpl.asm) ([C](../../evidence/native/functions/0077BBB0_ScriptCore_UIManager_UIManager_SetVector2FloatPropertyImpl.c)) |
| `0077BCB0` GetVector2FloatProperty | one-byte metadata/zero Listing; bounded224 bytes; [ASM](../../evidence/native/functions/0077BCB0_ScriptCore_UIManager_UIManager_GetVector2FloatPropertyImpl.asm) ([C](../../evidence/native/functions/0077BCB0_ScriptCore_UIManager_UIManager_GetVector2FloatPropertyImpl.c)) |
| `0077BD90` SetStringProperty | 351 complete bytes/122 Listing instructions; [ASM](../../evidence/native/functions/0077BD90_ScriptCore_UIManager_UIManager_SetStringPropertyImpl.asm) ([C](../../evidence/native/functions/0077BD90_ScriptCore_UIManager_UIManager_SetStringPropertyImpl.c)) |
| `0077D820` SetUInt32Property | 500 complete bytes/181 Listing instructions; [ASM](../../evidence/native/functions/0077D820_ScriptCore_UIManager_UIManager_SetUInt32PropertyImpl.asm) ([C](../../evidence/native/functions/0077D820_ScriptCore_UIManager_UIManager_SetUInt32PropertyImpl.c)) |
| `0077FB50` GetStringProperty | one-byte metadata/zero Listing; bounded448 bytes; [ASM](../../evidence/native/functions/0077FB50_ScriptCore_UIManager_UIManager_GetStringPropertyImpl.asm) ([C](../../evidence/native/functions/0077FB50_ScriptCore_UIManager_UIManager_GetStringPropertyImpl.c)) |

## Property dispatch and defaults

The selected generic paths admit handle high byte0x30, perform object lookup
through global UI interface virtual+0xCC, request interface0xEEC58382 and look up
a descriptor through00511CA0. Getter payload success is tested in AL after00511AA0.
UInt32 returns the payload DWORD or EAX zero; Single returns the payload through
x87 after a binary32 spill, or FLDZ. The retained float10/ST0 projection and
explicit parameter list do not recover original source types. No local finite
filter is present. Concrete descriptor lifetime and child virtual effects remain
outside these leaves.

Single and Vector2 generic setters select a type through the descriptor's masked
0xFFF index into0114F4F8, invoke00511D40, then invoke the property-context callback
virtual+0x1C without testing a write return. Vector2 setter rejects a null supplied
pointer before object lookup. The bounded Vector2 getter writes both components
only after descriptor/value success. Its selected window neither initializes all
output unconditionally nor guards a null output on the successful write path.
The original managed getter initializes its local Vector2 with two zero Singles
before calling by reference; that does not define a prefilled direct native buffer.

## Caption and UInt32 specialized control paths

String setter rejects null input. Property0xEEC1B00A first requests special
interface0xEEEE8218. If present, global virtual+0x58 converts text and virtual+0x78
sets Caption. If absent, Caption falls back to the generic descriptor path, as do
other properties. The compared argument is the physical property input in EBP,
not a decompiler-aliased handle. No current dictionary or runtime-caption marker
representation is established by these native branches.

UInt32 flags0xEEC1B000 read previous flags through virtual+0x28, XOR old/new and
isolate each changed bit before virtual+0x74. SETNZ defines only CL before ECX is
pushed; upper ECX bits are not normalized, and concrete child argument interpretation
remains unresolved. Shade0xEEC1B004 and Cursor0xEEC1B009 use virtual+0x60/+0x70.
ButtonState0xEEC1D001 uses selected0077A070 control lookup and virtual+0x24.
Remaining/fallback properties use generic descriptor write and notification.
These sites do not prove full concrete control effects, scrollbar or radio policy.

## String return and managed boundary

Within the bounded string-get window, descriptor/value success passes native
string/variant helpers0040B880/004F6630/004F64B0. Global virtual+0x50 writes a local
returned through ESI/EAX; selected failures return EAX zero. The constant-looking
C return is an inference artifact. Concrete allocation, conversion and lifetime
remain unproved.

Pristine ScriptCore declares the eight imports in Sims3Common.dll with ImplMap
Winapi0x0100 and PreserveSig method metadata. Its eight complete public forwarders
contain94 CIL bytes/43 instructions, with no local typed cache, finite filter or
caption marker. String input is LPWStr; string output names custom
StringFromVariantMarshaler. The retained managed conversion/cleanup/native-size
stubs total five bytes and do not explain the original runtime's custom conversion.
No uniform native calling convention or current platform string transport follows
from that declaration alone.

These are static original observations. Full UI service, authored effect playback,
concrete child callbacks, native row lifetime and concurrent mutation remain open.
No original runtime or UI execution is asserted.


## Designer controller fields are separate from effective properties

[Ten selected original UI methods](../../evidence/managed/selected/ui-designer-observation/method-index.tsv)
retain163 complete CIL bytes with actual ILSpy renderings, method metadata and
[retail identities](../../evidence/managed/selected/ui-designer-observation/retail-identities.json).
The UI resource comes from gameplay.package; SimIFace field metadata comes from
scripts.package. [Queried field names](../../evidence/managed/selected/ui-designer-observation/queried-fields.tsv)
identify the actual controller/window/grid/picker/vector declarations, not current
runtime values or external prepared/modded assembly identity.

BBCompositorManager get_CompositorEnabled060037D3 reads mEnabled04003ED7;
get_Instance060037D7 reads sController04003EDA. Load060037D8 creates the manager
only when absent, stores it, then invokes CASCompositorController.Load. A passive
field observation must not be described as this explicit load/initialization.

CAS get_Instance06001A91 reads sController04001C56. Its get_Enabled06001A94
reads mFilterButton04001BF0, tests WindowBase.op_Inequality against null and
returns that window's virtual Enabled, otherwise true. WindowBase equality
0600008F first tests reference equality, then real nulls, then compares handles;
inequality06000090 negates it. Against null, a nonnull wrapper does not become
null merely because its handle is zero. WinHandle06000005 reads mWinHandle04000001.
WindowBase Enabled0600003E requests property4005670912/mask2 through
UIManager.GetFlagProperty0600128D; that helper calls gUIMgr.GetUInt32Property
and tests `(value & mask) != 0`. The effective current property includes that
actual manager/descriptor path, not merely a controller's stored base flags.

The existing [GetPickInfo binding](../../api/ScriptCore.UIManager/0x01163060.md)
joins the original eight managed arguments to77DA20. Its existing3312-byte
[bounded ASM window](../../evidence/native/functions/0077DA20_ScriptCore_UIManager_UIManager_GetPickInfoImpl.asm) ([actual C](../../evidence/native/functions/0077DA20_ScriptCore_UIManager_UIManager_GetPickInfoImpl.c))
is not a newly proven complete function. Selected prologue instructions validate
handle high byte30, service lookup and scene-control interface039A436F before
its shown direct output stores. This does not close the full mask/remap/display
position, source/scene lifetime or failure-output contract. No diagnostic log,
CLR reflection memo,96-record quota, trace gate or safe-thread protocol is
inferred as an original counterpart. Prepared/modded/load-context identity,
static-field initialization and reflection side effects remain separate.
