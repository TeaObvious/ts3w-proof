using System;
using System.Collections;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Xml;
using Sims3.SimIFace;

namespace ScriptCore;

public class DataFactory : IDataFactory
{
	private Hashtable mFactories = new Hashtable();

	[DllImport("Sims3Common.dll")]
	private static extern IntPtr DataFactory_GetPrototypeResourceImpl(ulong instanceId, uint groupId, uint typeId);

	[DllImport("Sims3Common.dll")]
	private static extern IntPtr DataFactory_GetDataClassResourceImpl(IntPtr prototypeResource);

	[DllImport("Sims3Common.dll")]
	private static extern void DataFactory_ReleasePrototypeResourceImpl(IntPtr prototypeResource);

	[DllImport("Sims3Common.dll")]
	private static extern void DataFactory_ReleaseDataClassResourceImpl(IntPtr dataClassResource);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromAnsiPtrMarshaler")]
	private static extern string DataFactory_GetDataClassNameImpl(IntPtr dataClassResource);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromAnsiPtrMarshaler")]
	private static extern string DataFactory_GetDataClassAssemblyNameImpl(IntPtr dataClassResource);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromAnsiPtrMarshaler")]
	private static extern string DataFactory_GetXMLStringFromPrototypeResourceImpl(IntPtr prototypeResource);

	public DataFactory()
	{
		AppDomain.CurrentDomain.SetData("DataFactory", this);
	}

	public bool RegisterFactory(IFactoryObject factory)
	{
		Type[] supportedTypes = factory.SupportedTypes;
		bool result = false;
		Type[] array = supportedTypes;
		foreach (Type key in array)
		{
			if (!mFactories.ContainsKey(key))
			{
				mFactories[key] = factory;
				result = true;
			}
		}
		return result;
	}

	public IFactoryObject FindFactory(Type type)
	{
		object obj = mFactories[type];
		if (obj == null)
		{
			type.GetMethod("RegisterFactory", BindingFlags.Static | BindingFlags.Public | BindingFlags.FlattenHierarchy)?.Invoke(0, new object[0]);
			obj = mFactories[type];
		}
		if (obj == null)
		{
			return null;
		}
		return (IFactoryObject)obj;
	}

	public object LoadObject(ResourceKey resKey)
	{
		IntPtr intPtr = DataFactory_GetPrototypeResourceImpl(resKey.InstanceId, resKey.GroupId, resKey.TypeId);
		if (intPtr == IntPtr.Zero)
		{
			return null;
		}
		IntPtr intPtr2 = DataFactory_GetDataClassResourceImpl(intPtr);
		if (intPtr2 == IntPtr.Zero)
		{
			DataFactory_ReleasePrototypeResourceImpl(intPtr);
			return null;
		}
		string typeName = DataFactory_GetDataClassNameImpl(intPtr2);
		string assemblyName = DataFactory_GetDataClassAssemblyNameImpl(intPtr2);
		DataFactory_ReleaseDataClassResourceImpl(intPtr2);
		string typeName2 = Assembly.CreateQualifiedName(assemblyName, typeName);
		Type type = Type.GetType(typeName2);
		if (type == null)
		{
			DataFactory_ReleasePrototypeResourceImpl(intPtr);
			return null;
		}
		IFactoryObject factoryObject = FindFactory(type);
		if (factoryObject == null)
		{
			DataFactory_ReleasePrototypeResourceImpl(intPtr);
			return null;
		}
		string xml = DataFactory_GetXMLStringFromPrototypeResourceImpl(intPtr);
		XmlDocument xmlDocument = new XmlDocument();
		xmlDocument.LoadXml(xml);
		object result = factoryObject.LoadXML(type, xmlDocument);
		DataFactory_ReleasePrototypeResourceImpl(intPtr);
		return result;
	}
}
