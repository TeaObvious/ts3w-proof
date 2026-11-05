using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using ScriptCore.Utility;
using Sims3.SimIFace;

namespace ScriptCore;

public class PersistWriter : IPersistWriter, IDisposable
{
	private struct ObjectEntry
	{
		public object mObjectToSerialize;

		public object mObjectGroup;

		public int mReference;

		public IPersistGroupMarshaler mGroupMarshaler;
	}

	private FastStreamWriter mWriter;

	private ReferenceHashtable mVisited = new ReferenceHashtable();

	private ReferenceHashtable mGroups = new ReferenceHashtable();

	private Dictionary<ResourceKey, int> mResKeyToIndexTable = new Dictionary<ResourceKey, int>();

	private ChunkedList<ObjectEntry> mObjectsInOrder = new ChunkedList<ObjectEntry>();

	private PersistedClassDB mClassDB = new PersistedClassDB();

	private ChunkedList<int> mObjectTable = new ChunkedList<int>();

	private ChunkedList<ResourceKey> mResourceKeyTable = new ChunkedList<ResourceKey>();

	public void AddGroup(object group)
	{
		mGroups.Add(group, 1);
	}

	public void Begin()
	{
		mVisited.Clear();
	}

	public int AddObject(object obj)
	{
		if (obj == null)
		{
			return -1;
		}
		int count = mObjectsInOrder.Count;
		int objectIndex = GetObjectIndex(obj);
		if (count == mObjectsInOrder.Count)
		{
			ObjectEntry item = new ObjectEntry
			{
				mReference = objectIndex
			};
			mObjectsInOrder.Add(item);
			mVisited.AddDuplicateItem();
			return count - 1;
		}
		return objectIndex - 1;
	}

	public void End(FastStreamWriter writer)
	{
		mWriter = writer;
		_ = mObjectsInOrder.Count;
		mWriter.Write(1280);
		mWriter.Write(1397375567);
		mWriter.Write(0);
		mWriter.Write(0);
		mWriter.Write(0);
		mWriter.Write(0);
		mWriter.Write(0);
		_ = mWriter.Position;
		for (int i = 0; i < mObjectsInOrder.Count; i++)
		{
			int position = mWriter.Position;
			mObjectTable.Add(position);
			ObjectEntry objectEntry = mObjectsInOrder[i];
			if (objectEntry.mReference >= 0)
			{
				mWriter.Write((byte)1);
				mWriter.Write(objectEntry.mReference);
				continue;
			}
			try
			{
				SaveBaseObject(i + 1, objectEntry.mObjectToSerialize, objectEntry.mObjectGroup, objectEntry.mGroupMarshaler);
			}
			catch (Exception)
			{
				mWriter.Flush();
				mWriter.Seek(position, SeekOrigin.Begin);
				SaveBaseObject(i + 1, null, null, null);
			}
		}
		int position2 = mWriter.Position;
		foreach (int item in mObjectTable)
		{
			mWriter.Write(item);
		}
		int position3 = mWriter.Position;
		foreach (PersistedClass item2 in mClassDB.ClassesInOrder)
		{
			item2.Write(mWriter);
		}
		int position4 = mWriter.Position;
		mWriter.Write(mResourceKeyTable.Count);
		foreach (ResourceKey item3 in mResourceKeyTable)
		{
			mWriter.Write(item3.TypeId);
			mWriter.Write(item3.GroupId);
			mWriter.Write(item3.InstanceId);
		}
		mWriter.Flush();
		_ = mWriter.Position;
		mWriter.Seek(8, SeekOrigin.Begin);
		mWriter.Write(mClassDB.ClassesInOrder.Count);
		mWriter.Write(mObjectsInOrder.Count);
		mWriter.Write(position3);
		mWriter.Write(position2);
		mWriter.Write(position4);
		mWriter.Flush();
		mWriter = null;
	}

	public bool WriteReference(object obj)
	{
		int num = 0;
		bool result = true;
		if (obj != null)
		{
			num = GetObjectIndex(obj);
			if (num == 0)
			{
				result = false;
			}
		}
		mWriter.Write(num);
		return result;
	}

