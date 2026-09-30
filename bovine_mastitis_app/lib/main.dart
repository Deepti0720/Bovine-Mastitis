import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// ============================================================================
// 1. LOCALIZATION ENGINE & DICTIONARIES
// ============================================================================

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'appTitle': 'Bovine Health Monitor',
      'loginTitle': 'Bovine Health Monitor',
      'loginSubtitle': 'Dairy Herd Health & Mastitis Early Warning System',
      'username': 'Phone Number or User ID',
      'password': 'Password or PIN',
      'login': 'Login',
      'demoMode': 'Demo Mode',
      'offlineAccess': 'Offline Access Granted',
      'dashboard': 'Dashboard',
      'cows': 'Cows',
      'alerts': 'Alerts',
      'settings': 'Settings',
      'herdStatus': 'Herd Overview',
      'totalCows': 'Total Herd',
      'monitoredToday': 'Monitored Today',
      'needsAttention': 'Needs Attention',
      'highRisk': 'High Risk',
      'moderateRisk': 'Moderate Risk',
      'lowRisk': 'Low Risk',
      'attentionRequired': 'Attention Required',
      'noCowsAttention':
          'All monitored cows are currently within normal baseline.',
      'checkCow': 'Examine Cow',
      'cowProfile': 'Cow Record',
      'liveReadings': 'Sensor Measurement',
      'riskAnalysis': 'Risk Assessment',
      'historicalTrends': 'Historical Trends',
      'deviceStatus': 'Sensor Hardware',
      'syncStatus': 'Data Synchronization',
      'language': 'App Language',
      'logout': 'Sign Out',
      'offline': 'Offline Mode',
      'online': 'Online',
      'syncing': 'Synchronizing...',
      'pendingUploads': 'Pending Queue',
      'lastSynced': 'Last Synced',
      'syncNow': 'Synchronize Data',
      'conductivity': 'Electrical Conductivity',
      'temperature': 'Milk Temperature',
      'activity': 'Rest/Movement Activity',
      'thi': 'Temperature-Humidity Index',
      'conductivityDesc': 'Changes in milk conductivity correlate with cellular updates in the udder.',
      'connectDevice': 'Connect Sensor',
      'disconnectDevice': 'Disconnect Sensor',
      'deviceConnected': 'Sensor Connected',
      'deviceDisconnected': 'Sensor Disconnected',
      'recAction': 'Recommended Action',
      'recActionHigh': 'Schedule physical udder examination and consult veterinary practitioner.',
      'recActionMod': 'Re-assess milk conductivity and temperature during next milking session.',
      'recActionLow': 'No immediate clinical intervention required. Continue routine monitoring.',
      'contributingFactors': 'Key Contributing Parameters',
      'acknowledge': 'Acknowledge Alert',
      'acknowledged': 'Acknowledged',
      'activeAlerts': 'Active Alerts',
      'historyAlerts': 'Alert History',
      'noAlerts': 'No active alerts recorded.',
      'selectMetric': 'Select Parameter',
      'hours24': '24 Hours',
      'days7': '7 Days',
      'days30': '30 Days',
      'normalRange': 'Expected Baseline Range',
      'noHistory': 'No historical sensor data recorded for this cow yet.',
      'veterinaryNotice': 'This system provides decision support based on physical parameters and does not replace professional veterinary diagnosis.',
      'breed': 'Breed',
      'lactation': 'Lactation Month',
      'age': 'Age',
      'years': 'years',
    },
    'hi': {
      'appTitle': 'पशु स्वास्थ्य मॉनिटर',
      'loginTitle': 'पशु स्वास्थ्य मॉनिटर',
      'loginSubtitle':
          'डेयरी मवेशी स्वास्थ्य और मस्टाइटिस प्रारंभिक चेतावनी प्रणाली',
      'username': 'फोन नंबर या यूजर आईडी',
      'password': 'पासवर्ड या पिन',
      'login': 'लॉगिन करें',
      'demoMode': 'डेमो मोड',
      'offlineAccess': 'ऑफलाइन एक्सेस उपलब्ध',
      'dashboard': 'डैशबोर्ड',
      'cows': 'गाय सूची',
      'alerts': 'अलर्ट',
      'settings': 'सेटिंग्स',
      'herdStatus': 'झुंड का अवलोकन',
      'totalCows': 'कुल मवेशी',
      'monitoredToday': 'आज जांच की गई',
      'needsAttention': 'ध्यान देने की आवश्यकता',
      'highRisk': 'उच्च जोखिम',
      'moderateRisk': 'मध्यम जोखिम',
      'lowRisk': 'कम जोखिम',
      'attentionRequired': 'ध्यान देने योग्य गायें',
      'noCowsAttention': 'सभी निगरानी की गई गायें सामान्य स्थिति में हैं।',
      'checkCow': 'गाय की जांच करें',
      'cowProfile': 'गाय का विवरण',
      'liveReadings': 'सेंसर माप',
      'riskAnalysis': 'जोखिम मूल्यांकन',
      'historicalTrends': 'पुराना रिकॉर्ड',
      'deviceStatus': 'सेंसर उपकरण',
      'syncStatus': 'डेटा सिंक स्थिति',
      'language': 'भाषा चुनें',
      'logout': 'साइन आउट',
      'offline': 'ऑफलाइन मोड',
      'online': 'ऑनलाइन',
      'syncing': 'सिंक हो रहा है...',
      'pendingUploads': 'बकाया अपलोड',
      'lastSynced': 'अंतिम सिंक',
      'syncNow': 'डेटा सिंक करें',
      'conductivity': 'विद्युत चालकता (Conductivity)',
      'temperature': 'दूध का तापमान',
      'activity': 'शारीरिक गतिविधि',
      'thi': 'तापमान-आर्द्रता सूचकांक',
      'conductivityDesc': 'दूध की चालकता में बदलाव अयन के स्वास्थ्य संकेतकों से जुड़े होते हैं।',
      'connectDevice': 'सेंसर कनेक्ट करें',
      'disconnectDevice': 'सेंसर डिसकनेक्ट करें',
      'deviceConnected': 'सेंसर कनेक्टेड है',
      'deviceDisconnected': 'सेंसर डिसकनेक्टेड है',
      'recAction': 'अनुशंसित कदम',
      'recActionHigh':
          'अयन की शारीरिक जांच करें और पशु चिकित्सक से परामर्श लें।',
      'recActionMod':
          'अगली दोहन प्रक्रिया के दौरान चालकता और तापमान की पुनः जांच करें।',
      'recActionLow':
          'किसी तत्काल उपचार की आवश्यकता नहीं है। नियमित निगरानी जारी रखें।',
      'contributingFactors': 'मुख्य प्रभावित कारक',
      'acknowledge': 'स्वीकार करें',
      'acknowledged': 'स्वीकृत',
      'activeAlerts': 'सक्रिय अलर्ट',
      'historyAlerts': 'पुराने अलर्ट',
      'noAlerts': 'कोई सक्रिय अलर्ट नहीं है।',
      'selectMetric': 'पैरामीटर चुनें',
      'hours24': '24 घंटे',
      'days7': '7 दिन',
      'days30': '30 दिन',
      'normalRange': 'सामान्य सीमा',
      'noHistory': 'इस गाय के लिए अभी तक कोई पुराना डेटा उपलब्ध नहीं है।',
      'veterinaryNotice': 'यह प्रणाली केवल निर्णय सहायता प्रदान करती है और पेशेवर पशुचिकित्सक का विकल्प नहीं है।',
      'breed': 'नस्ल',
      'lactation': 'दूध काल (महीना)',
      'age': 'उम्र',
      'years': 'वर्ष',
    },
    'mr': {
      'appTitle': 'पशू आरोग्य मॉनिटर',
      'loginTitle': 'पशू आरोग्य मॉनिटर',
      'loginSubtitle': 'गोधन आरोग्य व मस्टाटिस पूर्वसूचना प्रणाली',
      'username': 'फोन नंबर किंवा युजर आयडी',
      'password': 'पासवर्ड किंवा पिन',
      'login': 'लॉगिन करा',
      'demoMode': 'डेमो मोड',
      'offlineAccess': 'ऑफलाइन प्रवेश उपलब्ध',
      'dashboard': 'डॅशबोर्ड',
      'cows': 'गायींची यादी',
      'alerts': 'अलर्ट्स',
      'settings': 'सेटिंग्ज',
      'herdStatus': 'गोधन आढावा',
      'totalCows': 'एकूण गायी',
      'monitoredToday': 'आज तपासलेल्या',
      'needsAttention': 'लक्ष देणे गरजेचे',
      'highRisk': 'उच्च धोका',
      'moderateRisk': 'मध्यम धोका',
      'lowRisk': 'कमी धोका',
      'attentionRequired': 'लक्ष देण्यायोग्य गायी',
      'noCowsAttention': 'तपासलेल्या सर्व गायी सध्या सामान्य स्थितीत आहेत.',
      'checkCow': 'गाय तपासा',
      'cowProfile': 'गाय प्रोफाइल',
      'liveReadings': 'सेंसर नोंदी',
      'riskAnalysis': 'धोका मूल्यमापन',
      'historicalTrends': 'मागील नोंदी',
      'deviceStatus': 'सेंसर डिव्हाइस',
      'syncStatus': 'डेटा सिंक्रोनायझेशन',
      'language': 'भाषा निवडा',
      'logout': 'साइन आउट',
      'offline': 'ऑफलाइन मोड',
      'online': 'ऑनलाइन',
      'syncing': 'सिंक्रोनायझिंग...',
      'pendingUploads': 'प्रलंबित डेटा',
      'lastSynced': 'शेवटचे सिंक',
      'syncNow': 'डेटा सिंक करा',
      'conductivity': 'विद्युत वाहकता',
      'temperature': 'दुधाचे तापमान',
      'activity': 'शारीरिक हालचाल',
      'thi': 'तापमान-आर्द्रता निर्देशांक',
      'conductivityDesc':
          'दुधाच्या वाहकतेतील बदल कासेच्या आरोग्याशी संबंधित असतात.',
      'connectDevice': 'सेंसर जोडा',
      'disconnectDevice': 'सेंसर डिस्कनेक्ट करा',
      'deviceConnected': 'सेंसर जोडला आहे',
      'deviceDisconnected': 'सेंसर डिस्कनेक्ट झाला आहे',
      'recAction': 'शिफारस केलेली कृती',
      'recActionHigh': 'कासेची तपासणी करा आणि पशुवैद्यकाचा सल्ला घ्या.',
      'recActionMod':
          'पुढील धारा काढताना वाहकता आणि तापमानाची पुन्हा नोंद घ्या.',
      'recActionLow': 'त्वरित उपचाराची गरज नाही. नियमित निरीक्षण चालू ठेवा.',
      'contributingFactors': 'मुख्य कारणीभूत घटक',
      'acknowledge': 'मान्य करा',
      'acknowledged': 'मान्य केले',
      'activeAlerts': 'सक्रिय अलर्ट्स',
      'historyAlerts': 'मागील अलर्ट्स',
      'noAlerts': 'कोणतेही सक्रिय अलर्ट नाहीत.',
      'selectMetric': 'घटक निवडा',
      'hours24': '24 तास',
      'days7': '7 दिवस',
      'days30': '30 दिवस',
      'normalRange': 'सामान्य श्रेणी',
      'noHistory': 'या गायीसाठी अद्याप मागील नोंदी उपलब्ध नाहीत.',
      'veterinaryNotice': 'ही प्रणाली फक्त निर्णय घेण्यास मदत करते आणि ही डॉक्टरांच्या निदानाची जागा घेऊ शकत नाही.',
      'breed': 'जात',
      'lactation': 'वेताचा महिना',
      'age': 'वय',
      'years': 'वर्षे',
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ??
        _localizedValues['en']![key] ??
        key;
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'hi', 'mr'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

// ============================================================================
// 2. DOMAIN MODELS & ENUMS
// ============================================================================

enum RiskLevel { low, moderate, high }

extension RiskLevelExtension on RiskLevel {
  String label(AppLocalizations loc) {
    switch (this) {
      case RiskLevel.low:
        return loc.translate('lowRisk');
      case RiskLevel.moderate:
        return loc.translate('moderateRisk');
      case RiskLevel.high:
        return loc.translate('highRisk');
    }
  }

  Color get color {
    switch (this) {
      case RiskLevel.low:
        return const Color(0xFF2E7D32);
      case RiskLevel.moderate:
        return const Color(0xFFE65100);
      case RiskLevel.high:
        return const Color(0xFFC62828);
    }
  }

  Color get backgroundColor {
    switch (this) {
      case RiskLevel.low:
        return const Color(0xFFE8F5E9);
      case RiskLevel.moderate:
        return const Color(0xFFFFF3E0);
      case RiskLevel.high:
        return const Color(0xFFFFEBEE);
    }
  }
}

class CowModel {
  final String id;
  final String tagNumber;
  final String breed;
  final int ageYears;
  final int lactationMonth;
  final RiskLevel currentRisk;
  final DateTime lastMonitored;
  final String assignedDeviceId;

  CowModel({
    required this.id,
    required this.tagNumber,
    required this.breed,
    required this.ageYears,
    required this.lactationMonth,
    required this.currentRisk,
    required this.lastMonitored,
    required this.assignedDeviceId,
  });
}

class SensorReadingModel {
  final String id;
  final String cowId;
  final DateTime timestamp;
  final double milkConductivity;
  final double milkTemperature;
  final double activityLevel;
  final double ambientTemperature;
  final double ambientHumidity;
  final double thi;

  SensorReadingModel({
    required this.id,
    required this.cowId,
    required this.timestamp,
    required this.milkConductivity,
    required this.milkTemperature,
    required this.activityLevel,
    required this.ambientTemperature,
    required this.ambientHumidity,
    required this.thi,
  });
}

class AlertModel {
  final String id;
  final String cowId;
  final String tagNumber;
  final RiskLevel riskLevel;
  final DateTime timestamp;
  final String summary;
  bool isAcknowledged;

  AlertModel({
    required this.id,
    required this.cowId,
    required this.tagNumber,
    required this.riskLevel,
    required this.timestamp,
    required this.summary,
    this.isAcknowledged = false,
  });
}

class SyncItem {
  final String id;
  final String payloadType;
  final DateTime createdTimestamp;
  bool isSynced;

  SyncItem({
    required this.id,
    required this.payloadType,
    required this.createdTimestamp,
    this.isSynced = false,
  });
}

// ============================================================================
// 3. MOCK DATA & REPOSITORY SERVICES
// ============================================================================

class AppState extends ChangeNotifier {
  Locale _locale = const Locale('en');
  bool _isOnline = false;
  bool _isDeviceConnected = true;
  bool _isSyncing = false;

  Locale get locale => _locale;
  bool get isOnline => _isOnline;
  bool get isDeviceConnected => _isDeviceConnected;
  bool get isSyncing => _isSyncing;

  final List<CowModel> _cows = [
    CowModel(
      id: 'cow_1',
      tagNumber: 'C-104',
      breed: 'Gir',
      ageYears: 5,
      lactationMonth: 3,
      currentRisk: RiskLevel.high,
      lastMonitored: DateTime.now().subtract(const Duration(minutes: 25)),
      assignedDeviceId: 'DEV-8821',
    ),
    CowModel(
      id: 'cow_2',
      tagNumber: 'C-117',
      breed: 'Sahiwal',
      ageYears: 4,
      lactationMonth: 2,
      currentRisk: RiskLevel.moderate,
      lastMonitored: DateTime.now().subtract(const Duration(hours: 2)),
      assignedDeviceId: 'DEV-8822',
    ),
    CowModel(
      id: 'cow_3',
      tagNumber: 'C-201',
      breed: 'HF Cross',
      ageYears: 6,
      lactationMonth: 5,
      currentRisk: RiskLevel.low,
      lastMonitored: DateTime.now().subtract(const Duration(hours: 4)),
      assignedDeviceId: 'DEV-8823',
    ),
    CowModel(
      id: 'cow_4',
      tagNumber: 'C-205',
      breed: 'Murrah (Buffalo)',
      ageYears: 3,
      lactationMonth: 1,
      currentRisk: RiskLevel.low,
      lastMonitored: DateTime.now().subtract(const Duration(hours: 6)),
      assignedDeviceId: 'DEV-8824',
    ),
    CowModel(
      id: 'cow_5',
      tagNumber: 'C-302',
      breed: 'Jersey Cross',
      ageYears: 4,
      lactationMonth: 4,
      currentRisk: RiskLevel.low,
      lastMonitored: DateTime.now().subtract(const Duration(hours: 12)),
      assignedDeviceId: 'DEV-8825',
    ),
  ];

  final List<AlertModel> _alerts = [
    AlertModel(
      id: 'alt_1',
      cowId: 'cow_1',
      tagNumber: 'C-104',
      riskLevel: RiskLevel.high,
      timestamp: DateTime.now().subtract(const Duration(minutes: 25)),
      summary: 'Conductivity elevated (6.4 mS/cm) & localized temperature increase detected.',
      isAcknowledged: false,
    ),
    AlertModel(
      id: 'alt_2',
      cowId: 'cow_2',
      tagNumber: 'C-117',
      riskLevel: RiskLevel.moderate,
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      summary:
          'Slight deviation in conductivity from historical 7-day baseline.',
      isAcknowledged: false,
    ),
  ];

  final List<SyncItem> _syncQueue = [
    SyncItem(
      id: 'sync_101',
      payloadType: 'SensorPacket',
      createdTimestamp: DateTime.now().subtract(const Duration(minutes: 25)),
    ),
    SyncItem(
      id: 'sync_102',
      payloadType: 'SensorPacket',
      createdTimestamp: DateTime.now().subtract(const Duration(minutes: 10)),
    ),
    SyncItem(
      id: 'sync_103',
      payloadType: 'SensorPacket',
      createdTimestamp: DateTime.now().subtract(const Duration(minutes: 2)),
    ),
  ];

  List<CowModel> get cows => UnmodifiableListView(_cows);
  List<AlertModel> get alerts => UnmodifiableListView(_alerts);
  List<SyncItem> get syncQueue => UnmodifiableListView(_syncQueue);

  int get highRiskCount =>
      _cows.where((c) => c.currentRisk == RiskLevel.high).length;

  int get moderateRiskCount =>
      _cows.where((c) => c.currentRisk == RiskLevel.moderate).length;

  int get pendingSyncCount => _syncQueue.where((s) => !s.isSynced).length;

  void setLanguage(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void toggleNetwork(bool online) {
    _isOnline = online;

    if (_isOnline) {
      triggerSync();
    }

    notifyListeners();
  }

  void toggleDeviceConnection(bool connected) {
    _isDeviceConnected = connected;
    notifyListeners();
  }

  void acknowledgeAlert(String alertId) {
    final idx = _alerts.indexWhere((a) => a.id == alertId);

    if (idx != -1) {
      _alerts[idx].isAcknowledged = true;
      notifyListeners();
    }
  }

  Future<void> triggerSync() async {
    if (!_isOnline || _isSyncing) return;

    _isSyncing = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    for (var item in _syncQueue) {
      item.isSynced = true;
    }

    _syncQueue.removeWhere((item) => item.isSynced);

    _isSyncing = false;
    notifyListeners();
  }

  SensorReadingModel getLatestReadingForCow(String cowId) {
    if (cowId == 'cow_1') {
      return SensorReadingModel(
        id: 'rd_104',
        cowId: 'cow_1',
        timestamp: DateTime.now().subtract(const Duration(minutes: 25)),
        milkConductivity: 6.4,
        milkTemperature: 39.2,
        activityLevel: 38.0,
        ambientTemperature: 31.5,
        ambientHumidity: 68.0,
        thi: 81.2,
      );
    }

    return SensorReadingModel(
      id: 'rd_gen',
      cowId: cowId,
      timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      milkConductivity: 4.8,
      milkTemperature: 38.4,
      activityLevel: 65.0,
      ambientTemperature: 30.0,
      ambientHumidity: 60.0,
      thi: 76.5,
    );
  }
}

// ============================================================================
// 4. MAIN APPLICATION ENTRY POINT & THEME
// ============================================================================

void main() {
  runApp(const BovineHealthApp());
}

class BovineHealthApp extends StatefulWidget {
  const BovineHealthApp({super.key});

  @override
  State<BovineHealthApp> createState() => _BovineHealthAppState();
}

class _BovineHealthAppState extends State<BovineHealthApp> {
  late AppState _appState;

  @override
  void initState() {
    super.initState();
    _appState = AppState();
  }

  @override
  void dispose() {
    _appState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _appState,
      builder: (context, _) {
        return AppStateProvider(
          appState: _appState,
          child: MaterialApp(
            title: 'Bovine Health Monitor',
            debugShowCheckedModeBanner: false,
            locale: _appState.locale,
            supportedLocales: const [
              Locale('en', ''),
              Locale('hi', ''),
              Locale('mr', ''),
            ],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF1B4D3E),
                primary: const Color(0xFF1B4D3E),
                secondary: const Color(0xFF388E3C),
                surface: const Color(0xFFF9FBF9),
                surfaceContainerLow: const Color(0xFFF0F4F1),
                error: const Color(0xFFC62828),
              ),
              scaffoldBackgroundColor: const Color(0xFFF4F6F5),
              appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xFF1B4D3E),
                foregroundColor: Colors.white,
                elevation: 0,
                centerTitle: false,
                titleTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 0.15,
                ),
              ),
              cardTheme: CardThemeData(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFE0E5E1), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                color: Colors.white,
                margin: EdgeInsets.zero,
              ),
              dividerTheme: const DividerThemeData(
                color: Color(0xFFE0E5E1),
                thickness: 1,
                space: 1,
              ),
            ),
            home: const LoginScreen(),
          ),
        );
      },
    );
  }
}

