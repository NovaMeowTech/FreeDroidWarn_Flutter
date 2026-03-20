import 'package:flutter/widgets.dart';

/// Holds the three localizable strings used in the FreeDroidWarn dialog.
class FreeDroidWarnStrings {
  final String warning;
  final String details;
  final String solution;

  const FreeDroidWarnStrings({
    required this.warning,
    required this.details,
    required this.solution,
  });
}

/// Provides translated strings for the FreeDroidWarn dialog based on the
/// device locale obtained from [context].
///
/// Falls back to English when the device language is not supported.
class FreeDroidWarnLocalizations {
  static const _strings = <String, FreeDroidWarnStrings>{
    'en': FreeDroidWarnStrings(
      warning:
          'Google has announced that, starting in 2026/2027, all apps on '
          'certified Android devices will require the developer to submit '
          'personal identity details directly to Google. Since the developers '
          'of this app do not agree to this requirement, this app will no '
          'longer work on certified Android devices after that time.',
      details: 'Details',
      solution: 'Solution',
    ),
    'ar': FreeDroidWarnStrings(
      warning:
          'أعلنت Google أنه ابتداءً من عام 2026/2027، ستتطلب جميع التطبيقات '
          'على الأجهزة المعتمدة من Android من المطورين تقديم معلومات هويتهم '
          'الشخصية مباشرةً إلى Google. بما أن مطوري هذا التطبيق لا يوافقون '
          'على هذا الشرط، فلن يعمل هذا التطبيق على أجهزة Android المعتمدة '
          'بعد ذلك الوقت.',
      details: 'تفاصيل',
      solution: 'حل',
    ),
    'cs': FreeDroidWarnStrings(
      warning:
          'Společnost Google oznámila, že od roku 2026/2027 budou všechny '
          'aplikace na certifikovaných zařízeních Android vyžadovat, aby '
          'vývojář odeslal své osobní identifikační údaje přímo společnosti '
          'Google. Jelikož vývojáři této aplikace s tímto požadavkem '
          'nesouhlasí, aplikace po tomto datu přestane na certifikovaných '
          'zařízeních Android fungovat.',
      details: 'Podrobnosti',
      solution: 'Řešení',
    ),
    'de': FreeDroidWarnStrings(
      warning:
          'Google hat angekündigt, dass ab 2026/2027 alle Apps auf '
          'zertifizierten Android-Geräten nur noch funktionieren, wenn die '
          'Entwickler ihre persönlichen Identitätsdaten direkt an Google '
          'übermitteln. Da die Entwickler dieser App dieser Anforderung nicht '
          'zustimmen, wird diese App ab diesem Zeitpunkt auf zertifizierten '
          'Android-Geräten nicht mehr funktionieren.',
      details: 'Details',
      solution: 'Lösung',
    ),
    'el': FreeDroidWarnStrings(
      warning:
          'Η Google ανακοίνωσε ότι από το 2026/2027 όλες οι εφαρμογές σε '
          'πιστοποιημένες Android συσκευές θα απαιτούν από τον '
          'προγραμματιστή να υποβάλλει προσωπικά στοιχεία ταυτότητας '
          'απευθείας στην Google. Δεδομένου ότι οι προγραμματιστές αυτής '
          'της εφαρμογής δεν συμφωνούν με αυτήν την απαίτηση, η εφαρμογή '
          'δεν θα λειτουργεί πλέον σε πιστοποιημένες συσκευές Android μετά '
          'από αυτό το χρονικό διάστημα.',
      details: 'Λεπτομέριες',
      solution: 'Λύση',
    ),
    'es': FreeDroidWarnStrings(
      warning:
          'Google ha anunciado que, a partir de 2026/2027, todas las '
          'aplicaciones en dispositivos Android certificados requerirán que '
          'los desarrolladores envíen sus datos personales de identidad '
          'directamente a Google. Como los desarrolladores de esta aplicación '
          'no están de acuerdo con este requisito, la aplicación dejará de '
          'funcionar en dispositivos Android certificados después de esa '
          'fecha.',
      details: 'Detalles',
      solution: 'Solución',
    ),
    'fr': FreeDroidWarnStrings(
      warning:
          "Google a annoncé qu'à partir de 2026/2027, toutes les applications "
          'sur les appareils Android certifiés exigeront que les développeurs '
          "transmettent leurs informations d'identité personnelles directement "
          "à Google. Comme les développeurs de cette application n'acceptent "
          'pas cette exigence, l\'application cessera de fonctionner sur les '
          'appareils Android certifiés après cette date.',
      details: 'Détails',
      solution: 'Solution',
    ),
    'hi': FreeDroidWarnStrings(
      warning:
          'Google ने घोषणा की है कि 2026/2027 से, प्रमाणित Android डिवाइसों '
          'पर सभी ऐप्स के लिए डेवलपर्स को अपनी व्यक्तिगत पहचान संबंधी '
          'जानकारी सीधे Google को जमा करनी होगी। चूँकि इस ऐप के डेवलपर्स '
          'इस आवश्यकता से सहमत नहीं हैं, यह ऐप उस समय के बाद प्रमाणित '
          'Android डिवाइसों पर काम नहीं करेगा।',
      details: 'विवरण',
      solution: 'समाधान',
    ),
    'hu': FreeDroidWarnStrings(
      warning:
          'A Google bejelentette, hogy 2026/2027-től minden alkalmazás a '
          'hitelesített Android-eszközökön meg fogja követelni, hogy a '
          'fejlesztők személyes azonosító adataikat közvetlenül a Google-nek '
          'adják át. Mivel ennek az alkalmazásnak a fejlesztői nem értenek '
          'egyet ezzel a követelménnyel, az alkalmazás ezen időpont után nem '
          'fog működni a hitelesített Android-eszközökön.',
      details: 'Részletek',
      solution: 'Megoldás',
    ),
    'id': FreeDroidWarnStrings(
      warning:
          'Google telah mengumumkan bahwa mulai tahun 2026/2027, semua '
          'aplikasi pada perangkat Android bersertifikat akan mewajibkan '
          'pengembang untuk menyerahkan data identitas pribadi mereka langsung '
          'ke Google. Karena pengembang aplikasi ini tidak setuju dengan '
          'persyaratan tersebut, aplikasi ini tidak akan berfungsi lagi pada '
          'perangkat Android bersertifikat setelah waktu itu.',
      details: 'Detail',
      solution: 'Solusi',
    ),
    'it': FreeDroidWarnStrings(
      warning:
          'Google ha annunciato che, a partire dal 2026/2027, tutte le app '
          'sui dispositivi Android certificati richiederanno agli sviluppatori '
          'di fornire i propri dati personali di identità direttamente a '
          'Google. Poiché gli sviluppatori di questa app non accettano tale '
          'requisito, l\'app smetterà di funzionare sui dispositivi Android '
          'certificati dopo quella data.',
      details: 'Dettagli',
      solution: 'Soluzione',
    ),
    'ja': FreeDroidWarnStrings(
      warning:
          'Google は、2026/2027 年から、認定 Android デバイス上のすべてのアプリについて、'
          '開発者が個人の身元情報を直接 Google に提出することを必須にすると発表しました。'
          '本アプリの開発者はこの要件に同意していないため、このアプリはその時点以降、'
          '認定 Android デバイス上で動作しなくなります。',
      details: '詳細',
      solution: '対策',
    ),
    'ko': FreeDroidWarnStrings(
      warning:
          'Google은 2026/2027년부터 인증된 Android 기기에서 모든 앱이 개발자가 본인의 '
          '개인 신원 정보를 Google에 직접 제출해야 한다고 발표했습니다. 이 앱의 개발자들은 '
          '해당 요구 사항에 동의하지 않으므로, 이 앱은 그 시점 이후 인증된 Android 기기에서 '
          '더 이상 작동하지 않습니다.',
      details: '자세히',
      solution: '해결책',
    ),
    'nl': FreeDroidWarnStrings(
      warning:
          'Google heeft aangekondigd dat vanaf 2026/2027 alle apps op '
          'gecertificeerde Android-apparaten vereisen dat de ontwikkelaar '
          'persoonlijke identificatiegegevens rechtstreeks aan Google verstrekt. '
          'Aangezien de ontwikkelaars van deze app niet akkoord gaan met deze '
          'vereiste, zal deze app na die datum niet meer werken op '
          'gecertificeerde Android-apparaten.',
      details: 'Details',
      solution: 'Oplossing',
    ),
    'pl': FreeDroidWarnStrings(
      warning:
          'Google ogłosiło, że od 2026/2027 roku wszystkie aplikacje na '
          'certyfikowanych urządzeniach z Androidem będą wymagały od '
          'deweloperów przekazania swoich danych osobowych dotyczących '
          'tożsamości bezpośrednio do Google. Ponieważ deweloperzy tej '
          'aplikacji nie zgadzają się na ten wymóg, aplikacja przestanie '
          'działać na certyfikowanych urządzeniach z Androidem po tym '
          'terminie.',
      details: 'Szczegóły',
      solution: 'Rozwiązanie',
    ),
    'pt': FreeDroidWarnStrings(
      warning:
          'O Google anunciou que, a partir de 2026/2027, todos os aplicativos '
          'em dispositivos Android certificados exigirão que os desenvolvedores '
          'forneçam seus dados pessoais de identidade diretamente ao Google. '
          'Como os desenvolvedores deste aplicativo não concordam com esse '
          'requisito, o aplicativo deixará de funcionar em dispositivos Android '
          'certificados após essa data.',
      details: 'Detalhes',
      solution: 'Solução',
    ),
    'ru': FreeDroidWarnStrings(
      warning:
          'Google объявила, что начиная с 2026/2027 года все приложения на '
          'сертифицированных устройствах Android будут требовать от '
          'разработчиков предоставления своих личных данных для идентификации '
          'напрямую Google. Так как разработчики этого приложения не согласны '
          'с этим требованием, приложение перестанет работать на '
          'сертифицированных устройствах Android после этого времени.',
      details: 'Подробнее',
      solution: 'Решение',
    ),
    'sk': FreeDroidWarnStrings(
      warning:
          'Google oznámil, že od roku 2026/2027 budú všetky aplikácie na '
          'certifikovaných zariadeniach s Androidom vyžadovať, aby vývojári '
          'odovzdali svoje osobné identifikačné údaje priamo Googlu. Keďže '
          'vývojári tejto aplikácie s touto požiadavkou nesúhlasia, aplikácia '
          'po tomto termíne na certifikovaných zariadeniach s Androidom '
          'prestane fungovať.',
      details: 'Podrobnosti',
      solution: 'Riešenie',
    ),
    'sv': FreeDroidWarnStrings(
      warning:
          'Google har meddelat att från och med 2026/2027 kommer alla appar '
          'på certifierade Android-enheter att kräva att utvecklarna lämnar '
          'sina personliga identitetsuppgifter direkt till Google. Eftersom '
          'utvecklarna av denna app inte accepterar detta krav kommer appen '
          'inte längre att fungera på certifierade Android-enheter efter den '
          'tiden.',
      details: 'Detaljer',
      solution: 'Lösning',
    ),
    'tr': FreeDroidWarnStrings(
      warning:
          "Google, 2026/2027 yılından itibaren sertifikalı Android "
          "cihazlardaki tüm uygulamaların, geliştiricilerin kişisel kimlik "
          "bilgilerini doğrudan Google'a göndermesini gerektireceğini duyurdu. "
          "Bu uygulamanın geliştiricileri bu gerekliliği kabul etmediğinden, "
          "uygulama bu tarihten sonra sertifikalı Android cihazlarda "
          "çalışmayacaktır.",
      details: 'Detaylar',
      solution: 'Çözüm',
    ),
  };

  /// Returns translated strings for the language of [context]'s current
  /// locale, falling back to English if the language is not supported.
  static FreeDroidWarnStrings of(BuildContext context) {
    final languageCode = Localizations.maybeLocaleOf(context)?.languageCode;
    return _strings[languageCode] ?? _strings['en']!;
  }
}