	public void WriteField(object obj, Type type)
	{
		PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(type, mClassDB);
		if (persistedTypeCode == PersistedTypeCode.ObjectInst || persistedTypeCode == PersistedTypeCode.ArrayInst)
		{
			persistedTypeCode = PersistedTypeCode.ObjectRef;
		}
		SaveObjectAsType(obj, persistedTypeCode);
	}

	public bool WriteTypedField(object obj)
	{
		if (obj == null)
		{
			mWriter.Write((byte)0);
			return true;
		}
		Type type = obj.GetType();
		ReflectionTypeFlags typeFlags = ReflectionTypeFlags.None;
		PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(type, ref typeFlags, mClassDB);
		if (persistedTypeCode == PersistedTypeCode.Null)
		{
			mWriter.Write((byte)persistedTypeCode);
			return false;
		}
		bool flag = (typeFlags & ReflectionTypeFlags.IsValueType) == ReflectionTypeFlags.IsValueType;
		if ((persistedTypeCode == PersistedTypeCode.ObjectInst && !flag) || persistedTypeCode == PersistedTypeCode.ArrayInst)
		{
			persistedTypeCode = PersistedTypeCode.ObjectRef;
		}
		mWriter.Write((byte)persistedTypeCode);
		SaveObjectAsType(obj, persistedTypeCode);
		return true;
	}

	private void SaveBaseObject(int baseidx, object obj, object objectGroup, IPersistGroupMarshaler groupMarshaler)
	{
		if (obj == null)
		{
			mWriter.Write((byte)0);
		}
		else if (groupMarshaler != null)
		{
			mWriter.Write((byte)20);
			int persistedClassRef = mClassDB.GetPersistedClassRef(obj.GetType());
			Persist.WriteCompressedInt(mWriter, persistedClassRef);
			groupMarshaler.Write(obj, objectGroup, mWriter, this);
		}
		else
		{
			Type type = obj.GetType();
			PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(type, mClassDB);
			mWriter.Write((byte)persistedTypeCode);
			SaveObjectAsType(obj, persistedTypeCode);
		}
	}