class AppStateProvider extends InheritedWidget {
  final AppState appState;

  const AppStateProvider({
    super.key,
    required this.appState,
    required super.child,
  });

  static AppState of(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<AppStateProvider>();
    assert(provider != null, 'No AppStateProvider found in context');
    return provider!.appState;
  }

  @override
  bool updateShouldNotify(AppStateProvider oldWidget) => true;
}

// ============================================================================
// 5. REUSABLE SYSTEM COMPONENTS
// ============================================================================

class RiskBadge extends StatelessWidget {
  final RiskLevel riskLevel;

  const RiskBadge({super.key, required this.riskLevel});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: riskLevel.backgroundColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: riskLevel.color, width: 1),
      ),
      child: Text(
        riskLevel.label(loc).toUpperCase(),
        style: TextStyle(
          color: riskLevel.color,
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class SyncStatusBanner extends StatelessWidget {
  const SyncStatusBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);
    final loc = AppLocalizations.of(context);

    return Container(
      width: double.infinity,
      color: state.isOnline ? const Color(0xFFE8F5E9) : const Color(0xFFFFF3E0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(
            state.isOnline ? Icons.cloud_done : Icons.cloud_off,
            size: 16,
            color: state.isOnline
                ? const Color(0xFF2E7D32)
                : const Color(0xFFE65100),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              state.isOnline
                  ? (state.isSyncing
                        ? loc.translate('syncing')
                        : '${loc.translate('online')} • ${loc.translate('lastSynced')}: 10 min ago')
                  : '${loc.translate('offline')} • ${state.pendingSyncCount} ${loc.translate('pendingUploads')}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: state.isOnline
                    ? const Color(0xFF1B5E20)
                    : const Color(0xFFE65100),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SyncStatusScreen()),
              );
            },
            child: Text(
              'VIEW',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: state.isOnline
                    ? const Color(0xFF1B5E20)
                    : const Color(0xFFE65100),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 6. SCREEN 1: LOGIN SCREEN
// ============================================================================

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController(text: '9876543210');
  final _passwordController = TextEditingController(text: '1234');

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);
    final loc = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F5),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.health_and_safety,
                  size: 56,
                  color: Color(0xFF1B4D3E),
                ),
                const SizedBox(height: 12),
                Text(
                  loc.translate('loginTitle'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A231E),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  loc.translate('loginSubtitle'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF5A6660),
                  ),
                ),
                const SizedBox(height: 32),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          controller: _usernameController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: loc.translate('username'),
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: loc.translate('password'),
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1B4D3E),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MainNavigationShell(),
                              ),
                            );
                          },
                          child: Text(
                            loc.translate('login'),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceChip(
                      label: const Text('English'),
                      selected: state.locale.languageCode == 'en',
                      onSelected: (_) => state.setLanguage(const Locale('en')),
                    ),
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: const Text('हिन्दी'),
                      selected: state.locale.languageCode == 'hi',
                      onSelected: (_) => state.setLanguage(const Locale('hi')),
                    ),
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: const Text('मराठी'),
                      selected: state.locale.languageCode == 'mr',
                      onSelected: (_) => state.setLanguage(const Locale('mr')),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  loc.translate('veterinaryNotice'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF7A8780),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// 7. NAVIGATION SHELL
