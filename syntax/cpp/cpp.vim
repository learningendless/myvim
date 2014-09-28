" Vim syntax file
" Language:	C++ special highlighting for STL classes and methods
" Maintainer:	Nathan Skvirsky
" Last Change:	2006 Oct 22

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" C++ extentions

syn keyword qClass QCheckListItem QFtp QMetaProperty QSpinBox QWidget
highlight link qClass Type
syn match   cFunction "\[^()]*)("me=e-2
syn match   cFunction "\\s*("me=e-1
hi cFunction gui=NONE guifg=RoyalBlue3
"hi cFunction gui=NONE guifg=#80A0F

syn keyword cppQt       ActiveQt Q3Accel Q3Action Q3ActionGroup Q3AsciiBucket Q3AsciiCache Q3AsciiCacheIterator Q3AsciiDict Q3AsciiDictIterator Q3BaseBucket Q3BoxLayout Q3Button Q3ButtonGroup Q3CString Q3Cache Q3CacheIterator Q3Canvas Q3CanvasEllipse Q3CanvasItem Q3CanvasItemList Q3CanvasLine Q3CanvasPixmap Q3CanvasPixmapArray Q3CanvasPolygon Q3CanvasPolygonalItem Q3CanvasRectangle Q3CanvasSpline Q3CanvasSprite Q3CanvasText Q3CanvasView Q3CheckListItem Q3CheckTableItem Q3CleanupHandler Q3ColorDrag Q3ComboBox Q3ComboTableItem Q3DataBrowser Q3DataTable Q3DataView Q3DateEdit Q3DateTimeEdit Q3DateTimeEditBase Q3DeepCopy Q3Dict Q3DictIterator Q3Dns Q3DnsSocket Q3DockArea Q3DockAreaLayout Q3DockWindow Q3DragObject Q3DropSite Q3EditorFactory Q3FileDialog Q3FileIconProvider Q3FilePreview Q3Frame Q3Ftp Q3GArray Q3GCache Q3GCacheIterator Q3GDict Q3GDictIterator Q3GList Q3GListIterator Q3GListStdIterator Q3GVector Q3Grid Q3GridLayout Q3GridView Q3GroupBox Q3HBox Q3HBoxLayout Q3HButtonGroup Q3HGroupBox Q3Header Q3Http Q3HttpHeader Q3HttpRequestHeader Q3HttpResponseHeader Q3IconDrag Q3IconDragItem Q3IconView Q3IconViewItem Q3ImageDrag Q3IntBucket Q3IntCache Q3IntCacheIterator Q3IntDict Q3IntDictIterator Q3LNode Q3ListBox Q3ListBoxItem Q3ListBoxPixmap Q3ListBoxText Q3ListView Q3ListViewItem Q3ListViewItemIterator Q3LocalFs Q3MainWindow Q3MemArray Q3MimeSourceFactory Q3MultiLineEdit Q3NetworkOperation Q3NetworkProtocol Q3NetworkProtocolDict Q3NetworkProtocolFactory Q3NetworkProtocolFactoryBase Q3ObjectDictionary Q3PaintDeviceMetrics Q3Painter Q3Picture Q3PointArray Q3PolygonScanner Q3PopupMenu Q3Process Q3ProgressBar Q3ProgressDialog Q3PtrBucket Q3PtrCollection Q3PtrDict Q3PtrDictIterator Q3PtrList Q3PtrListIterator Q3PtrListStdIterator Q3PtrQueue Q3PtrStack Q3PtrVector Q3RangeControl Q3ScrollView Q3Semaphore Q3ServerSocket Q3Shared Q3Signal Q3SimpleRichText Q3SingleCleanupHandler Q3Socket Q3SocketDevice Q3SortedList Q3SpinWidget Q3SqlCursor Q3SqlEditorFactory Q3SqlFieldInfo Q3SqlFieldInfoList Q3SqlForm Q3SqlPropertyMap Q3SqlRecordInfo Q3SqlSelectCursor Q3StoredDrag Q3StrIList Q3StrIVec Q3StrList Q3StrListIterator Q3StrVec Q3StringBucket Q3StyleSheet Q3StyleSheetItem Q3SyntaxHighlighter Q3TSFUNC Q3TabDialog Q3Table Q3TableItem Q3TableSelection Q3TextBrowser Q3TextDrag Q3TextEdit Q3TextEditOptimPrivate Q3TextStream Q3TextView Q3TimeEdit Q3ToolBar Q3UriDrag Q3Url Q3UrlOperator Q3VBox Q3VBoxLayout Q3VButtonGroup Q3VGroupBox Q3ValueList Q3ValueListConstIterator Q3ValueListIterator Q3ValueStack Q3ValueVector Q3WhatsThis Q3WidgetStack Q3Wizard QAssistantClient QAbstractEventDispatcher QAbstractFileEngine QAbstractFileEngineHandler QAbstractItemModel QAbstractListModel QAbstractTableModel QArgument QAtomic QAtomicPointer QBasicAtomic QBasicAtomicPointer QBasicTimer QBitArray QBitRef QBool QBuffer QByteArray QByteArrayMatcher QByteRef QCOORD QCache QChar QCharRef QChildEvent QConstString QCoreApplication QCustomEvent QDataStream QDate QDateTime QDebug QDir QEvent QEventLoop QFSFileEngine QFactoryInterface QFile QFileInfo QFileInfoList QFileInfoListIterator QFileSystemWatcher QFlag QFlags QForeachContainer QForeachContainerBase QGenericArgument QGenericReturnArgument QGlobalStatic QHash QHashData QHashDummyNode QHashDummyValue QHashIterator QHashNode QIODevice QIntForSize QIntForType QInternal QLatin1Char QLatin1String QLibrary QLibraryInfo QLine QLineF QLinkedList QLinkedListData QLinkedListIterator QLinkedListNode QList QListData QListIterator QLocale QMap QMapData QMapIterator QMetaClassInfo QMetaEnum QMetaMethod QMetaObject QMetaProperty QMetaType QMetaTypeId QMimeData QModelIndex QModelIndexList QMultiHash QMultiMap QMutableHashIterator QMutableLinkedListIterator QMutableListIterator QMutableMapIterator QMutableSetIterator QMutableStringListIterator QMutableVectorIterator QMutex QMutexLocker QNoDebug QNoImplicitBoolCast QObject QObjectCleanupHandler QObjectData QObjectList QObjectUserData QPair QPersistentModelIndex QPluginLoader QPoint QPointF QPointer QProcess QQueue QReadLocker QReadWriteLock QRect QRectF QRegExp QResource QReturnArgument QSemaphore QSet QSetIterator QSettings QSharedData QSharedDataPointer QSignalMapper QSize QSizeF QSocketNotifier QStack QStdWString QString QStringList QStringListIterator QStringMatcher QSysInfo QSystemLocale QTS QTemporaryFile QTextCodec QTextCodecFactoryInterface QTextCodecPlugin QTextDecoder QTextEncoder QTextIStream QTextOStream QTextStream QTextStreamFunction QTextStreamManipulator QThread QThreadStorage QThreadStorageData QTime QTimeLine QTimer QTimerEvent QTranslator QTypeInfo QUintForSize QUintForType QUrl QUuid QVarLengthArray QVariant QVariantComparisonHelper QVariantList QVariantMap QVector QVectorData QVectorIterator QVectorTypedData QWaitCondition QWriteLocker Q_INT16 Q_INT32 Q_INT64 Q_INT8 Q_LLONG Q_LONG Q_PID Q_UINT16 Q_UINT32 Q_UINT64 Q_UINT8 Q_ULLONG Q_ULONG QDBusAbstractAdaptor QDBusAbstractInterface QDBusArgument QDBusConnection QDBusConnectionInterface QDBusError QDBusInterface QDBusMessage QDBusMetaType QDBusObjectPath QDBusReply QDBusServer QDBusSignature QDBusVariant QAbstractExtensionFactory QAbstractExtensionManager QAbstractFormBuilder QDesignerActionEditorInterface QDesignerBrushManagerInterface QDesignerComponents QDesignerContainerExtension QDesignerCustomWidgetCollectionInterface QDesignerCustomWidgetInterface QDesignerDnDItemInterface QDesignerExportWidget QDesignerExtraInfoExtension QDesignerFormEditorInterface QDesignerFormEditorPluginInterface QDesignerFormWindowCursorInterface QDesignerFormWindowInterface QDesignerFormWindowManagerInterface QDesignerFormWindowToolInterface QDesignerIconCacheInterface QDesignerLayoutDecorationExtension QDesignerMemberSheetExtension QDesignerMetaDataBaseInterface QDesignerMetaDataBaseItemInterface QDesignerObjectInspectorInterface QDesignerPropertyEditorInterface QDesignerPropertySheetExtension QDesignerTaskMenuExtension QDesignerWidgetBoxInterface QDesignerWidgetDataBaseInterface QDesignerWidgetDataBaseItemInterface QDesignerWidgetFactoryInterface QExtensionFactory QExtensionManager QFormBuilder QAbstractButton QAbstractGraphicsShapeItem QAbstractItemDelegate QAbstractItemView QAbstractPageSetupDialog QAbstractPrintDialog QAbstractProxyModel QAbstractScrollArea QAbstractSlider QAbstractSpinBox QAbstractTextDocumentLayout QAbstractUndoItem QAccessible QAccessibleApplication QAccessibleBridge QAccessibleBridgeFactoryInterface QAccessibleBridgePlugin QAccessibleEvent QAccessibleFactoryInterface QAccessibleInterface QAccessibleObject QAccessiblePlugin QAccessibleWidget QAction QActionEvent QActionGroup QApplication QBitmap QBoxLayout QBrush QBrushData QButtonGroup QCDEStyle QCalendarWidget QCheckBox QCleanlooksStyle QClipboard QClipboardEvent QCloseEvent QColor QColorDialog QColorGroup QColormap QComboBox QCommonStyle QCompleter QConicalGradient QContextMenuEvent QCursor QCursorShape QDataWidgetMapper QDateEdit QDateTimeEdit QDesktopServices QDesktopWidget QDial QDialog QDialogButtonBox QDirModel QDockWidget QDoubleSpinBox QDoubleValidator QDrag QDragEnterEvent QDragLeaveEvent QDragMoveEvent QDragResponseEvent QDropEvent QErrorMessage QFileDialog QFileIconProvider QFileOpenEvent QFocusEvent QFocusFrame QFont QFontComboBox QFontDatabase QFontDialog QFontInfo QFontMetrics QFontMetricsF QFrame QGradient QGradientStop QGradientStops QGraphicsEllipseItem QGraphicsItem QGraphicsItemAnimation QGraphicsItemGroup QGraphicsLineItem QGraphicsPathItem QGraphicsPixmapItem QGraphicsPolygonItem QGraphicsRectItem QGraphicsScene QGraphicsSceneContextMenuEvent QGraphicsSceneDragDropEvent QGraphicsSceneEvent QGraphicsSceneHelpEvent QGraphicsSceneHoverEvent QGraphicsSceneMouseEvent QGraphicsSceneWheelEvent QGraphicsSimpleTextItem QGraphicsTextItem QGraphicsView QGridLayout QGroupBox QHBoxLayout QHeaderView QHelpEvent QHideEvent QHoverEvent QIcon QIconDragEvent QIconEngine QIconEngineFactoryInterface QIconEnginePlugin QIconSet QImage QImageIOHandler QImageIOHandlerFactoryInterface QImageIOPlugin QImageReader QImageTextKeyLang QImageWriter QInputContext QInputContextFactory QInputContextFactoryInterface QInputContextPlugin QInputDialog QInputEvent QInputMethodEvent QIntValidator QItemDelegate QItemEditorCreator QItemEditorCreatorBase QItemEditorFactory QItemSelection QItemSelectionModel QItemSelectionRange QKeyEvent QKeySequence QLCDNumber QLabel QLayout QLayoutItem QLayoutIterator QLineEdit QLinearGradient QListView QListWidget QListWidgetItem QMacMime QMacPasteBoardMime QMainWindow QMatrix QMenu QMenuBar QMenuItem QMenubarUpdatedEvent QMessageBox QMessageBoxEx QMimeSource QMotifStyle QMouseEvent QMoveEvent QMovie QPageSetupDialog QPaintDevice QPaintEngine QPaintEngineState QPaintEvent QPainter QPainterPath QPainterPathPrivate QPainterPathStroker QPalette QPen QPicture QPictureFormatInterface QPictureFormatPlugin QPictureIO QPixmap QPixmapCache QPlastiqueStyle QPolygon QPolygonF QPrintDialog QPrintEngine QPrinter QProgressBar QProgressDialog QProxyModel QPushButton QRadialGradient QRadioButton QRegExpValidator QRegion QResizeEvent QRgb QRubberBand QScrollArea QScrollBar QSessionManager QShortcut QShortcutEvent QShowEvent QSizeGrip QSizePolicy QSlider QSortFilterProxyModel QSound QSpacerItem QSpinBox QSplashScreen QSplitter QSplitterHandle QStackedLayout QStackedWidget QStandardItem QStandardItemEditorCreator QStandardItemModel QStatusBar QStatusTipEvent QStringListModel QStyle QStyleFactory QStyleFactoryInterface QStyleHintReturn QStyleHintReturnMask QStyleOption QStyleOptionButton QStyleOptionComboBox QStyleOptionComplex QStyleOptionDockWidget QStyleOptionFocusRect QStyleOptionFrame QStyleOptionFrameV2 QStyleOptionGraphicsItem QStyleOptionGroupBox QStyleOptionHeader QStyleOptionMenuItem QStyleOptionProgressBar QStyleOptionProgressBarV2 QStyleOptionQ3DockWindow QStyleOptionQ3ListView QStyleOptionQ3ListViewItem QStyleOptionRubberBand QStyleOptionSizeGrip QStyleOptionSlider QStyleOptionSpinBox QStyleOptionTab QStyleOptionTabBarBase QStyleOptionTabV2 QStyleOptionTabWidgetFrame QStyleOptionTitleBar QStyleOptionToolBar QStyleOptionToolBox QStyleOptionToolButton QStyleOptionViewItem QStylePainter QStylePlugin QSyntaxHighlighter QSystemTrayIcon QTabBar QTabWidget QTableView QTableWidget QTableWidgetItem QTableWidgetSelectionRange QTabletEvent QTextBlock QTextBlockFormat QTextBlockGroup QTextBlockUserData QTextBrowser QTextCharFormat QTextCursor QTextDocument QTextDocumentFragment QTextEdit QTextFormat QTextFragment QTextFrame QTextFrameFormat QTextFrameLayoutData QTextImageFormat QTextInlineObject QTextItem QTextLayout QTextLength QTextLine QTextList QTextListFormat QTextObject QTextObjectInterface QTextOption QTextTable QTextTableCell QTextTableFormat QTimeEdit QToolBar QToolBarChangeEvent QToolBox QToolButton QToolTip QTreeView QTreeWidget QTreeWidgetItem QTreeWidgetItemIterator QUndoCommand QUndoGroup QUndoStack QUndoView QUpdateLaterEvent QVBoxLayout QValidator QWMatrix QWhatsThis QWhatsThisClickedEvent QWheelEvent QWidget QWidgetAction QWidgetData QWidgetItem QWidgetList QWidgetMapper QWindowStateChangeEvent QWindowsMime QWindowsStyle QWindowsXPStyle QWorkspace QAbstractSocket QFtp QHostAddress QHostInfo QHttp QHttpHeader QHttpRequestHeader QHttpResponseHeader QIPv6Address QNetworkAddressEntry QNetworkInterface QNetworkProxy QTcpServer QTcpSocket QUdpSocket QUrlInfo Q_IPV6ADDR QGLColormap QGLContext QGLFormat QGLFramebufferObject QGLPixelBuffer QGLWidget QIBaseDriver QIBaseResult QMYSQLDriver QMYSQLResult QODBCDriver QODBCResult QPSQLDriver QPSQLResult QSQLite2Driver QSQLite2Result QSQLiteDriver QSQLiteResult QSqlDatabase QSqlDriver QSqlDriverCreator QSqlDriverCreatorBase QSqlDriverFactoryInterface QSqlDriverPlugin QSqlError QSqlField QSqlIndex QSqlQuery QSqlQueryModel QSqlRecord QSqlRelation QSqlRelationalDelegate QSqlRelationalTableModel QSqlResult QSqlTableModel QSvgRenderer QSvgWidget QEventSizeOfChecker QSignalSpy QSpontaneKeyEvent QTestAccessibility QTestAccessibilityEvent QTestData QTestDelayEvent QTestEvent QTestEventList QTestEventLoop QTestKeyClicksEvent QTestKeyEvent QTestMouseEvent QUiLoader QDomAttr QDomCDATASection QDomCharacterData QDomComment QDomDocument QDomDocumentFragment QDomDocumentType QDomElement QDomEntity QDomEntityReference QDomImplementation QDomNamedNodeMap QDomNode QDomNodeList QDomNotation QDomProcessingInstruction QDomText QXmlAttributes QXmlContentHandler QXmlDTDHandler QXmlDeclHandler QXmlDefaultHandler QXmlEntityResolver QXmlErrorHandler QXmlInputSource QXmlLexicalHandler QXmlLocator QXmlNamespaceSupport QXmlParseException QXmlReader QXmlSimpleReader