	private void SaveObjectAsType(object obj, PersistedTypeCode ptc)
	{
		switch (ptc)
		{
		case PersistedTypeCode.Boolean:
			mWriter.Write((bool)obj);
			break;
		case PersistedTypeCode.Byte:
			mWriter.Write((byte)obj);
			break;
		case PersistedTypeCode.Char:
			mWriter.Write((char)obj);
			break;
		case PersistedTypeCode.DateTime:
			mWriter.Write(((DateTime)obj).Ticks);
			break;
		case PersistedTypeCode.Decimal:
			mWriter.Write((decimal)obj);
			break;
		case PersistedTypeCode.Double:
			mWriter.Write((double)obj);
			break;
		case PersistedTypeCode.Int16:
			mWriter.Write((short)obj);
			break;
		case PersistedTypeCode.Int32:
			mWriter.Write((int)obj);
			break;
		case PersistedTypeCode.Int64:
			mWriter.Write((long)obj);
			break;
		case PersistedTypeCode.SByte:
			mWriter.Write((sbyte)obj);
			break;
		case PersistedTypeCode.Single:
			mWriter.Write((float)obj);
			break;
		case PersistedTypeCode.UInt16:
			mWriter.Write((ushort)obj);
			break;
		case PersistedTypeCode.UInt32:
			mWriter.Write((uint)obj);
			break;
		case PersistedTypeCode.UInt64:
			mWriter.Write((ulong)obj);
			break;
		case PersistedTypeCode.ProtectedObjectInst:
		{
			FastStreamWriter fastStreamWriter = mWriter;
			FastStreamWriter fastStreamWriter2 = (mWriter = new FastStreamWriter());
			int num3 = -1;
			try
			{
				SaveObjectAsType(obj, PersistedTypeCode.ObjectInst);
				num3 = fastStreamWriter2.Position;
			}
			catch (Exception)
			{
			}
			mWriter = fastStreamWriter;
			Persist.WriteCompressedUint(mWriter, (uint)num3);
			if (num3 > 0)
			{
				mWriter.CopyStream(fastStreamWriter2);
			}
			fastStreamWriter2.Dispose();
			break;
		}
		case PersistedTypeCode.ObjectInst:
		{
			Type type = obj.GetType();
			PersistedClass persistedClass = mClassDB.GetPersistedClass(type, requireClassReference: true);
			mWriter.Write(persistedClass.mIndex);
			if (persistedClass.mCustomFormatter != null)
			{
				persistedClass.mCustomFormatter.Write(obj, mWriter, this);
				break;
			}
			PersistFastField[] mFastFields = persistedClass.mFastFields;
			int num2 = 0;
			if (mFastFields != null)
			{
				mWriter.Flush();
				PersistImports.Serializer_WriteFastFields(obj, mFastFields, mWriter.Handle);
				num2 = mFastFields.Length;
			}
			PersistedFieldInfo[] mFields = persistedClass.mFields;
			for (int j = num2; j < mFields.Length; j++)
			{
				PersistedFieldInfo persistedFieldInfo = mFields[j];
				PersistedTypeCode mCode = persistedFieldInfo.mCode;
				object value = persistedFieldInfo.mFieldInfo.GetValue(obj);
				SaveObjectAsType(value, mCode);
			}
			break;
		}
		case PersistedTypeCode.ObjectRef:
		{
			int objectIndex = GetObjectIndex(obj);
			mWriter.Write(objectIndex);
			break;
		}
		case PersistedTypeCode.ArrayInst:
		{
			Array array2 = (Array)obj;
			Type elementType = array2.GetType().GetElementType();
			PersistedTypeCode persistedTypeCode2 = Persist.GetPersistedTypeCode(elementType, mClassDB);
			if (persistedTypeCode2 == PersistedTypeCode.ObjectInst || persistedTypeCode2 == PersistedTypeCode.ArrayInst)
			{
				persistedTypeCode2 = PersistedTypeCode.ObjectRef;
			}
			mWriter.Write(array2.Length);
			WriteElementType(array2.GetType().GetElementType());
			bool flag = false;
			switch (persistedTypeCode2)
			{
			case PersistedTypeCode.Byte:
			case PersistedTypeCode.Double:
			case PersistedTypeCode.Int16:
			case PersistedTypeCode.Int32:
			case PersistedTypeCode.Int64:
			case PersistedTypeCode.SByte:
			case PersistedTypeCode.Single:
			case PersistedTypeCode.UInt16:
			case PersistedTypeCode.UInt32:
			case PersistedTypeCode.UInt64:
				flag = true;
				break;
			}
			if (flag)
			{
				mWriter.Flush();
				PersistImports.Serializer_WritePrimitiveArray(array2, mWriter.Handle, (byte)persistedTypeCode2);
				break;
			}
			{
				foreach (object item in array2)
				{
					SaveObjectAsType(item, persistedTypeCode2);
				}
				break;
			}
		}
		case PersistedTypeCode.TypeInstOneBased:
			Persist.WriteCompressedUint(v: (obj != null) ? ((uint)(mClassDB.GetPersistedClassRef((Type)obj) + 1)) : 0u, writer: mWriter);
			break;
		case PersistedTypeCode.EnumInst:
		{
			Type type2 = obj.GetType();
			PersistedClass persistedClass2 = mClassDB.GetPersistedClass(type2, requireClassReference: true);
			Type underlyingType = Enum.GetUnderlyingType(type2);
			PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(underlyingType, mClassDB);
			Persist.WriteCompressedInt(mWriter, persistedClass2.mIndex);
			mWriter.Write((byte)persistedTypeCode);
			switch (persistedTypeCode)
			{
			case PersistedTypeCode.SByte:
				mWriter.Write((sbyte)obj);
				break;
			case PersistedTypeCode.Byte:
				mWriter.Write((byte)obj);
				break;
			case PersistedTypeCode.Int16:
				mWriter.Write((short)obj);
				break;
			case PersistedTypeCode.UInt16:
				mWriter.Write((ushort)obj);
				break;
			case PersistedTypeCode.Int32:
				mWriter.Write((int)obj);
				break;
			case PersistedTypeCode.UInt32:
				mWriter.Write((uint)obj);
				break;
			case PersistedTypeCode.Int64:
				mWriter.Write((long)obj);
				break;
			case PersistedTypeCode.UInt64:
				mWriter.Write((ulong)obj);
				break;
			case PersistedTypeCode.Char:
			case PersistedTypeCode.DateTime:
			case PersistedTypeCode.Decimal:
			case PersistedTypeCode.Double:
			case PersistedTypeCode.Single:
				break;
			}
			break;
		}
		case PersistedTypeCode.MethodInst:
		{
			if (obj == null)
			{
				WriteReference(null);
				break;
			}
			MethodInfo methodInfo = (MethodInfo)obj;
			Type declaringType = methodInfo.DeclaringType;
			WriteReference(declaringType);
			string text = methodInfo.Name;
			if (text.StartsWith("<"))
			{
				int num = text.IndexOf('>');
				text = ((num >= 0) ? text.Substring(0, num + 1) : null);
			}
			WriteReference(text);
			ParameterInfo[] parameters = methodInfo.GetParameters();
			Type[] array = new Type[parameters.Length];
			for (int i = 0; i < parameters.Length; i++)
			{
				array[i] = parameters[i].ParameterType;
			}
			WriteReference(array);
			if (methodInfo.IsGenericMethod)
			{
				WriteReference(methodInfo.GetGenericArguments());
			}
			else
			{
				WriteReference(null);
			}
			break;
		}
		case PersistedTypeCode.ResourceKeyInst:
		{
			ResourceKey resKey = (ResourceKey)obj;
			int resourceKeyIndex = GetResourceKeyIndex(resKey);
			mWriter.Write(resourceKeyIndex);
			break;
		}
		case PersistedTypeCode.Null:
		case PersistedTypeCode.TypeInstZeroBased:
		case PersistedTypeCode.BrokenProtectedObjectInst:
		case PersistedTypeCode.ExternalObject:
		case PersistedTypeCode.BrokenEnumInst:
			break;
		}
	}