// ============================================================================

class MainNavigationShell extends StatefulWidget {
  const MainNavigationShell({super.key});

  @override
  State<MainNavigationShell> createState() => _MainNavigationShellState();
}

class _MainNavigationShellState extends State<MainNavigationShell> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    FarmDashboardScreen(),
    CowListScreen(),
    AlertsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(loc.translate('appTitle'))),
      body: SafeArea(
        child: Column(
          children: [
            const SyncStatusBanner(),
            Expanded(
              child: IndexedStack(index: _currentIndex, children: _screens),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1B4D3E),
        unselectedItemColor: const Color(0xFF5A6660),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.dashboard_outlined),
            activeIcon: const Icon(Icons.dashboard),
            label: loc.translate('dashboard'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.pets_outlined),
            activeIcon: const Icon(Icons.pets),
            label: loc.translate('cows'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.warning_amber_outlined),
            activeIcon: const Icon(Icons.warning_amber),
            label: loc.translate('alerts'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            activeIcon: const Icon(Icons.settings),
            label: loc.translate('settings'),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 8. DASHBOARD SCREEN
// ============================================================================

class FarmDashboardScreen extends StatelessWidget {
  const FarmDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);
    final loc = AppLocalizations.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.translate('herdStatus'),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  title: loc.translate('totalCows'),
                  value: '${state.cows.length}',
                  color: const Color(0xFF1B4D3E),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _StatCard(
                  title: loc.translate('highRisk'),
                  value: '${state.highRiskCount}',
                  color: const Color(0xFFC62828),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _StatCard(
                  title: loc.translate('moderateRisk'),
                  value: '${state.moderateRiskCount}',
                  color: const Color(0xFFE65100),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            loc.translate('attentionRequired'),
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          ...state.cows
              .where((c) => c.currentRisk != RiskLevel.low)
              .map((cow) => _CowTile(cow: cow)),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const _StatCard({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11, color: Color(0xFF5A6660)),
            ),
          ],
        ),
      ),
    );
  }
}

