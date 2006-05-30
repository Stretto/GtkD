/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = atk
 * outFile = ObjectFactory
 * strct   = AtkObjectFactory
 * realStrct=
 * ctorStrct=
 * clss    = ObjectFactory
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_object_factory_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gobject.ObjectG
 * structWrap:
 * 	- GObject* -> ObjectG
 * local aliases:
 */

module atk.ObjectFactory;

private import atk.typedefs;

private import lib.atk;

private import gobject.ObjectG;

/**
 * Description
 * This class is the base object class for a factory used to create an
 * accessible object for a specific GType. The function
 * atk_registry_set_factory_type() is normally called to store
 * in the registry the factory type to be used to create an accessible of a
 * particular GType.
 */
private import gobject.ObjectG;
public class ObjectFactory : ObjectG
{
	
	/** the main Gtk struct */
	protected AtkObjectFactory* atkObjectFactory;
	
	
	public AtkObjectFactory* getObjectFactoryStruct()
	{
		return atkObjectFactory;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkObjectFactory;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkObjectFactory* atkObjectFactory)
	{
		super(cast(GObject*)atkObjectFactory);
		this.atkObjectFactory = atkObjectFactory;
	}
	
	/**
	 */
	
	
	/**
	 * Provides an AtkObject that implements an accessibility interface
	 * on behalf of obj
	 * factory:
	 *  The AtkObjectFactory associated with obj's
	 * object type
	 * obj:
	 *  a GObject
	 * Returns:
	 *  an AtkObject that implements an accessibility interface
	 * on behalf of obj
	 */
	public AtkObject* createAccessible(ObjectG obj)
	{
		// AtkObject* atk_object_factory_create_accessible  (AtkObjectFactory *factory,  GObject *obj);
		return atk_object_factory_create_accessible(atkObjectFactory, (obj is null) ? null : obj.getObjectGStruct());
	}
	
	/**
	 * Gets the GType of the accessible which is created by the factory.
	 * factory:
	 *  an AtkObjectFactory
	 * Returns:
	 *  the type of the accessible which is created by the factory.
	 * The value G_TYPE_INVALID is returned if no type if found.
	 */
	public GType getAccessibleType()
	{
		// GType atk_object_factory_get_accessible_type  (AtkObjectFactory *factory);
		return atk_object_factory_get_accessible_type(atkObjectFactory);
	}
	
	/**
	 * Inform factory that it is no longer being used to create
	 * accessibles. When called, factory may need to inform
	 * AtkObjects which it has created that they need to be re-instantiated.
	 * Note: primarily used for runtime replacement of AtkObjectFactorys
	 * in object registries.
	 * factory:
	 *  an AtkObjectFactory to invalidate
	 * See Also
	 * AtkRegistry
	 */
	public void invalidate()
	{
		// void atk_object_factory_invalidate (AtkObjectFactory *factory);
		atk_object_factory_invalidate(atkObjectFactory);
	}
}