	private int GetObjectIndex(object obj)
	{
		int index = 0;
		if (obj != null && !mVisited.TryGetValue(obj, out index))
		{
			Type type = obj.GetType();
			PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(type, mClassDB);
			if (persistedTypeCode == PersistedTypeCode.Null)
			{
				mVisited.Add(obj, 0);
				return 0;
			}
			ObjectEntry item = new ObjectEntry
			{
				mObjectToSerialize = obj,
				mReference = -1
			};
			if (persistedTypeCode == PersistedTypeCode.ObjectInst)
			{
				PersistedClass persistedClass = mClassDB.GetPersistedClass(obj.GetType(), requireClassReference: false);
				if (persistedClass.mHasGroupAffinity)
				{
					IPersistGroupAffinity persistGroupAffinity = (IPersistGroupAffinity)obj;
					object persistGroup = persistGroupAffinity.PersistGroup;
					if (persistGroup != null && !mGroups.ContainsKey(persistGroup))
					{
						if (persistedClass.mGroupMarshaler == null)
						{
							mVisited.Add(obj, 0);
							return 0;
						}
						item.mObjectGroup = persistGroup;
						item.mGroupMarshaler = persistedClass.mGroupMarshaler;
					}
				}
			}
			if (mVisited.TryAdd(obj, out index))
			{
				if (obj is IPersistPreSave persistPreSave)
				{
					try
					{
						persistPreSave.PersistPreSave();
					}
					catch (Exception)
					{
					}
				}
				mObjectsInOrder.Add(item);
			}
		}
		return index;
	}

	private int GetResourceKeyIndex(ResourceKey resKey)
	{
		int value = 0;
		if (!mResKeyToIndexTable.TryGetValue(resKey, out value))
		{
			value = mResourceKeyTable.Count;
			mResourceKeyTable.Add(resKey);
			mResKeyToIndexTable.Add(resKey, value);
		}
		return value;
	}

	private void WriteElementType(Type type)
	{
		while (true)
		{
			PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(type, mClassDB);
			mWriter.Write((byte)persistedTypeCode);
			switch (persistedTypeCode)
			{
			case PersistedTypeCode.ObjectInst:
				mWriter.Write(mClassDB.GetPersistedClassRef(type));
				break;
			case PersistedTypeCode.EnumInst:
				Persist.WriteCompressedInt(mWriter, mClassDB.GetPersistedClassRef(type));
				break;
			}
			if (persistedTypeCode != PersistedTypeCode.ArrayInst)
			{
				break;
			}
			type = type.GetElementType();
		}
	}

	public void Dispose()
	{
		mVisited.Clear();
		mGroups.Clear();
		mResKeyToIndexTable.Clear();
	}
}