class _CowTile extends StatelessWidget {
  final CowModel cow;

  const _CowTile({required this.cow});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(
          'Tag: ${cow.tagNumber}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '${cow.breed} • ${cow.ageYears} ${loc.translate('years')}',
        ),
        trailing: RiskBadge(riskLevel: cow.currentRisk),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => CowDetailScreen(cowId: cow.id)),
          );
        },
      ),
    );
  }
}

// ============================================================================
// 9. APP SCREENS (COW LIST, ALERTS, SETTINGS, DETAIL, SYNC)
// ============================================================================

class CowListScreen extends StatelessWidget {
  const CowListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.cows.length,
      itemBuilder: (context, index) => _CowTile(cow: state.cows[index]),
    );
  }
}

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.alerts.length,
      itemBuilder: (context, index) {
        final alert = state.alerts[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 8),
          child: ListTile(
            title: Text(
              'Alert: Tag ${alert.tagNumber}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(alert.summary),
            trailing: RiskBadge(riskLevel: alert.riskLevel),
          ),
        );
      },
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);
    final loc = AppLocalizations.of(context);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SwitchListTile(
          title: Text(loc.translate('online')),
          value: state.isOnline,
          onChanged: (val) => state.toggleNetwork(val),
        ),
        const Divider(),
        ListTile(
          title: Text(loc.translate('logout')),
          trailing: const Icon(Icons.logout),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen()),
            );
          },
        ),
      ],
    );
  }
}

