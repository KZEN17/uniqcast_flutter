import 'package:riverpod/riverpod.dart';
import '../services/api_service.dart';


final apiServiceProvider = Provider((ref) => APIService(
  baseUrl: 'https://tvprofil.net/xmltv/data/epg_tvprofil.net.xml',
));

