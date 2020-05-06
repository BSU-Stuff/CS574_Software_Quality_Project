package game.debug;
import java.io.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.locks.*;
import java.lang.ref.*;
import com.runtimeverification.rvmonitor.java.rt.*;
import com.runtimeverification.rvmonitor.java.rt.ref.*;
import com.runtimeverification.rvmonitor.java.rt.table.*;
import com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractIndexingTree;
import com.runtimeverification.rvmonitor.java.rt.tablebase.SetEventDelegator;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TableAdopter.Tuple2;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TableAdopter.Tuple3;
import com.runtimeverification.rvmonitor.java.rt.tablebase.IDisableHolder;
import com.runtimeverification.rvmonitor.java.rt.tablebase.IMonitor;
import com.runtimeverification.rvmonitor.java.rt.tablebase.DisableHolder;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TerminatedMonitorCleaner;
import java.util.concurrent.atomic.AtomicInteger;
import org.aspectj.lang.*;

final class menu_bar_creationMonitor_Set extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractMonitorSet<menu_bar_creationMonitor> {

	menu_bar_creationMonitor_Set(){
		this.size = 0;
		this.elements = new menu_bar_creationMonitor[4];
	}
	final void event_menu_bar(MenuBar mb) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			menu_bar_creationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final menu_bar_creationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_menu_bar(mb);
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_menu(Menu m, String s, Color c) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			menu_bar_creationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final menu_bar_creationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_menu(m, s, c);
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_menu_item(MenuItem mi, String s, Color c) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			menu_bar_creationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final menu_bar_creationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_menu_item(mi, s, c);
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_add_menu(MenuBar mb, Menu m) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			menu_bar_creationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final menu_bar_creationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_add_menu(mb, m);
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_add_menu_item(Menu m, MenuItem mi) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			menu_bar_creationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final menu_bar_creationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_add_menu_item(m, mi);
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_endProg() {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			menu_bar_creationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final menu_bar_creationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_endProg();
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
}

interface Imenu_bar_creationMonitor extends IMonitor, IDisableHolder {
}

class menu_bar_creationDisableHolder extends DisableHolder implements Imenu_bar_creationMonitor {
	menu_bar_creationDisableHolder(long tau) {
		super(tau);
	}

	@Override
	public final boolean isTerminated() {
		return false;
	}

	@Override
	public int getLastEvent() {
		return -1;
	}

