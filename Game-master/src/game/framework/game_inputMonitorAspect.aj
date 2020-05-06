package game.framework;
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

final class game_inputMonitor_Set extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractMonitorSet<game_inputMonitor> {

	game_inputMonitor_Set(){
		this.size = 0;
		this.elements = new game_inputMonitor[4];
	}
	final void event_game(Game initialize) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_inputMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_inputMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_game(initialize);
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
	final void event_initialize(Game g) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_inputMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_inputMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_initialize(g);
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
	final void event_run(Game g) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_inputMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_inputMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_run(g);
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
	final void event_addKeyListener(Game g, Keyboard keyboard) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_inputMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_inputMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_addKeyListener(g, keyboard);
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
	final void event_addMouseListener(Game g, Mouse mouse) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_inputMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_inputMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_addMouseListener(g, mouse);
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

interface Igame_inputMonitor extends IMonitor, IDisableHolder {
}

class game_inputDisableHolder extends DisableHolder implements Igame_inputMonitor {
	game_inputDisableHolder(long tau) {
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

class game_inputMonitor extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractSynchronizedMonitor implements Cloneable, com.runtimeverification.rvmonitor.java.rt.RVMObject, Igame_inputMonitor {
	protected Object clone() {
		try {
			game_inputMonitor ret = (game_inputMonitor) super.clone();
			return ret;
		}
		catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	WeakReference Ref_keyboard = null;
	WeakReference Ref_mouse = null;
	WeakReference Ref_g = null;
	int Prop_1_state;
	static final int Prop_1_transition_game[] = {2, 6, 6, 6, 6, 6, 6};;
	static final int Prop_1_transition_initialize[] = {6, 6, 3, 6, 6, 6, 6};;
	static final int Prop_1_transition_run[] = {6, 6, 6, 5, 6, 6, 6};;
	static final int Prop_1_transition_addKeyListener[] = {6, 6, 6, 6, 6, 1, 6};;
	static final int Prop_1_transition_addMouseListener[] = {6, 4, 6, 6, 6, 6, 6};;

	boolean Prop_1_Category_fail = false;

	game_inputMonitor(long tau, CachedWeakReference RVMRef_g, CachedWeakReference RVMRef_keyboard, CachedWeakReference RVMRef_mouse) {
		this.tau = tau;
		Prop_1_state = 0;

		this.RVMRef_g = RVMRef_g;
		this.RVMRef_keyboard = RVMRef_keyboard;
		this.RVMRef_mouse = RVMRef_mouse;
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

	final boolean Prop_1_event_game(Game initialize) {
		Game g = null;
		if(Ref_g != null){
			g = (Game)Ref_g.get();
		}
		Keyboard keyboard = null;
		if(Ref_keyboard != null){
			keyboard = (Keyboard)Ref_keyboard.get();
		}
		Mouse mouse = null;
		if(Ref_mouse != null){
			mouse = (Mouse)Ref_mouse.get();
		}
		{
			System.out.println("start game");
		}
		RVM_lastevent = 0;

		Prop_1_state = Prop_1_transition_game[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_initialize(Game g) {
		Keyboard keyboard = null;
		if(Ref_keyboard != null){
			keyboard = (Keyboard)Ref_keyboard.get();
		}
		Mouse mouse = null;
		if(Ref_mouse != null){
			mouse = (Mouse)Ref_mouse.get();
		}
		{
			System.out.println("initialize");
		}
		if(Ref_g == null){
			Ref_g = new WeakReference(g);
		}
		RVM_lastevent = 1;

		Prop_1_state = Prop_1_transition_initialize[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_run(Game g) {
		Keyboard keyboard = null;
		if(Ref_keyboard != null){
			keyboard = (Keyboard)Ref_keyboard.get();
		}
		Mouse mouse = null;
		if(Ref_mouse != null){
			mouse = (Mouse)Ref_mouse.get();
		}
		{
			System.out.println("running the game");
		}
		if(Ref_g == null){
			Ref_g = new WeakReference(g);
		}
		RVM_lastevent = 2;

		Prop_1_state = Prop_1_transition_run[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_addKeyListener(Game g, Keyboard keyboard) {
		Mouse mouse = null;
		if(Ref_mouse != null){
			mouse = (Mouse)Ref_mouse.get();
		}
		{
			System.err.println("adding key listener");
		}
		if(Ref_keyboard == null){
			Ref_keyboard = new WeakReference(keyboard);
		}
		if(Ref_g == null){
			Ref_g = new WeakReference(g);
		}
		RVM_lastevent = 3;

		Prop_1_state = Prop_1_transition_addKeyListener[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final boolean Prop_1_event_addMouseListener(Game g, Mouse mouse) {
		Keyboard keyboard = null;
		if(Ref_keyboard != null){
			keyboard = (Keyboard)Ref_keyboard.get();
		}
		{
			System.err.println("adding mouse listener");
		}
		if(Ref_mouse == null){
			Ref_mouse = new WeakReference(mouse);
		}
		if(Ref_g == null){
			Ref_g = new WeakReference(g);
		}
		RVM_lastevent = 4;

		Prop_1_state = Prop_1_transition_addMouseListener[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 6;
		return true;
	}

	final void Prop_1_handler_fail (){
		{
			System.err.println("sequence error at " + com.runtimeverification.rvmonitor.java.rt.ViolationRecorder.getLineOfCode() + ". You must call Game, game.input and then run.");
			this.reset();
		}

	}

	final void reset() {
		RVM_lastevent = -1;
		Prop_1_state = 0;
		Prop_1_Category_fail = false;
	}

	CachedWeakReference RVMRef_g;
	CachedWeakReference RVMRef_keyboard;
	CachedWeakReference RVMRef_mouse;

	@Override
	protected final void terminateInternal(int idnum) {
		switch(idnum){
			case 0:
			break;
			case 1:
			break;
			case 2:
			break;
		}
		switch(RVM_lastevent) {
			case -1:
			return;
			case 0:
			//game
			return;
			case 1:
			//initialize
			return;
			case 2:
			//run
			return;
			case 3:
			//addKeyListener
			return;
			case 4:
			//addMouseListener
			return;
		}
		return;
	}

	public static int getNumberOfEvents() {
		return 5;
	}

	public static int getNumberOfStates() {
		return 7;
	}

}

class game_inputRuntimeMonitor implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	private static com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager game_inputMapManager;
	static {
		game_inputMapManager = new com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager();
		game_inputMapManager.start();
	}

	// Declarations for the Lock
	static final ReentrantLock game_input_RVMLock = new ReentrantLock();
	static final Condition game_input_RVMLock_cond = game_input_RVMLock.newCondition();

	// Declarations for Timestamps
	private static long game_input_timestamp = 1;

	private static boolean game_input_activated = false;

	// Declarations for Indexing Trees
	private static Object game_input_g_Map_cachekey_g;
	private static Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> game_input_g_Map_cachevalue;
	private static Object game_input_g_keyboard_Map_cachekey_g;
	private static Object game_input_g_keyboard_Map_cachekey_keyboard;
	private static Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> game_input_g_keyboard_Map_cachevalue;
	private static Object game_input_g_keyboard_mouse_Map_cachekey_g;
	private static Object game_input_g_keyboard_mouse_Map_cachekey_keyboard;
	private static Object game_input_g_keyboard_mouse_Map_cachekey_mouse;
	private static Igame_inputMonitor game_input_g_keyboard_mouse_Map_cachevalue;
	private static Object game_input_g_mouse_Map_cachekey_g;
	private static Object game_input_g_mouse_Map_cachekey_mouse;
	private static Tuple2<game_inputMonitor_Set, game_inputMonitor> game_input_g_mouse_Map_cachevalue;
	private static final Tuple2<game_inputMonitor_Set, game_inputMonitor> game_input__Map = new Tuple2<game_inputMonitor_Set, game_inputMonitor>(new game_inputMonitor_Set() , null) ;
	private static final MapOfMap<MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>> game_input_g_keyboard_mouse_Map = new MapOfMap<MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>>(0) ;
	private static final MapOfAll<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> game_input_g_mouse_Map = new MapOfAll<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>(0) ;
	private static Object game_input_g__To__g_keyboard_Map_cachekey_g;
	private static Tuple2<game_inputMonitor_Set, game_inputMonitor> game_input_g__To__g_keyboard_Map_cachevalue;
	private static final MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor> game_input_g__To__g_keyboard_Map = new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(0) ;

	public static int cleanUp() {
		int collected = 0;
		// indexing trees
		collected += game_input_g_keyboard_mouse_Map.cleanUpUnnecessaryMappings();
		collected += game_input_g_mouse_Map.cleanUpUnnecessaryMappings();
		collected += game_input_g__To__g_keyboard_Map.cleanUpUnnecessaryMappings();
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

	public static final void gameEvent(Game initialize) {
		game_input_activated = true;
		while (!game_input_RVMLock.tryLock()) {
			Thread.yield();
		}

		Tuple2<game_inputMonitor_Set, game_inputMonitor> matchedEntry = null;
		{
			// FindOrCreateEntry
			matchedEntry = game_input__Map;
		}
		// D(X) main:1
		game_inputMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_inputMonitor created = new game_inputMonitor(game_input_timestamp++, null, null, null) ;
				matchedEntry.setValue2(created) ;
				game_inputMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
			}
			// D(X) main:6
			game_inputMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(game_input_timestamp++) ;
		}
		// D(X) main:8--9
		game_inputMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_game(initialize);

		game_input_RVMLock.unlock();
	}

	public static final void initializeEvent(Game g) {
		game_input_activated = true;
		while (!game_input_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_g = null;
		Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> matchedEntry = null;
		boolean cachehit = false;
		if ((g == game_input_g_Map_cachekey_g) ) {
			matchedEntry = game_input_g_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_g = new CachedWeakReference(g) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
				if ((node_g == null) ) {
					node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
					game_input_g_mouse_Map.putNode(wr_g, node_g) ;
					node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
					node_g.setValue2(new game_inputMonitor_Set() ) ;
				}
				matchedEntry = node_g;
			}
		}
		// D(X) main:1
		game_inputMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_g == null) ) {
				wr_g = new CachedWeakReference(g) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				game_inputMonitor sourceLeaf = null;
				{
					// FindCode
					game_inputMonitor itmdLeaf = game_input__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							game_inputMonitor itmdLeaf = node_g.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						game_inputMonitor created = (game_inputMonitor)sourceLeaf.clone() ;
						created.RVMRef_g = wr_g;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						game_inputMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_inputMonitor created = new game_inputMonitor(game_input_timestamp++, wr_g, null, null) ;
				matchedEntry.setValue3(created) ;
				game_inputMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			game_inputMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(game_input_timestamp++) ;
		}
		// D(X) main:8--9
		game_inputMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_initialize(g);

		if ((cachehit == false) ) {
			game_input_g_Map_cachekey_g = g;
			game_input_g_Map_cachevalue = matchedEntry;
		}

		game_input_RVMLock.unlock();
	}

	public static final void runEvent(Game g) {
		game_input_activated = true;
		while (!game_input_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_g = null;
		Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> matchedEntry = null;
		boolean cachehit = false;
		if ((g == game_input_g_Map_cachekey_g) ) {
			matchedEntry = game_input_g_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_g = new CachedWeakReference(g) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
				if ((node_g == null) ) {
					node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
					game_input_g_mouse_Map.putNode(wr_g, node_g) ;
					node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
					node_g.setValue2(new game_inputMonitor_Set() ) ;
				}
				matchedEntry = node_g;
			}
		}
		// D(X) main:1
		game_inputMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_g == null) ) {
				wr_g = new CachedWeakReference(g) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				game_inputMonitor sourceLeaf = null;
				{
					// FindCode
					game_inputMonitor itmdLeaf = game_input__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							game_inputMonitor itmdLeaf = node_g.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						game_inputMonitor created = (game_inputMonitor)sourceLeaf.clone() ;
						created.RVMRef_g = wr_g;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						game_inputMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_inputMonitor created = new game_inputMonitor(game_input_timestamp++, wr_g, null, null) ;
				matchedEntry.setValue3(created) ;
				game_inputMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			game_inputMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(game_input_timestamp++) ;
		}
		// D(X) main:8--9
		game_inputMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_run(g);

		if ((cachehit == false) ) {
			game_input_g_Map_cachekey_g = g;
			game_input_g_Map_cachevalue = matchedEntry;
		}

		game_input_RVMLock.unlock();
	}

	public static final void addKeyListenerEvent(Game g, Keyboard keyboard) {
		game_input_activated = true;
		while (!game_input_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_keyboard = null;
		CachedWeakReference wr_g = null;
		Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> matchedEntry = null;
		boolean cachehit = false;
		if (((g == game_input_g_keyboard_Map_cachekey_g) && (keyboard == game_input_g_keyboard_Map_cachekey_keyboard) ) ) {
			matchedEntry = game_input_g_keyboard_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_g = new CachedWeakReference(g) ;
			wr_keyboard = new CachedWeakReference(keyboard) ;
			{
				// FindOrCreateEntry
				MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_keyboard_mouse_Map.getNodeEquivalent(wr_g) ;
				if ((node_g == null) ) {
					node_g = new MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>(1) ;
					game_input_g_keyboard_mouse_Map.putNode(wr_g, node_g) ;
				}
				Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g_keyboard = node_g.getNodeEquivalent(wr_keyboard) ;
				if ((node_g_keyboard == null) ) {
					node_g_keyboard = new Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
					node_g.putNode(wr_keyboard, node_g_keyboard) ;
					node_g_keyboard.setValue1(new MapOfMonitor<Igame_inputMonitor>(2) ) ;
					node_g_keyboard.setValue2(new game_inputMonitor_Set() ) ;
				}
				matchedEntry = node_g_keyboard;
			}
		}
		// D(X) main:1
		game_inputMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_g == null) ) {
				wr_g = new CachedWeakReference(g) ;
			}
			if ((wr_keyboard == null) ) {
				wr_keyboard = new CachedWeakReference(keyboard) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <g>
				game_inputMonitor sourceLeaf = null;
				{
					// FindCode
					Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
					if ((node_g != null) ) {
						game_inputMonitor itmdLeaf = node_g.getValue3() ;
						sourceLeaf = itmdLeaf;
					}
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g, keyboard>
					if (definable) {
						// FindCode
						MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_keyboard_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g_keyboard = node_g.getNodeEquivalent(wr_keyboard) ;
							if ((node_g_keyboard != null) ) {
								game_inputMonitor itmdLeaf = node_g_keyboard.getValue3() ;
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
						game_inputMonitor created = (game_inputMonitor)sourceLeaf.clone() ;
						created.RVMRef_keyboard = wr_keyboard;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						game_inputMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
								game_input_g_mouse_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
								node_g.setValue2(new game_inputMonitor_Set() ) ;
							}
							game_inputMonitor_Set targetSet = node_g.getValue2() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g-g, keyboard>
						{
							// InsertMonitor
							Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g__To__g_keyboard_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple2<game_inputMonitor_Set, game_inputMonitor>() ;
								game_input_g__To__g_keyboard_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new game_inputMonitor_Set() ) ;
							}
							game_inputMonitor_Set targetSet = node_g.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				game_inputMonitor sourceLeaf = null;
				{
					// FindCode
					game_inputMonitor itmdLeaf = game_input__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							game_inputMonitor itmdLeaf = node_g.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					// D(X) defineTo:1--5 for <g, keyboard>
					if (definable) {
						// FindCode
						MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_keyboard_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g_keyboard = node_g.getNodeEquivalent(wr_keyboard) ;
							if ((node_g_keyboard != null) ) {
								game_inputMonitor itmdLeaf = node_g_keyboard.getValue3() ;
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
						game_inputMonitor created = (game_inputMonitor)sourceLeaf.clone() ;
						created.RVMRef_g = wr_g;
						created.RVMRef_keyboard = wr_keyboard;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						game_inputMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
								game_input_g_mouse_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
								node_g.setValue2(new game_inputMonitor_Set() ) ;
							}
							game_inputMonitor_Set targetSet = node_g.getValue2() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g-g, keyboard>
						{
							// InsertMonitor
							Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g__To__g_keyboard_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple2<game_inputMonitor_Set, game_inputMonitor>() ;
								game_input_g__To__g_keyboard_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new game_inputMonitor_Set() ) ;
							}
							game_inputMonitor_Set targetSet = node_g.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_inputMonitor created = new game_inputMonitor(game_input_timestamp++, wr_g, wr_keyboard, null) ;
				matchedEntry.setValue3(created) ;
				game_inputMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <g>
				{
					// InsertMonitor
					Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
					if ((node_g == null) ) {
						node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
						game_input_g_mouse_Map.putNode(wr_g, node_g) ;
						node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
						node_g.setValue2(new game_inputMonitor_Set() ) ;
					}
					game_inputMonitor_Set targetSet = node_g.getValue2() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <g-g, keyboard>
				{
					// InsertMonitor
					Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g__To__g_keyboard_Map.getNodeEquivalent(wr_g) ;
					if ((node_g == null) ) {
						node_g = new Tuple2<game_inputMonitor_Set, game_inputMonitor>() ;
						game_input_g__To__g_keyboard_Map.putNode(wr_g, node_g) ;
						node_g.setValue1(new game_inputMonitor_Set() ) ;
					}
					game_inputMonitor_Set targetSet = node_g.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			game_inputMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(game_input_timestamp++) ;
		}
		// D(X) main:8--9
		game_inputMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_addKeyListener(g, keyboard);

		if ((cachehit == false) ) {
			game_input_g_keyboard_Map_cachekey_g = g;
			game_input_g_keyboard_Map_cachekey_keyboard = keyboard;
			game_input_g_keyboard_Map_cachevalue = matchedEntry;
		}

		game_input_RVMLock.unlock();
	}

	public static final void addMouseListenerEvent(Game g, Mouse mouse) {
		game_input_activated = true;
		while (!game_input_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_mouse = null;
		CachedWeakReference wr_g = null;
		Tuple2<game_inputMonitor_Set, game_inputMonitor> matchedEntry = null;
		boolean cachehit = false;
		if (((g == game_input_g_mouse_Map_cachekey_g) && (mouse == game_input_g_mouse_Map_cachekey_mouse) ) ) {
			matchedEntry = game_input_g_mouse_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_g = new CachedWeakReference(g) ;
			wr_mouse = new CachedWeakReference(mouse) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
				if ((node_g == null) ) {
					node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
					game_input_g_mouse_Map.putNode(wr_g, node_g) ;
					node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
					node_g.setValue2(new game_inputMonitor_Set() ) ;
				}
				Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g_mouse = node_g.getValue1() .getNodeEquivalent(wr_mouse) ;
				if ((node_g_mouse == null) ) {
					node_g_mouse = new Tuple2<game_inputMonitor_Set, game_inputMonitor>() ;
					node_g.getValue1() .putNode(wr_mouse, node_g_mouse) ;
					node_g_mouse.setValue1(new game_inputMonitor_Set() ) ;
				}
				matchedEntry = node_g_mouse;
			}
		}
		// D(X) main:1
		game_inputMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((wr_g == null) ) {
				wr_g = new CachedWeakReference(g) ;
			}
			if ((wr_mouse == null) ) {
				wr_mouse = new CachedWeakReference(mouse) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <g>
				game_inputMonitor_Set sourceSet = null;
				{
					// FindCode
					Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g__To__g_keyboard_Map.getNodeEquivalent(wr_g) ;
					if ((node_g != null) ) {
						game_inputMonitor_Set itmdSet = node_g.getValue1() ;
						sourceSet = itmdSet;
					}
				}
				if ((sourceSet != null) ) {
					int numalive = 0;
					int setlen = sourceSet.getSize() ;
					for (int ielem = 0; (ielem < setlen) ;++ielem) {
						game_inputMonitor sourceMonitor = sourceSet.get(ielem) ;
						if ((!sourceMonitor.isTerminated() && (sourceMonitor.RVMRef_keyboard.get() != null) ) ) {
							sourceSet.set(numalive++, sourceMonitor) ;
							CachedWeakReference wr_keyboard = sourceMonitor.RVMRef_keyboard;
							MapOfMonitor<Igame_inputMonitor> destLastMap = null;
							Igame_inputMonitor destLeaf = null;
							{
								// FindOrCreate
								MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_keyboard_mouse_Map.getNodeEquivalent(wr_g) ;
								if ((node_g == null) ) {
									node_g = new MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>(1) ;
									game_input_g_keyboard_mouse_Map.putNode(wr_g, node_g) ;
								}
								Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g_keyboard = node_g.getNodeEquivalent(wr_keyboard) ;
								if ((node_g_keyboard == null) ) {
									node_g_keyboard = new Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
									node_g.putNode(wr_keyboard, node_g_keyboard) ;
									node_g_keyboard.setValue1(new MapOfMonitor<Igame_inputMonitor>(2) ) ;
									node_g_keyboard.setValue2(new game_inputMonitor_Set() ) ;
								}
								MapOfMonitor<Igame_inputMonitor> itmdMap = node_g_keyboard.getValue1() ;
								destLastMap = itmdMap;
								Igame_inputMonitor node_g_keyboard_mouse = node_g_keyboard.getValue1() .getNodeEquivalent(wr_mouse) ;
								destLeaf = node_g_keyboard_mouse;
							}
							if (((destLeaf == null) || destLeaf instanceof game_inputDisableHolder) ) {
								boolean definable = true;
								// D(X) defineTo:1--5 for <g, keyboard, mouse>
								if (definable) {
									// FindCode
									MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_keyboard_mouse_Map.getNodeEquivalent(wr_g) ;
									if ((node_g != null) ) {
										Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g_keyboard = node_g.getNodeEquivalent(wr_keyboard) ;
										if ((node_g_keyboard != null) ) {
											Igame_inputMonitor node_g_keyboard_mouse = node_g_keyboard.getValue1() .getNodeEquivalent(wr_mouse) ;
											if ((node_g_keyboard_mouse != null) ) {
												if (((node_g_keyboard_mouse.getDisable() > sourceMonitor.getTau() ) || ((node_g_keyboard_mouse.getTau() > 0) && (node_g_keyboard_mouse.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								// D(X) defineTo:1--5 for <g, mouse>
								if (definable) {
									// FindCode
									Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
									if ((node_g != null) ) {
										Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g_mouse = node_g.getValue1() .getNodeEquivalent(wr_mouse) ;
										if ((node_g_mouse != null) ) {
											game_inputMonitor itmdLeaf = node_g_mouse.getValue2() ;
											if ((itmdLeaf != null) ) {
												if (((itmdLeaf.getDisable() > sourceMonitor.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceMonitor.getTau() ) ) ) ) {
													definable = false;
												}
											}
										}
									}
								}
								if (definable) {
									// D(X) defineTo:6
									game_inputMonitor created = (game_inputMonitor)sourceMonitor.clone() ;
									created.RVMRef_mouse = wr_mouse;
									destLastMap.putNode(wr_mouse, created) ;
									// D(X) defineTo:7 for <>
									{
										// InsertMonitor
										game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <g>
									{
										// InsertMonitor
										Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
										if ((node_g == null) ) {
											node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
											game_input_g_mouse_Map.putNode(wr_g, node_g) ;
											node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
											node_g.setValue2(new game_inputMonitor_Set() ) ;
										}
										game_inputMonitor_Set targetSet = node_g.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <g, keyboard>
									{
										// InsertMonitor
										MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_keyboard_mouse_Map.getNodeEquivalent(wr_g) ;
										if ((node_g == null) ) {
											node_g = new MapOfAll<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>(1) ;
											game_input_g_keyboard_mouse_Map.putNode(wr_g, node_g) ;
										}
										Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g_keyboard = node_g.getNodeEquivalent(wr_keyboard) ;
										if ((node_g_keyboard == null) ) {
											node_g_keyboard = new Tuple3<MapOfMonitor<Igame_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
											node_g.putNode(wr_keyboard, node_g_keyboard) ;
											node_g_keyboard.setValue1(new MapOfMonitor<Igame_inputMonitor>(2) ) ;
											node_g_keyboard.setValue2(new game_inputMonitor_Set() ) ;
										}
										game_inputMonitor_Set targetSet = node_g_keyboard.getValue2() ;
										targetSet.add(created) ;
									}
									// D(X) defineTo:7 for <g, mouse>
									{
										// InsertMonitor
										Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
										if ((node_g == null) ) {
											node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
											game_input_g_mouse_Map.putNode(wr_g, node_g) ;
											node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
											node_g.setValue2(new game_inputMonitor_Set() ) ;
										}
										Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g_mouse = node_g.getValue1() .getNodeEquivalent(wr_mouse) ;
										if ((node_g_mouse == null) ) {
											node_g_mouse = new Tuple2<game_inputMonitor_Set, game_inputMonitor>() ;
											node_g.getValue1() .putNode(wr_mouse, node_g_mouse) ;
											node_g_mouse.setValue1(new game_inputMonitor_Set() ) ;
										}
										game_inputMonitor_Set targetSet = node_g_mouse.getValue1() ;
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
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <g>
				game_inputMonitor sourceLeaf = null;
				{
					// FindCode
					Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
					if ((node_g != null) ) {
						game_inputMonitor itmdLeaf = node_g.getValue3() ;
						sourceLeaf = itmdLeaf;
					}
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g, mouse>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g_mouse = node_g.getValue1() .getNodeEquivalent(wr_mouse) ;
							if ((node_g_mouse != null) ) {
								game_inputMonitor itmdLeaf = node_g_mouse.getValue2() ;
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
						game_inputMonitor created = (game_inputMonitor)sourceLeaf.clone() ;
						created.RVMRef_mouse = wr_mouse;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						game_inputMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
								game_input_g_mouse_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
								node_g.setValue2(new game_inputMonitor_Set() ) ;
							}
							game_inputMonitor_Set targetSet = node_g.getValue2() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				game_inputMonitor sourceLeaf = null;
				{
					// FindCode
					game_inputMonitor itmdLeaf = game_input__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							game_inputMonitor itmdLeaf = node_g.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					// D(X) defineTo:1--5 for <g, mouse>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							Tuple2<game_inputMonitor_Set, game_inputMonitor> node_g_mouse = node_g.getValue1() .getNodeEquivalent(wr_mouse) ;
							if ((node_g_mouse != null) ) {
								game_inputMonitor itmdLeaf = node_g_mouse.getValue2() ;
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
						game_inputMonitor created = (game_inputMonitor)sourceLeaf.clone() ;
						created.RVMRef_g = wr_g;
						created.RVMRef_mouse = wr_mouse;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						game_inputMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
								game_input_g_mouse_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
								node_g.setValue2(new game_inputMonitor_Set() ) ;
							}
							game_inputMonitor_Set targetSet = node_g.getValue2() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_inputMonitor created = new game_inputMonitor(game_input_timestamp++, wr_g, null, wr_mouse) ;
				matchedEntry.setValue2(created) ;
				game_inputMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					game_inputMonitor_Set targetSet = game_input__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <g>
				{
					// InsertMonitor
					Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor> node_g = game_input_g_mouse_Map.getNodeEquivalent(wr_g) ;
					if ((node_g == null) ) {
						node_g = new Tuple3<MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>, game_inputMonitor_Set, game_inputMonitor>() ;
						game_input_g_mouse_Map.putNode(wr_g, node_g) ;
						node_g.setValue1(new MapOfSetMonitor<game_inputMonitor_Set, game_inputMonitor>(1) ) ;
						node_g.setValue2(new game_inputMonitor_Set() ) ;
					}
					game_inputMonitor_Set targetSet = node_g.getValue2() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			game_inputMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(game_input_timestamp++) ;
		}
		// D(X) main:8--9
		game_inputMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_addMouseListener(g, mouse);

		if ((cachehit == false) ) {
			game_input_g_mouse_Map_cachekey_g = g;
			game_input_g_mouse_Map_cachekey_mouse = mouse;
			game_input_g_mouse_Map_cachevalue = matchedEntry;
		}

		game_input_RVMLock.unlock();
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

public aspect game_inputMonitorAspect implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	public game_inputMonitorAspect(){
	}

	// Declarations for the Lock
	static ReentrantLock game_input_MOPLock = new ReentrantLock();
	static Condition game_input_MOPLock_cond = game_input_MOPLock.newCondition();

	pointcut MOP_CommonPointCut() : !within(com.runtimeverification.rvmonitor.java.rt.RVMObject+) && !adviceexecution() && BaseAspect.notwithin();
	pointcut game_input_addMouseListener(Game g, Mouse mouse) : (call(public void Game.addMouseListener(Mouse)) && target(g) && args(mouse)) && MOP_CommonPointCut();
	before (Game g, Mouse mouse) : game_input_addMouseListener(g, mouse) {
		game_inputRuntimeMonitor.addMouseListenerEvent(g, mouse);
	}

	pointcut game_input_addKeyListener(Game g, Keyboard keyboard) : (call(public void Game.addKeyListener(Keyboard)) && target(g) && args(keyboard)) && MOP_CommonPointCut();
	before (Game g, Keyboard keyboard) : game_input_addKeyListener(g, keyboard) {
		game_inputRuntimeMonitor.addKeyListenerEvent(g, keyboard);
	}

	pointcut game_input_run(Game g) : (call(public void Game.run()) && target(g)) && MOP_CommonPointCut();
	before (Game g) : game_input_run(g) {
		game_inputRuntimeMonitor.runEvent(g);
	}

	pointcut game_input_initialize(Game g) : (call(public void Game.initialize()) && target(g)) && MOP_CommonPointCut();
	before (Game g) : game_input_initialize(g) {
		game_inputRuntimeMonitor.initializeEvent(g);
	}

	pointcut game_input_game(Game initialize) : (call(public void Game.game()) && target(g)) && MOP_CommonPointCut();
	before (Game initialize) : game_input_game(initialize) {
		game_inputRuntimeMonitor.gameEvent(initialize);
	}

}