syn keyword cppSTL		abort abs accumulate acos adjacent_difference adjacent_find adjacent_find_if any append asctime asin assert assign at atan atan2 atexit atof atoi atol auto_ptr back back_inserter bad bad_alloc bad_cast bad_exception bad_typeid badbit beg begin binary_compose binary_negate binary_search bind2nd binder1st binder2nd bitset bsearch c_str calloc capacity ceil cerr cin clear clearerr clock clog close compare compose1 compose2 const_iterator construct copy copy_backward copy_n cos cosh count count_if cout ctime data deque destroy difference_type difftime div divides domain_error empty end endl eof eofbit equal equal_range erase exception exit exp fabs fail failbit failure fclose feof ferror fflush fgetc fgetpos fgets fill fill_n find find_end find_first_not_of find_first_of find_if find_last_not_of find_last_of first flags flip floor flush fmod fopen for_each fprintf fputc fputs fread free freopen frexp front fscanf fseek fsetpos fstream ftell fwrite gcount generate generate_n get get_temporary_buffer getc getchar getenv getline gets gmtime good goodbit greater greater_equal hash_map hash_multimap hash_multiset hash_set ifstream ignore in includes inner_product inplace_merge insert inserter invalid_argument ios ios_base iostate iota is_heap is_open is_sorted isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace istream istream_iterator istringstream isupper isxdigit iter_swap iterator iterator_category key_comp ldiv length length_error less less_equal lexicographical_compare lexicographical_compare_3way list localtime log log10 logic_error logical_and logical_not logical_or longjmp lower_bound make_heap malloc map max max_element max_size mem_fun mem_fun1 mem_fun1_ref mem_fun_ref memchr memcpy memmove memset merge min min_element minus mismatch mktime modf modulus multimap multiplies multiset negate next_permutation npos nth_element numeric_limits ofstream open ostream ostream_iterator ostringstream out_of_range overflow_error pair partial_sort partial_sort_copy partial_sum partition peek perror plus pointer pointer_to_binary_function pointer_to_unary_function pop pop_back pop_front pop_heap pow power precision prev_permutation printf ptr_fun push push_back push_front push_heap put putback putc putchar puts qsort raise rand random_sample random_sample_n random_shuffle range_error rbegin rdbuf rdstate read realloc reference remove remove_copy remove_copy_if remove_if rename rend replace replace_copy replace_copy_if replace_if reserve reset resize return_temporary_buffer reverse reverse_copy reverse_iterator rewind rfind rotate rotate_copy runtime_error scanf search search_n second seekg seekp set set_difference set_intersection set_symmetric_difference set_union setbuf setf setjmp setlocale setvbuf signal sin sinh size size_t size_type sort sort_heap splice sprintf sqrt srand sscanf stable_partition stable_sort std str strcat strchr strcmp strcoll strcpy strcspn strerror strftime string strlen strncat strncmp strncpy strpbrk strrchr strspn strstr strtod strtok strtol strtoul strxfrm substr swap swap_ranges sync_with_stdio system tan tanh tellg tellp temporary_buffer test time time_t tmpfile tmpnam to_string to_ulong tolower top toupper transform unary_compose unary_negate underflow_error unget ungetc uninitialized_copy uninitialized_copy_n uninitialized_fill uninitialized_fill_n unique unique_copy unsetf upper_bound va_arg value_comp value_type vector vfprintf vprintf vsprintf width write

syn keyword cppStatement	new delete this friend using
syn keyword cppAccess		public protected private
syn keyword cppType		inline virtual explicit export bool wchar_t
syn keyword cppExceptions	throw try catch
syn keyword cppOperator		operator typeid
syn keyword cppOperator		and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace
syn keyword cppNumber		NPOS
syn keyword cppBoolean		true false

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppAccess		cppStatement
  HiLink cppCast		cppStatement
  HiLink cppExceptions		Exception
  HiLink cppOperator		Operator
  HiLink cppStatement		Statement
  HiLink cppSTL			Identifier
  HiLink cppNCBI		Special
  HiLink cppType		Type
  HiLink cppStorageClass	StorageClass
  HiLink cppStructure		Structure
  HiLink cppNumber		Number
  HiLink cppBoolean		Boolean
  delcommand HiLink
endif

let b:current_syntax = "cpp"

" vim: ts=8