	@Override
	public int getState() {
		return -1;
	}

}

class menu_bar_creationMonitor extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractSynchronizedMonitor implements Cloneable, com.runtimeverification.rvmonitor.java.rt.RVMObject, Imenu_bar_creationMonitor {
	protected Object clone() {
		try {
			menu_bar_creationMonitor ret = (menu_bar_creationMonitor) super.clone();
			return ret;
		}
		catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	WeakReference Ref_s = null;
	WeakReference Ref_c = null;
	WeakReference Ref_mb = null;
	WeakReference Ref_mi = null;
	WeakReference Ref_m = null;
	int Prop_1_state;
	static final int Prop_1_transition_menu_bar[] = {0, 6, 6, 6, 6, 6, 6};;
	static final int Prop_1_transition_menu[] = {5, 6, 6, 6, 6, 5, 6};;
	static final int Prop_1_transition_menu_item[] = {2, 6, 2, 6, 6, 2, 6};;
	static final int Prop_1_transition_add_menu[] = {3, 6, 3, 3, 6, 3, 6};;
	static final int Prop_1_transition_add_menu_item[] = {4, 6, 4, 4, 4, 4, 6};;
	static final int Prop_1_transition_endProg[] = {1, 6, 1, 1, 1, 1, 6};;

	boolean Prop_1_Category_fail = false;

	menu_bar_creationMonitor(long tau, CachedWeakReference RVMRef_mb, CachedWeakReference RVMRef_m, CachedWeakReference RVMRef_mi, CachedWeakReference RVMRef_s, CachedWeakReference RVMRef_c) {
		this.tau = tau;
		Prop_1_state = 0;

		this.RVMRef_mb = RVMRef_mb;
		this.RVMRef_m = RVMRef_m;
		this.RVMRef_mi = RVMRef_mi;
		this.RVMRef_s = RVMRef_s;
		this.RVMRef_c = RVMRef_c;
	}

	@Override
	public final int getState() {
		return Prop_1_state;
	}

	private final long tau;
	private long disable = -1;

	@Override
	public final long getTau() {
		return this.tau;
	}

	@Override
	public final long getDisable() {
		return this.disable;
	}

	@Override
	public final void setDisable(long value) {
		this.disable = value;
	}

	final boolean Prop_1_event_menu_bar(MenuBar mb) {
		Menu m = null;
		if(Ref_m != null){
			m = (Menu)Ref_m.get();
		}
		MenuItem mi = null;
		if(Ref_mi != null){
			mi = (MenuItem)Ref_mi.get();
		}
		String s = null;
		if(Ref_s != null){
			s = (String)Ref_s.get();
		}
		Color c = null;
		if(Ref_c != null){
			c = (Color)Ref_c.get();
		}
		{
			System.out.println("creating MenuBar");
		}
		if(Ref_mb == null){
			Ref_mb = new WeakReference(mb);
		}
		RVM_lastevent = 0;

		Prop_1_state = Prop_1_transition_menu_bar[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_menu(Menu m, String s, Color c) {
		MenuBar mb = null;
		if(Ref_mb != null){
			mb = (MenuBar)Ref_mb.get();
		}
		MenuItem mi = null;
		if(Ref_mi != null){
			mi = (MenuItem)Ref_mi.get();
		}
		{
			System.out.println("creating Menu with name " + s + " of color " + c);
		}
		if(Ref_s == null){
			Ref_s = new WeakReference(s);
		}
		if(Ref_c == null){
			Ref_c = new WeakReference(c);
		}
		if(Ref_m == null){
			Ref_m = new WeakReference(m);
		}
		RVM_lastevent = 1;

		Prop_1_state = Prop_1_transition_menu[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_menu_item(MenuItem mi, String s, Color c) {
		MenuBar mb = null;
		if(Ref_mb != null){
			mb = (MenuBar)Ref_mb.get();
		}
		Menu m = null;
		if(Ref_m != null){
			m = (Menu)Ref_m.get();
		}
		{
			System.out.println("creating MenuItem with name " + s + " of color " + c);
		}
		if(Ref_s == null){
			Ref_s = new WeakReference(s);
		}
		if(Ref_c == null){
			Ref_c = new WeakReference(c);
		}
		if(Ref_mi == null){
			Ref_mi = new WeakReference(mi);
		}
		RVM_lastevent = 2;

		Prop_1_state = Prop_1_transition_menu_item[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_add_menu(MenuBar mb, Menu m) {
		MenuItem mi = null;
		if(Ref_mi != null){
			mi = (MenuItem)Ref_mi.get();
		}
		String s = null;
		if(Ref_s != null){
			s = (String)Ref_s.get();
		}
		Color c = null;
		if(Ref_c != null){
			c = (Color)Ref_c.get();
		}
		{
			System.out.println("adding Menu " + m + " to MenuBar " + mb);
		}
		if(Ref_mb == null){
			Ref_mb = new WeakReference(mb);
		}
		if(Ref_m == null){
			Ref_m = new WeakReference(m);
		}
		RVM_lastevent = 3;

		Prop_1_state = Prop_1_transition_add_menu[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_add_menu_item(Menu m, MenuItem mi) {
		MenuBar mb = null;
		if(Ref_mb != null){
			mb = (MenuBar)Ref_mb.get();
		}
		String s = null;
		if(Ref_s != null){
			s = (String)Ref_s.get();
		}
		Color c = null;
		if(Ref_c != null){
			c = (Color)Ref_c.get();
		}
		{
			System.out.println("adding Menu " + m + " to MenuBar " + mb);
		}
		if(Ref_mi == null){
			Ref_mi = new WeakReference(mi);
		}
		if(Ref_m == null){
			Ref_m = new WeakReference(m);
		}
		RVM_lastevent = 4;

		Prop_1_state = Prop_1_transition_add_menu_item[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_endProg() {
		MenuBar mb = null;
		if(Ref_mb != null){
			mb = (MenuBar)Ref_mb.get();
		}
		Menu m = null;
		if(Ref_m != null){
			m = (Menu)Ref_m.get();
		}
		MenuItem mi = null;
		if(Ref_mi != null){
			mi = (MenuItem)Ref_mi.get();
		}
		String s = null;
		if(Ref_s != null){
			s = (String)Ref_s.get();
		}
		Color c = null;
		if(Ref_c != null){
			c = (Color)Ref_c.get();
		}
		{
			System.err.println("End");
		}
		RVM_lastevent = 5;

		Prop_1_state = Prop_1_transition_endProg[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final void Prop_1_handler_fail (){
		{
			System.err.println("sequence error at " + com.runtimeverification.rvmonitor.java.rt.ViolationRecorder.getLineOfCode() + ". You must call initialize, update and then draw.");
			this.reset();
		}

	}

	final void reset() {
		RVM_lastevent = -1;
		Prop_1_state = 0;
		Prop_1_Category_fail = false;
	}

	CachedWeakReference RVMRef_mb;
	CachedWeakReference RVMRef_m;
	CachedWeakReference RVMRef_mi;
	CachedWeakReference RVMRef_s;
	CachedWeakReference RVMRef_c;

	@Override
	protected final void terminateInternal(int idnum) {
		switch(idnum){
			case 0:
			break;
			case 1:
			break;
			case 2:
			break;
			case 3:
			break;
			case 4:
			break;
		}
		switch(RVM_lastevent) {
			case -1:
			return;
			case 0:
			//menu_bar
			return;
			case 1:
			//menu
			return;
			case 2:
			//menu_item
			return;
			case 3:
			//add_menu
			return;
			case 4:
			//add_menu_item
			return;
			case 5:
			//endProg
			return;
		}
		return;
	}

	public static int getNumberOfEvents() {
		return 6;
	}

	public static int getNumberOfStates() {
		return 7;
	}

}

class menu_bar_creationRuntimeMonitor implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	private static com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager menu_bar_creationMapManager;
	static {
		menu_bar_creationMapManager = new com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager();
		menu_bar_creationMapManager.start();
	}

	// Declarations for the Lock
	static final ReentrantLock menu_bar_creation_RVMLock = new ReentrantLock();
	static final Condition menu_bar_creation_RVMLock_cond = menu_bar_creation_RVMLock.newCondition();

	// Declarations for Timestamps
	private static long menu_bar_creation_timestamp = 1;

	private static boolean menu_bar_creation_activated = false;

	// Declarations for Indexing Trees
	private static Object menu_bar_creation_m_mi_Map_cachekey_m;
	private static Object menu_bar_creation_m_mi_Map_cachekey_mi;
	private static Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m_mi_Map_cachevalue;
	private static Object menu_bar_creation_m_mi_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_m_mi_s_c_Map_cachekey_m;
	private static Object menu_bar_creation_m_mi_s_c_Map_cachekey_mi;
	private static Object menu_bar_creation_m_mi_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> menu_bar_creation_m_mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_m_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_m_s_c_Map_cachekey_m;
	private static Object menu_bar_creation_m_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m_s_c_Map_cachevalue;
	private static Object menu_bar_creation_mb_Map_cachekey_mb;
	private static Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mb_Map_cachevalue;
	private static Object menu_bar_creation_mb_m_Map_cachekey_m;
	private static Object menu_bar_creation_mb_m_Map_cachekey_mb;
	private static Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mb_m_Map_cachevalue;
	private static Object menu_bar_creation_mb_m_mi_Map_cachekey_m;
	private static Object menu_bar_creation_mb_m_mi_Map_cachekey_mb;
	private static Object menu_bar_creation_mb_m_mi_Map_cachekey_mi;
	private static Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> menu_bar_creation_mb_m_mi_Map_cachevalue;
	private static Object menu_bar_creation_mb_m_mi_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_mb_m_mi_s_c_Map_cachekey_m;
	private static Object menu_bar_creation_mb_m_mi_s_c_Map_cachekey_mb;
	private static Object menu_bar_creation_mb_m_mi_s_c_Map_cachekey_mi;
	private static Object menu_bar_creation_mb_m_mi_s_c_Map_cachekey_s;
	private static Imenu_bar_creationMonitor menu_bar_creation_mb_m_mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_mb_m_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_mb_m_s_c_Map_cachekey_m;
	private static Object menu_bar_creation_mb_m_s_c_Map_cachekey_mb;
	private static Object menu_bar_creation_mb_m_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> menu_bar_creation_mb_m_s_c_Map_cachevalue;
	private static Object menu_bar_creation_mb_mi_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_mb_mi_s_c_Map_cachekey_mb;
	private static Object menu_bar_creation_mb_mi_s_c_Map_cachekey_mi;
	private static Object menu_bar_creation_mb_mi_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> menu_bar_creation_mb_mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_mi_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_mi_s_c_Map_cachekey_mi;
	private static Object menu_bar_creation_mi_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi_s_c_Map_cachevalue;
	private static final MapOfMap<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> menu_bar_creation_m_mi_s_c_Map = new MapOfMap<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
	private static final MapOfMap<MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> menu_bar_creation_mb_m_mi_s_c_Map = new MapOfMap<MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(0) ;
	private static final MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>> menu_bar_creation_mi_s_c_Map = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>>(2) ;
	private static final Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation__Map = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(new menu_bar_creationMonitor_Set() , null) ;
	private static final MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>> menu_bar_creation_m_s_c_Map = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>>(1) ;
	private static final MapOfMap<MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>> menu_bar_creation_mb_mi_s_c_Map = new MapOfMap<MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>>(0) ;
	private static final MapOfAll<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mb_m_s_c_Map = new MapOfAll<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(0) ;
	private static Object menu_bar_creation_m__To__m_mi_Map_cachekey_m;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__m_mi_Map_cachevalue;
	private static Object menu_bar_creation_m__To__m_mi_s_c_Map_cachekey_m;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__m_mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_m__To__m_s_c_Map_cachekey_m;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__m_s_c_Map_cachevalue;
	private static Object menu_bar_creation_m__To__mb_m_Map_cachekey_m;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__mb_m_Map_cachevalue;
	private static Object menu_bar_creation_m__To__mb_m_mi_Map_cachekey_m;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__mb_m_mi_Map_cachevalue;
	private static Object menu_bar_creation_m__To__mb_m_s_c_Map_cachekey_m;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__mb_m_s_c_Map_cachevalue;
	private static Object menu_bar_creation_mb__To__mb_mi_s_c_Map_cachekey_mb;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mb__To__mb_mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_mi__To__m_mi_Map_cachekey_mi;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__m_mi_Map_cachevalue;
	private static Object menu_bar_creation_mi__To__mb_m_mi_Map_cachekey_mi;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__mb_m_mi_Map_cachevalue;
	private static Object menu_bar_creation_mi__To__mb_mi_s_c_Map_cachekey_mi;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__mb_mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_mi__To__mi_s_c_Map_cachekey_mi;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_s_c__To__m_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_s_c__To__m_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_s_c__To__m_s_c_Map_cachevalue;
	private static Object menu_bar_creation_s_c__To__mb_m_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_s_c__To__mb_m_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_s_c__To__mb_m_s_c_Map_cachevalue;
	private static Object menu_bar_creation_s_c__To__mb_mi_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_s_c__To__mb_mi_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_s_c__To__mb_mi_s_c_Map_cachevalue;
	private static Object menu_bar_creation_s_c__To__mi_s_c_Map_cachekey_c;
	private static Object menu_bar_creation_s_c__To__mi_s_c_Map_cachekey_s;
	private static Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_s_c__To__mi_s_c_Map_cachevalue;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__m_mi_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
	private static final Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation___To__m_s_c_Map = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(new menu_bar_creationMonitor_Set() , null) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__mb_m_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__mb_mi_s_c_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
	private static final MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> menu_bar_creation_s_c__To__mb_mi_s_c_Map = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(3) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mb__To__mb_mi_s_c_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(0) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__mb_m_s_c_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
	private static final MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> menu_bar_creation_s_c__To__m_s_c_Map = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(3) ;
	private static final Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation___To__m_mi_s_c_Map = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(new menu_bar_creationMonitor_Set() , null) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__m_s_c_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__mi_s_c_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__m_mi_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__mb_m_mi_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
	private static final Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation___To__mi_s_c_Map = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(new menu_bar_creationMonitor_Set() , null) ;
	private static final Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation___To__m_mi_Map = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(new menu_bar_creationMonitor_Set() , null) ;
	private static final Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation___To__mb_m_Map = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(new menu_bar_creationMonitor_Set() , null) ;
	private static final MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> menu_bar_creation_s_c__To__mb_m_s_c_Map = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(3) ;
	private static final Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation___To__mb_Map = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(new menu_bar_creationMonitor_Set() , null) ;
	private static final MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> menu_bar_creation_s_c__To__mi_s_c_Map = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(3) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_m__To__m_mi_s_c_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
	private static final MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> menu_bar_creation_mi__To__mb_m_mi_Map = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;

	public static int cleanUp() {
		int collected = 0;
		// indexing trees
		collected += menu_bar_creation_m_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mb_m_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_m_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mb_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mb_m_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mi__To__m_mi_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_m__To__mb_m_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mi__To__mb_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_s_c__To__mb_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mb__To__mb_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_m__To__mb_m_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_s_c__To__m_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_m__To__m_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mi__To__mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_m__To__m_mi_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_m__To__mb_m_mi_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_s_c__To__mb_m_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_s_c__To__mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_m__To__m_mi_s_c_Map.cleanUpUnnecessaryMappings();
		collected += menu_bar_creation_mi__To__mb_m_mi_Map.cleanUpUnnecessaryMappings();
		return collected;
	}

	// Removing terminated monitors from partitioned sets
	static {
		TerminatedMonitorCleaner.start() ;
	}
	// Setting the behavior of the runtime library according to the compile-time option
	static {
		RuntimeOption.enableFineGrainedLock(false) ;
	}

	public static final void menu_barEvent(MenuBar mb) {
		menu_bar_creation_activated = true;
		while (!menu_bar_creation_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_mb = null;
		Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if ((mb == menu_bar_creation_mb_Map_cachekey_mb) ) {
			matchedEntry = menu_bar_creation_mb_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_mb = new CachedWeakReference(mb) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
				if ((node_mb == null) ) {
					node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
					menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
					node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
					node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
				}
				matchedEntry = node_mb;
			}
		}
		// D(X) main:1
		menu_bar_creationMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_mb == null) ) {
				wr_mb = new CachedWeakReference(mb) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__m_mi_s_c_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_mi.get() != null) ) && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__m_s_c_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
									node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
									node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
									node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_s == null) ) {
									node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
								if ((node_mb_m_s_c == null) ) {
									node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
									node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <s, c-mb, m, s, c>
									{
										// InsertMonitor
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_m_s_c_Map.getNodeEquivalent(wr_s) ;
										if ((node_s == null) ) {
											node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_s_c__To__mb_m_s_c_Map.putNode(wr_s, node_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
										if ((node_s_c == null) ) {
											node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_s.putNode(wr_c, node_s_c) ;
											node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__mi_s_c_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
									menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
								if ((node_mb_mi == null) ) {
									node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
									node_mb.putNode(wr_mi, node_mb_mi) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
								if ((node_mb_mi_s == null) ) {
									node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_mb_mi_s_c == null) ) {
									node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
									node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb-mb, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb__To__mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb__To__mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi-mb, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mi__To__mb_mi_s_c_Map.putNode(wr_mi, node_mi) ;
											node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <s, c-mb, mi, s, c>
									{
										// InsertMonitor
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_mi_s_c_Map.getNodeEquivalent(wr_s) ;
										if ((node_s == null) ) {
											node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_s_c__To__mb_mi_s_c_Map.putNode(wr_s, node_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
										if ((node_s_c == null) ) {
											node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_s.putNode(wr_c, node_s_c) ;
											node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__m_mi_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mi.get() != null) ) && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_mi;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									destEntry.setValue3(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_mi_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_mi_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_m_mi_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mi__To__mb_m_mi_Map.putNode(wr_mi, node_mi) ;
											node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor sourceLeaf = null;
				{
					// FindCode
					menu_bar_creationMonitor itmdLeaf = menu_bar_creation__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <mb>
					if (definable) {
						// FindCode
						Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
						if ((node_mb != null) ) {
							menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceLeaf.clone() ;
						created.RVMRef_mb = wr_mb;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <-mb>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__mb_Map.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				menu_bar_creationMonitor created = new menu_bar_creationMonitor(menu_bar_creation_timestamp++, wr_mb, null, null, null, null) ;
				matchedEntry.setValue3(created) ;
				menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <-mb>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__mb_Map.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			menu_bar_creationMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(menu_bar_creation_timestamp++) ;
		}
		// D(X) main:8--9
		menu_bar_creationMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_menu_bar(mb);

		if ((cachehit == false) ) {
			menu_bar_creation_mb_Map_cachekey_mb = mb;
			menu_bar_creation_mb_Map_cachevalue = matchedEntry;
		}

		menu_bar_creation_RVMLock.unlock();
	}

	public static final void menuEvent(Menu m, String s, Color c) {
		menu_bar_creation_activated = true;
		while (!menu_bar_creation_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_s = null;
		CachedWeakReference wr_c = null;
		CachedWeakReference wr_m = null;
		Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if ((((c == menu_bar_creation_m_s_c_Map_cachekey_c) && (m == menu_bar_creation_m_s_c_Map_cachekey_m) ) && (s == menu_bar_creation_m_s_c_Map_cachekey_s) ) ) {
			matchedEntry = menu_bar_creation_m_s_c_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_m = new CachedWeakReference(m) ;
			wr_s = new CachedWeakReference(s) ;
			wr_c = new CachedWeakReference(c) ;
			{
				// FindOrCreateEntry
				MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
				if ((node_m == null) ) {
					node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
					menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
				}
				MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
				if ((node_m_s == null) ) {
					node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
					node_m.putNode(wr_s, node_m_s) ;
				}
				Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
				if ((node_m_s_c == null) ) {
					node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
					node_m_s.putNode(wr_c, node_m_s_c) ;
					node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
				}
				matchedEntry = node_m_s_c;
			}
		}
		// D(X) main:1
		menu_bar_creationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((wr_m == null) ) {
				wr_m = new CachedWeakReference(m) ;
			}
			if ((wr_s == null) ) {
				wr_s = new CachedWeakReference(s) ;
			}
			if ((wr_c == null) ) {
				wr_c = new CachedWeakReference(c) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_mi_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
									node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
									node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
									node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_s == null) ) {
									node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
								if ((node_mb_m_s_c == null) ) {
									node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
									node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <s, c-mb, m, s, c>
									{
										// InsertMonitor
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_m_s_c_Map.getNodeEquivalent(wr_s) ;
										if ((node_s == null) ) {
											node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_s_c__To__mb_m_s_c_Map.putNode(wr_s, node_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
										if ((node_s_c == null) ) {
											node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_s.putNode(wr_c, node_s_c) ;
											node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <s, c>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_mi_s_c_Map.getNodeEquivalent(wr_s) ;
					if ((node_s != null) ) {
						Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
						if ((node_s_c != null) ) {
							menu_bar_creationMonitor_Set itmdSet = node_s_c.getValue1() ;
							sourceSet = itmdSet;
						}
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_m = wr_m;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <s, c>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mi_s_c_Map.getNodeEquivalent(wr_s) ;
					if ((node_s != null) ) {
						Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
						if ((node_s_c != null) ) {
							menu_bar_creationMonitor_Set itmdSet = node_s_c.getValue1() ;
							sourceSet = itmdSet;
						}
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
								if ((node_m == null) ) {
									node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
									menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
								if ((node_m_mi == null) ) {
									node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_m.putNode(wr_mi, node_m_mi) ;
									node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_m_mi_s == null) ) {
									node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_m_mi_s_c == null) ) {
									node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
									node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_m_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_m = wr_m;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <-m, mi, s, c>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_s_c_Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-m, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__m_mi_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__mb_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
									node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
									node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
									node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_s == null) ) {
									node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
								if ((node_mb_m_s_c == null) ) {
									node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
									node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_m = wr_m;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <s, c-mb, m, s, c>
									{
										// InsertMonitor
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_m_s_c_Map.getNodeEquivalent(wr_s) ;
										if ((node_s == null) ) {
											node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_s_c__To__mb_m_s_c_Map.putNode(wr_s, node_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
										if ((node_s_c == null) ) {
											node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_s.putNode(wr_c, node_s_c) ;
											node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
								if ((node_m == null) ) {
									node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
									menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
								if ((node_m_mi == null) ) {
									node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_m.putNode(wr_mi, node_m_mi) ;
									node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_m_mi_s == null) ) {
									node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_m_mi_s_c == null) ) {
									node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
									node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_m_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <-m, mi, s, c>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_s_c_Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-m, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__m_mi_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor sourceLeaf = null;
				{
					// FindCode
					menu_bar_creationMonitor itmdLeaf = menu_bar_creation__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <m, s, c>
					if (definable) {
						// FindCode
						MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
						if ((node_m != null) ) {
							MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
							if ((node_m_s != null) ) {
								Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
								if ((node_m_s_c != null) ) {
									menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
									if ((itmdLeaf != null) ) {
										if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
											definable = false;
										}
									}
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceLeaf.clone() ;
						created.RVMRef_m = wr_m;
						created.RVMRef_s = wr_s;
						created.RVMRef_c = wr_c;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <-m, s, c>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_s_c_Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <m-m, s, c>
						{
							// InsertMonitor
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_s_c_Map.getNodeEquivalent(wr_m) ;
							if ((node_m == null) ) {
								node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_m__To__m_s_c_Map.putNode(wr_m, node_m) ;
								node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <s, c-m, s, c>
						{
							// InsertMonitor
							MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__m_s_c_Map.getNodeEquivalent(wr_s) ;
							if ((node_s == null) ) {
								node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
								menu_bar_creation_s_c__To__m_s_c_Map.putNode(wr_s, node_s) ;
							}
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
							if ((node_s_c == null) ) {
								node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								node_s.putNode(wr_c, node_s_c) ;
								node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				menu_bar_creationMonitor created = new menu_bar_creationMonitor(menu_bar_creation_timestamp++, null, wr_m, null, wr_s, wr_c) ;
				matchedEntry.setValue2(created) ;
				menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <-m, s, c>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_s_c_Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <m-m, s, c>
				{
					// InsertMonitor
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_s_c_Map.getNodeEquivalent(wr_m) ;
					if ((node_m == null) ) {
						node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						menu_bar_creation_m__To__m_s_c_Map.putNode(wr_m, node_m) ;
						node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <s, c-m, s, c>
				{
					// InsertMonitor
					MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__m_s_c_Map.getNodeEquivalent(wr_s) ;
					if ((node_s == null) ) {
						node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
						menu_bar_creation_s_c__To__m_s_c_Map.putNode(wr_s, node_s) ;
					}
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
					if ((node_s_c == null) ) {
						node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						node_s.putNode(wr_c, node_s_c) ;
						node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			menu_bar_creationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(menu_bar_creation_timestamp++) ;
		}
		// D(X) main:8--9
		menu_bar_creationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_menu(m, s, c);

		if ((cachehit == false) ) {
			menu_bar_creation_m_s_c_Map_cachekey_c = c;
			menu_bar_creation_m_s_c_Map_cachekey_m = m;
			menu_bar_creation_m_s_c_Map_cachekey_s = s;
			menu_bar_creation_m_s_c_Map_cachevalue = matchedEntry;
		}

		menu_bar_creation_RVMLock.unlock();
	}

	public static final void menu_itemEvent(MenuItem mi, String s, Color c) {
		menu_bar_creation_activated = true;
		while (!menu_bar_creation_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_s = null;
		CachedWeakReference wr_c = null;
		CachedWeakReference wr_mi = null;
		Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if ((((c == menu_bar_creation_mi_s_c_Map_cachekey_c) && (mi == menu_bar_creation_mi_s_c_Map_cachekey_mi) ) && (s == menu_bar_creation_mi_s_c_Map_cachekey_s) ) ) {
			matchedEntry = menu_bar_creation_mi_s_c_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_mi = new CachedWeakReference(mi) ;
			wr_s = new CachedWeakReference(s) ;
			wr_c = new CachedWeakReference(c) ;
			{
				// FindOrCreateEntry
				MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
				if ((node_mi == null) ) {
					node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
					menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
				}
				MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
				if ((node_mi_s == null) ) {
					node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
					node_mi.putNode(wr_s, node_mi_s) ;
				}
				Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
				if ((node_mi_s_c == null) ) {
					node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
					node_mi_s.putNode(wr_c, node_mi_s_c) ;
					node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
				}
				matchedEntry = node_mi_s_c;
			}
		}
		// D(X) main:1
		menu_bar_creationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((wr_mi == null) ) {
				wr_mi = new CachedWeakReference(mi) ;
			}
			if ((wr_s == null) ) {
				wr_s = new CachedWeakReference(s) ;
			}
			if ((wr_c == null) ) {
				wr_c = new CachedWeakReference(c) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <mi>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_m_mi_Map.getNodeEquivalent(wr_mi) ;
					if ((node_mi != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_mi.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <s, c>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_m_s_c_Map.getNodeEquivalent(wr_s) ;
					if ((node_s != null) ) {
						Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
						if ((node_s_c != null) ) {
							menu_bar_creationMonitor_Set itmdSet = node_s_c.getValue1() ;
							sourceSet = itmdSet;
						}
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mi = wr_mi;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__mb_m_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mi = wr_mi;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <s, c>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__m_s_c_Map.getNodeEquivalent(wr_s) ;
					if ((node_s != null) ) {
						Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
						if ((node_s_c != null) ) {
							menu_bar_creationMonitor_Set itmdSet = node_s_c.getValue1() ;
							sourceSet = itmdSet;
						}
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
								if ((node_m == null) ) {
									node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
									menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
								if ((node_m_mi == null) ) {
									node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_m.putNode(wr_mi, node_m_mi) ;
									node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_m_mi_s == null) ) {
									node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_m_mi_s_c == null) ) {
									node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
									node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_m_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mi = wr_mi;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <-m, mi, s, c>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_s_c_Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-m, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__m_mi_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__mb_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
									menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
								if ((node_mb_mi == null) ) {
									node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
									node_mb.putNode(wr_mi, node_mb_mi) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
								if ((node_mb_mi_s == null) ) {
									node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_mb_mi_s_c == null) ) {
									node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
									node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mi = wr_mi;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb-mb, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb__To__mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb__To__mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi-mb, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mi__To__mb_mi_s_c_Map.putNode(wr_mi, node_mi) ;
											node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <s, c-mb, mi, s, c>
									{
										// InsertMonitor
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_mi_s_c_Map.getNodeEquivalent(wr_s) ;
										if ((node_s == null) ) {
											node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_s_c__To__mb_mi_s_c_Map.putNode(wr_s, node_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
										if ((node_s_c == null) ) {
											node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_s.putNode(wr_c, node_s_c) ;
											node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <mi>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__m_mi_Map.getNodeEquivalent(wr_mi) ;
					if ((node_mi != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_mi.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_m.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_m = sourceMonitor.RVMRef_m;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
								if ((node_m == null) ) {
									node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
									menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
								if ((node_m_mi == null) ) {
									node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_m.putNode(wr_mi, node_m_mi) ;
									node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_m_mi_s == null) ) {
									node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_m_mi_s_c == null) ) {
									node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
									node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_m_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_s = wr_s;
									created.RVMRef_c = wr_c;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <-m, mi, s, c>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_s_c_Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-m, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__m_mi_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor sourceLeaf = null;
				{
					// FindCode
					menu_bar_creationMonitor itmdLeaf = menu_bar_creation__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <mi, s, c>
					if (definable) {
						// FindCode
						MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
						if ((node_mi != null) ) {
							MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
							if ((node_mi_s != null) ) {
								Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_mi_s_c != null) ) {
									menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
									if ((itmdLeaf != null) ) {
										if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
											definable = false;
										}
									}
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceLeaf.clone() ;
						created.RVMRef_mi = wr_mi;
						created.RVMRef_s = wr_s;
						created.RVMRef_c = wr_c;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <-mi, s, c>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__mi_s_c_Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <mi-mi, s, c>
						{
							// InsertMonitor
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mi_s_c_Map.getNodeEquivalent(wr_mi) ;
							if ((node_mi == null) ) {
								node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_mi__To__mi_s_c_Map.putNode(wr_mi, node_mi) ;
								node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <s, c-mi, s, c>
						{
							// InsertMonitor
							MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mi_s_c_Map.getNodeEquivalent(wr_s) ;
							if ((node_s == null) ) {
								node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
								menu_bar_creation_s_c__To__mi_s_c_Map.putNode(wr_s, node_s) ;
							}
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
							if ((node_s_c == null) ) {
								node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								node_s.putNode(wr_c, node_s_c) ;
								node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				menu_bar_creationMonitor created = new menu_bar_creationMonitor(menu_bar_creation_timestamp++, null, null, wr_mi, wr_s, wr_c) ;
				matchedEntry.setValue2(created) ;
				menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <-mi, s, c>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__mi_s_c_Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <mi-mi, s, c>
				{
					// InsertMonitor
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mi_s_c_Map.getNodeEquivalent(wr_mi) ;
					if ((node_mi == null) ) {
						node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						menu_bar_creation_mi__To__mi_s_c_Map.putNode(wr_mi, node_mi) ;
						node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <s, c-mi, s, c>
				{
					// InsertMonitor
					MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mi_s_c_Map.getNodeEquivalent(wr_s) ;
					if ((node_s == null) ) {
						node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
						menu_bar_creation_s_c__To__mi_s_c_Map.putNode(wr_s, node_s) ;
					}
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
					if ((node_s_c == null) ) {
						node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						node_s.putNode(wr_c, node_s_c) ;
						node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			menu_bar_creationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(menu_bar_creation_timestamp++) ;
		}
		// D(X) main:8--9
		menu_bar_creationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_menu_item(mi, s, c);

		if ((cachehit == false) ) {
			menu_bar_creation_mi_s_c_Map_cachekey_c = c;
			menu_bar_creation_mi_s_c_Map_cachekey_mi = mi;
			menu_bar_creation_mi_s_c_Map_cachekey_s = s;
			menu_bar_creation_mi_s_c_Map_cachevalue = matchedEntry;
		}

		menu_bar_creation_RVMLock.unlock();
	}

	public static final void add_menuEvent(MenuBar mb, Menu m) {
		menu_bar_creation_activated = true;
		while (!menu_bar_creation_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_mb = null;
		CachedWeakReference wr_m = null;
		Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if (((m == menu_bar_creation_mb_m_Map_cachekey_m) && (mb == menu_bar_creation_mb_m_Map_cachekey_mb) ) ) {
			matchedEntry = menu_bar_creation_mb_m_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_mb = new CachedWeakReference(mb) ;
			wr_m = new CachedWeakReference(m) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
				if ((node_mb == null) ) {
					node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
					menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
					node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
					node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
				}
				Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
				if ((node_mb_m == null) ) {
					node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
					node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
					node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
					node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
				}
				matchedEntry = node_mb_m;
			}
		}
		// D(X) main:1
		menu_bar_creationMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_mb == null) ) {
				wr_mb = new CachedWeakReference(mb) ;
			}
			if ((wr_m == null) ) {
				wr_m = new CachedWeakReference(m) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <mb>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb__To__mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
					if ((node_mb != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_mb.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_m = wr_m;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_s_c_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
									node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
									node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
									node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_s == null) ) {
									node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
								if ((node_mb_m_s_c == null) ) {
									node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
									node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <s, c-mb, m, s, c>
									{
										// InsertMonitor
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s = menu_bar_creation_s_c__To__mb_m_s_c_Map.getNodeEquivalent(wr_s) ;
										if ((node_s == null) ) {
											node_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_s_c__To__mb_m_s_c_Map.putNode(wr_s, node_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_s_c = node_s.getNodeEquivalent(wr_c) ;
										if ((node_s_c == null) ) {
											node_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_s.putNode(wr_c, node_s_c) ;
											node_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__mi_s_c_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									created.RVMRef_m = wr_m;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <mb>
				menu_bar_creationMonitor sourceLeaf = null;
				{
					// FindCode
					Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
					if ((node_mb != null) ) {
						menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
						sourceLeaf = itmdLeaf;
					}
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <mb, m>
					if (definable) {
						// FindCode
						Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
						if ((node_mb != null) ) {
							Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
							if ((node_mb_m != null) ) {
								menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
								if ((itmdLeaf != null) ) {
									if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
										definable = false;
									}
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceLeaf.clone() ;
						created.RVMRef_m = wr_m;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <mb>
						{
							// InsertMonitor
							Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
							if ((node_mb == null) ) {
								node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
								node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
								node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <-mb, m>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__mb_m_Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <m-mb, m>
						{
							// InsertMonitor
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_Map.getNodeEquivalent(wr_m) ;
							if ((node_m == null) ) {
								node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_m__To__mb_m_Map.putNode(wr_m, node_m) ;
								node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mi.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mi = sourceMonitor.RVMRef_mi;
							Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_mi;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <mb>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
										if ((itmdLeaf != null) ) {
											if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
												definable = false;
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mb = wr_mb;
									destEntry.setValue3(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_mi_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_mi_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_m_mi_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mi__To__mb_m_mi_Map.putNode(wr_mi, node_mi) ;
											node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor sourceLeaf = null;
				{
					// FindCode
					menu_bar_creationMonitor itmdLeaf = menu_bar_creation__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <mb>
					if (definable) {
						// FindCode
						Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
						if ((node_mb != null) ) {
							menu_bar_creationMonitor itmdLeaf = node_mb.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					// D(X) defineTo:1--5 for <mb, m>
					if (definable) {
						// FindCode
						Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
						if ((node_mb != null) ) {
							Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
							if ((node_mb_m != null) ) {
								menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
								if ((itmdLeaf != null) ) {
									if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
										definable = false;
									}
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceLeaf.clone() ;
						created.RVMRef_mb = wr_mb;
						created.RVMRef_m = wr_m;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <mb>
						{
							// InsertMonitor
							Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
							if ((node_mb == null) ) {
								node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
								node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
								node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <-mb, m>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__mb_m_Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <m-mb, m>
						{
							// InsertMonitor
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_Map.getNodeEquivalent(wr_m) ;
							if ((node_m == null) ) {
								node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_m__To__mb_m_Map.putNode(wr_m, node_m) ;
								node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				menu_bar_creationMonitor created = new menu_bar_creationMonitor(menu_bar_creation_timestamp++, wr_mb, wr_m, null, null, null) ;
				matchedEntry.setValue3(created) ;
				menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <mb>
				{
					// InsertMonitor
					Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
					if ((node_mb == null) ) {
						node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
						node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
						node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <-mb, m>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__mb_m_Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <m-mb, m>
				{
					// InsertMonitor
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_Map.getNodeEquivalent(wr_m) ;
					if ((node_m == null) ) {
						node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						menu_bar_creation_m__To__mb_m_Map.putNode(wr_m, node_m) ;
						node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			menu_bar_creationMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(menu_bar_creation_timestamp++) ;
		}
		// D(X) main:8--9
		menu_bar_creationMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_add_menu(mb, m);

		if ((cachehit == false) ) {
			menu_bar_creation_mb_m_Map_cachekey_m = m;
			menu_bar_creation_mb_m_Map_cachekey_mb = mb;
			menu_bar_creation_mb_m_Map_cachevalue = matchedEntry;
		}

		menu_bar_creation_RVMLock.unlock();
	}

	public static final void add_menu_itemEvent(Menu m, MenuItem mi) {
		menu_bar_creation_activated = true;
		while (!menu_bar_creation_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_mi = null;
		CachedWeakReference wr_m = null;
		Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if (((m == menu_bar_creation_m_mi_Map_cachekey_m) && (mi == menu_bar_creation_m_mi_Map_cachekey_mi) ) ) {
			matchedEntry = menu_bar_creation_m_mi_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_m = new CachedWeakReference(m) ;
			wr_mi = new CachedWeakReference(mi) ;
			{
				// FindOrCreateEntry
				MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
				if ((node_m == null) ) {
					node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
					menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
				}
				Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
				if ((node_m_mi == null) ) {
					node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
					node_m.putNode(wr_mi, node_m_mi) ;
					node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
					node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
				}
				matchedEntry = node_m_mi;
			}
		}
		// D(X) main:1
		menu_bar_creationMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_m == null) ) {
				wr_m = new CachedWeakReference(m) ;
			}
			if ((wr_mi == null) ) {
				wr_mi = new CachedWeakReference(mi) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_s_c_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_mb.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
											if ((node_mb_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mi = wr_mi;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_mi;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mi = wr_mi;
									destEntry.setValue3(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_mi_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_mi_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_m_mi_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mi__To__mb_m_mi_Map.putNode(wr_mi, node_mi) ;
											node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <mi>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
					if ((node_mi != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_mi.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) && (sourceMonitor.RVMRef_mb.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							MapOfMonitor<Imenu_bar_creationMonitor> destLastMap = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_mb_m_mi_s == null) ) {
									node_mb_m_mi_s = new MapOfMonitor<Imenu_bar_creationMonitor>(4) ;
									node_mb_m_mi.getValue1() .putNode(wr_s, node_mb_m_mi_s) ;
								}
								destLastMap = node_mb_m_mi_s;
								Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
								destLeaf = node_mb_m_mi_s_c;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												MapOfMonitor<Imenu_bar_creationMonitor> node_mb_m_mi_s = node_mb_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
												if ((node_mb_m_mi_s != null) ) {
													Imenu_bar_creationMonitor node_mb_m_mi_s_c = node_mb_m_mi_s.getNodeEquivalent(wr_c) ;
													if ((node_mb_m_mi_s_c != null) ) {
														if (((node_mb_m_mi_s_c.getDisable() > sourceMonitor.getTau() ) || ((node_mb_m_mi_s_c.getTau() > 0) && (node_mb_m_mi_s_c.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, s, c>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_mb_m_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
												if ((node_mb_m_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_mb_m_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_m = wr_m;
									destLastMap.putNode(wr_c, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi, s, c>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_m_mi_s == null) ) {
											node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_m_mi_s_c == null) ) {
											node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
											node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, mi>
									{
										// InsertMonitor
										MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
											node_mb.putNode(wr_m, node_mb_m) ;
										}
										Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
										if ((node_mb_m_mi == null) ) {
											node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
											node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
											node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m, s, c>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s = node_mb_m.getValue1() .getNodeEquivalent(wr_s) ;
										if ((node_mb_m_s == null) ) {
											node_mb_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_m.getValue1() .putNode(wr_s, node_mb_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_s_c = node_mb_m_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_m_s_c == null) ) {
											node_mb_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_m_s.putNode(wr_c, node_mb_m_s_c) ;
											node_mb_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>> node_mb = menu_bar_creation_mb_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new MapOfMap<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>>(1) ;
											menu_bar_creation_mb_mi_s_c_Map.putNode(wr_mb, node_mb) ;
										}
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb_mi = node_mb.getNodeEquivalent(wr_mi) ;
										if ((node_mb_mi == null) ) {
											node_mb_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ;
											node_mb.putNode(wr_mi, node_mb_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s = node_mb_mi.getNodeEquivalent(wr_s) ;
										if ((node_mb_mi_s == null) ) {
											node_mb_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
											node_mb_mi.putNode(wr_s, node_mb_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_mi_s_c = node_mb_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mb_mi_s_c == null) ) {
											node_mb_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
											node_mb_mi_s.putNode(wr_c, node_mb_mi_s_c) ;
											node_mb_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <m>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_s_c_Map.getNodeEquivalent(wr_m) ;
					if ((node_m != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_m.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
								if ((node_m == null) ) {
									node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
									menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
								if ((node_m_mi == null) ) {
									node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_m.putNode(wr_mi, node_m_mi) ;
									node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_m_mi_s == null) ) {
									node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_m_mi_s_c == null) ) {
									node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
									node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_m_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mi, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
									if ((node_mi != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
											if ((node_mi_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_mi_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_mi = wr_mi;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <-m, mi, s, c>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_s_c_Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-m, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__m_mi_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <mi>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mi_s_c_Map.getNodeEquivalent(wr_mi) ;
					if ((node_mi != null) ) {
						menu_bar_creationMonitor_Set itmdSet = node_mi.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if (((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_s.get() != null) ) && (sourceMonitor.RVMRef_c.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_s = sourceMonitor.RVMRef_s;
							CachedWeakReference wr_c = sourceMonitor.RVMRef_c;
							Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
								if ((node_m == null) ) {
									node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
									menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
								}
								Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
								if ((node_m_mi == null) ) {
									node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
									node_m.putNode(wr_mi, node_m_mi) ;
									node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
									node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
								if ((node_m_mi_s == null) ) {
									node_m_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(3) ;
									node_m_mi.getValue1() .putNode(wr_s, node_m_mi_s) ;
								}
								Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
								if ((node_m_mi_s_c == null) ) {
									node_m_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_m_mi_s.putNode(wr_c, node_m_mi_s_c) ;
									node_m_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_m_mi_s_c;
								Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, mi, s, c>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s = node_m_mi.getValue1() .getNodeEquivalent(wr_s) ;
											if ((node_m_mi_s != null) ) {
												Tuple2<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_m_mi_s_c = node_m_mi_s.getNodeEquivalent(wr_c) ;
												if ((node_m_mi_s_c != null) ) {
													Imenu_bar_creationMonitor itmdLeaf = node_m_mi_s_c.getValue2() ;
													if ((itmdLeaf != null) ) {
														if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
															definable = false;
														}
													}
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <m, s, c>
								if (definable) {
									// FindCode
									MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s != null) ) {
											Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
											if ((node_m_s_c != null) ) {
												menu_bar_creationMonitor itmdLeaf = node_m_s_c.getValue2() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_m = wr_m;
									destEntry.setValue2(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_m = menu_bar_creation_m_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_m_s_c_Map.putNode(wr_m, node_m) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s = node_m.getNodeEquivalent(wr_s) ;
										if ((node_m_s == null) ) {
											node_m_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_m.putNode(wr_s, node_m_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_s_c = node_m_s.getNodeEquivalent(wr_c) ;
										if ((node_m_s_c == null) ) {
											node_m_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m_s.putNode(wr_c, node_m_s_c) ;
											node_m_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi, s, c>
									{
										// InsertMonitor
										MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>> node_mi = menu_bar_creation_mi_s_c_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>>(1) ;
											menu_bar_creation_mi_s_c_Map.putNode(wr_mi, node_mi) ;
										}
										MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s = node_mi.getNodeEquivalent(wr_s) ;
										if ((node_mi_s == null) ) {
											node_mi_s = new MapOfSetMonitor<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(2) ;
											node_mi.putNode(wr_s, node_mi_s) ;
										}
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi_s_c = node_mi_s.getNodeEquivalent(wr_c) ;
										if ((node_mi_s_c == null) ) {
											node_mi_s_c = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mi_s.putNode(wr_c, node_mi_s_c) ;
											node_mi_s_c.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi_s_c.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <-m, mi, s, c>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_s_c_Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-m, mi, s, c>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__m_mi_s_c_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor_Set sourceSet = null;
				{
					// FindCode
					menu_bar_creationMonitor_Set itmdSet = menu_bar_creation___To__mb_Map.getValue1() ;
					sourceSet = itmdSet;
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						menu_bar_creationMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_mb.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_mb = sourceMonitor.RVMRef_mb;
							Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> destEntry = null;
							Imenu_bar_creationMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
								if ((node_mb == null) ) {
									node_mb = new MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(1) ;
									menu_bar_creation_mb_m_mi_s_c_Map.putNode(wr_mb, node_mb) ;
								}
								MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
								if ((node_mb_m == null) ) {
									node_mb_m = new MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>(2) ;
									node_mb.putNode(wr_m, node_mb_m) ;
								}
								Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
								if ((node_mb_m_mi == null) ) {
									node_mb_m_mi = new Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>() ;
									node_mb_m.putNode(wr_mi, node_mb_m_mi) ;
									node_mb_m_mi.setValue1(new MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>(3) ) ;
									node_mb_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
								}
								destEntry = node_mb_m_mi;
								Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
								destLeaf = itmdLeaf;
							}
							if (((destLeaf == null) || destLeaf instanceof menu_bar_creationDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <m, mi>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
									if ((node_m != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m>
								if (definable) {
									// FindCode
									Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											menu_bar_creationMonitor itmdLeaf = node_mb_m.getValue3() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <mb, m, mi>
								if (definable) {
									// FindCode
									MapOfMap<MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>> node_mb = menu_bar_creation_mb_m_mi_s_c_Map.getNodeEquivalent(wr_mb) ;
									if ((node_mb != null) ) {
										MapOfAll<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m = node_mb.getNodeEquivalent(wr_m) ;
										if ((node_mb_m != null) ) {
											Tuple3<MapOfMap<MapOfMonitor<Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor> node_mb_m_mi = node_mb_m.getNodeEquivalent(wr_mi) ;
											if ((node_mb_m_mi != null) ) {
												Imenu_bar_creationMonitor itmdLeaf = node_mb_m_mi.getValue3() ;
												if ((itmdLeaf != null) ) {
													if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
														definable = false;
													}
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceMonitor.clone() ;
									created.RVMRef_m = wr_m;
									created.RVMRef_mi = wr_mi;
									destEntry.setValue3(created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m, mi>
									{
										// InsertMonitor
										MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ;
											menu_bar_creation_m_mi_s_c_Map.putNode(wr_m, node_m) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
										if ((node_m_mi == null) ) {
											node_m_mi = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_m.putNode(wr_mi, node_m_mi) ;
											node_m_mi.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_m_mi.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m_mi.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mb, m>
									{
										// InsertMonitor
										Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb = menu_bar_creation_mb_m_s_c_Map.getNodeEquivalent(wr_mb) ;
										if ((node_mb == null) ) {
											node_mb = new Tuple3<MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mb_m_s_c_Map.putNode(wr_mb, node_mb) ;
											node_mb.setValue1(new MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>(1) ) ;
											node_mb.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mb_m = node_mb.getValue1() .getNodeEquivalent(wr_m) ;
										if ((node_mb_m == null) ) {
											node_mb_m = new Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											node_mb.getValue1() .putNode(wr_m, node_mb_m) ;
											node_mb_m.setValue1(new MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>(2) ) ;
											node_mb_m.setValue2(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mb_m.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <m-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__mb_m_mi_Map.getNodeEquivalent(wr_m) ;
										if ((node_m == null) ) {
											node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_m__To__mb_m_mi_Map.putNode(wr_m, node_m) ;
											node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <mi-mb, m, mi>
									{
										// InsertMonitor
										Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__mb_m_mi_Map.getNodeEquivalent(wr_mi) ;
										if ((node_mi == null) ) {
											node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
											menu_bar_creation_mi__To__mb_m_mi_Map.putNode(wr_mi, node_mi) ;
											node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
										}
										menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
										targetSet.add(created) ;
									}
								}
							}
						}
					}
					sourceSet.eraseRange(numalive) ;
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				menu_bar_creationMonitor sourceLeaf = null;
				{
					// FindCode
					menu_bar_creationMonitor itmdLeaf = menu_bar_creation__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <m, mi>
					if (definable) {
						// FindCode
						MapOfAll<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m_mi_s_c_Map.getNodeEquivalent(wr_m) ;
						if ((node_m != null) ) {
							Tuple3<MapOfMap<MapOfSetMonitor<menu_bar_creationMonitor_Set, Imenu_bar_creationMonitor>>, menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m_mi = node_m.getNodeEquivalent(wr_mi) ;
							if ((node_m_mi != null) ) {
								menu_bar_creationMonitor itmdLeaf = node_m_mi.getValue3() ;
								if ((itmdLeaf != null) ) {
									if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
										definable = false;
									}
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						menu_bar_creationMonitor created = (menu_bar_creationMonitor)sourceLeaf.clone() ;
						created.RVMRef_m = wr_m;
						created.RVMRef_mi = wr_mi;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <-m, mi>
						{
							// InsertMonitor
							menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <m-m, mi>
						{
							// InsertMonitor
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_Map.getNodeEquivalent(wr_m) ;
							if ((node_m == null) ) {
								node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_m__To__m_mi_Map.putNode(wr_m, node_m) ;
								node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <mi-m, mi>
						{
							// InsertMonitor
							Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__m_mi_Map.getNodeEquivalent(wr_mi) ;
							if ((node_mi == null) ) {
								node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
								menu_bar_creation_mi__To__m_mi_Map.putNode(wr_mi, node_mi) ;
								node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
							}
							menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				menu_bar_creationMonitor created = new menu_bar_creationMonitor(menu_bar_creation_timestamp++, null, wr_m, wr_mi, null, null) ;
				matchedEntry.setValue3(created) ;
				menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <-m, mi>
				{
					// InsertMonitor
					menu_bar_creationMonitor_Set targetSet = menu_bar_creation___To__m_mi_Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <m-m, mi>
				{
					// InsertMonitor
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_m = menu_bar_creation_m__To__m_mi_Map.getNodeEquivalent(wr_m) ;
					if ((node_m == null) ) {
						node_m = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						menu_bar_creation_m__To__m_mi_Map.putNode(wr_m, node_m) ;
						node_m.setValue1(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_m.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <mi-m, mi>
				{
					// InsertMonitor
					Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> node_mi = menu_bar_creation_mi__To__m_mi_Map.getNodeEquivalent(wr_mi) ;
					if ((node_mi == null) ) {
						node_mi = new Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor>() ;
						menu_bar_creation_mi__To__m_mi_Map.putNode(wr_mi, node_mi) ;
						node_mi.setValue1(new menu_bar_creationMonitor_Set() ) ;
					}
					menu_bar_creationMonitor_Set targetSet = node_mi.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			menu_bar_creationMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(menu_bar_creation_timestamp++) ;
		}
		// D(X) main:8--9
		menu_bar_creationMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_add_menu_item(m, mi);

		if ((cachehit == false) ) {
			menu_bar_creation_m_mi_Map_cachekey_m = m;
			menu_bar_creation_m_mi_Map_cachekey_mi = mi;
			menu_bar_creation_m_mi_Map_cachevalue = matchedEntry;
		}

		menu_bar_creation_RVMLock.unlock();
	}

	public static final void endProgEvent() {
		menu_bar_creation_activated = true;
		while (!menu_bar_creation_RVMLock.tryLock()) {
			Thread.yield();
		}

		Tuple2<menu_bar_creationMonitor_Set, menu_bar_creationMonitor> matchedEntry = null;
		{
			// FindOrCreateEntry
			matchedEntry = menu_bar_creation__Map;
		}
		// D(X) main:1
		menu_bar_creationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				menu_bar_creationMonitor created = new menu_bar_creationMonitor(menu_bar_creation_timestamp++, null, null, null, null, null) ;
				matchedEntry.setValue2(created) ;
				menu_bar_creationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
			}
			// D(X) main:6
			menu_bar_creationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(menu_bar_creation_timestamp++) ;
		}
		// D(X) main:8--9
		menu_bar_creationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_endProg();

		menu_bar_creation_RVMLock.unlock();
	}

}


aspect BaseAspect {
	pointcut notwithin() :
	!within(sun..*) &&
	!within(java..*) &&
	!within(javax..*) &&
	!within(com.sun..*) &&
	!within(org.dacapo.harness..*) &&
	!within(org.apache.commons..*) &&
	!within(org.apache.geronimo..*) &&
	!within(net.sf.cglib..*) &&
	!within(mop..*) &&
	!within(javamoprt..*) &&
	!within(rvmonitorrt..*) &&
	!within(com.runtimeverification..*);
}

public aspect menu_bar_creationMonitorAspect implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	public menu_bar_creationMonitorAspect(){
		Runtime.getRuntime().addShutdownHook(new menu_bar_creation_DummyHookThread());
	}

	// Declarations for the Lock
	static ReentrantLock menu_bar_creation_MOPLock = new ReentrantLock();
	static Condition menu_bar_creation_MOPLock_cond = menu_bar_creation_MOPLock.newCondition();

	pointcut MOP_CommonPointCut() : !within(com.runtimeverification.rvmonitor.java.rt.RVMObject+) && !adviceexecution() && BaseAspect.notwithin();
	pointcut menu_bar_creation_add_menu_item(Menu m, MenuItem mi) : (call(public void Menu.add(MenuItem)) && target(m) && args(mi)) && MOP_CommonPointCut();
	before (Menu m, MenuItem mi) : menu_bar_creation_add_menu_item(m, mi) {
		menu_bar_creationRuntimeMonitor.add_menu_itemEvent(m, mi);
	}

	pointcut menu_bar_creation_add_menu(MenuBar mb, Menu m) : (call(public void MenuBar.add(Menu)) && target(mb) && args(m)) && MOP_CommonPointCut();
	before (MenuBar mb, Menu m) : menu_bar_creation_add_menu(mb, m) {
		menu_bar_creationRuntimeMonitor.add_menuEvent(mb, m);
	}

	pointcut menu_bar_creation_menu_item(MenuItem mi, String s, Color c) : (call(public void MenuItem.MenuItem(String, Color)) && target(mi) && args(s, c)) && MOP_CommonPointCut();
	before (MenuItem mi, String s, Color c) : menu_bar_creation_menu_item(mi, s, c) {
		menu_bar_creationRuntimeMonitor.menu_itemEvent(mi, s, c);
	}

	pointcut menu_bar_creation_menu(Menu m, String s, Color c) : (call(public void Menu.Menu(String, Color)) && target(m) && args(s, c)) && MOP_CommonPointCut();
	before (Menu m, String s, Color c) : menu_bar_creation_menu(m, s, c) {
		menu_bar_creationRuntimeMonitor.menuEvent(m, s, c);
	}

	pointcut menu_bar_creation_menu_bar(MenuBar mb) : (call(public void MenuBar.MenuBar()) && target(mb)) && MOP_CommonPointCut();
	before (MenuBar mb) : menu_bar_creation_menu_bar(mb) {
		menu_bar_creationRuntimeMonitor.menu_barEvent(mb);
	}

	class menu_bar_creation_DummyHookThread extends Thread {
		public void run(){
			menu_bar_creationRuntimeMonitor.endProgEvent();
		}
	}
}