class CowDetailScreen extends StatelessWidget {
  final String cowId;

  const CowDetailScreen({super.key, required this.cowId});

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);
    final loc = AppLocalizations.of(context);
    final cow = state.cows.firstWhere((c) => c.id == cowId);
    final reading = state.getLatestReadingForCow(cowId);

    return Scaffold(
      appBar: AppBar(title: Text('Cow ${cow.tagNumber}')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tag: ${cow.tagNumber}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RiskBadge(riskLevel: cow.currentRisk),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text('${loc.translate('breed')}: ${cow.breed}'),
                    Text(
                      '${loc.translate('age')}: ${cow.ageYears} ${loc.translate('years')}',
                    ),
                    Text(
                      '${loc.translate('lactation')}: Month ${cow.lactationMonth}',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              loc.translate('liveReadings'),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: Text(loc.translate('conductivity')),
                trailing: Text(
                  '${reading.milkConductivity} mS/cm',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: Text(loc.translate('temperature')),
                trailing: Text(
                  '${reading.milkTemperature} °C',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SyncStatusScreen extends StatelessWidget {
  const SyncStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppStateProvider.of(context);
    final loc = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(loc.translate('syncStatus'))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              title: Text(loc.translate('pendingUploads')),
              trailing: Text(
                '${state.pendingSyncCount}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1B4D3E),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            onPressed: state.isOnline ? () => state.triggerSync() : null,
            child: Text(loc.translate('syncNow')),
          ),
        ],
      ),
    );
  }
}
