// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Đăng nhập`
  String get signIn {
    return Intl.message(
      'Đăng nhập',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Số định danh`
  String get username {
    return Intl.message(
      'Số định danh',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập {anything}`
  String enterAnything(Object anything) {
    return Intl.message(
      'Nhập $anything',
      name: 'enterAnything',
      desc: '',
      args: [anything],
    );
  }

  /// `Nhập {anything} để tiếp tục`
  String signInFieldWarning(Object anything) {
    return Intl.message(
      'Nhập $anything để tiếp tục',
      name: 'signInFieldWarning',
      desc: '',
      args: [anything],
    );
  }

  /// `Kích hoạt tài khoản`
  String get activateAccount {
    return Intl.message(
      'Kích hoạt tài khoản',
      name: 'activateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Cá nhân`
  String get personal {
    return Intl.message(
      'Cá nhân',
      name: 'personal',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử giao dịch`
  String get transactionHistory {
    return Intl.message(
      'Lịch sử giao dịch',
      name: 'transactionHistory',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận ký`
  String get transactions {
    return Intl.message(
      'Xác nhận ký',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Chứng thư số`
  String get certificate {
    return Intl.message(
      'Chứng thư số',
      name: 'certificate',
      desc: '',
      args: [],
    );
  }

  /// `Loại tài khoản`
  String get accountType {
    return Intl.message(
      'Loại tài khoản',
      name: 'accountType',
      desc: '',
      args: [],
    );
  }

  /// `CCCD/CMND`
  String get identification {
    return Intl.message(
      'CCCD/CMND',
      name: 'identification',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get phone {
    return Intl.message(
      'Số điện thoại',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ email`
  String get email {
    return Intl.message(
      'Địa chỉ email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Giới tính`
  String get gender {
    return Intl.message(
      'Giới tính',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ`
  String get address {
    return Intl.message(
      'Địa chỉ',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Ngày sinh`
  String get dateOfBirth {
    return Intl.message(
      'Ngày sinh',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get signOut {
    return Intl.message(
      'Đăng xuất',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin giao dịch`
  String get transactionDetail {
    return Intl.message(
      'Thông tin giao dịch',
      name: 'transactionDetail',
      desc: '',
      args: [],
    );
  }

  /// `Ứng dụng liên kết`
  String get affiliateApplication {
    return Intl.message(
      'Ứng dụng liên kết',
      name: 'affiliateApplication',
      desc: '',
      args: [],
    );
  }

  /// `Loại giao dịch`
  String get transactionType {
    return Intl.message(
      'Loại giao dịch',
      name: 'transactionType',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian khởi tạo`
  String get initialTime {
    return Intl.message(
      'Thời gian khởi tạo',
      name: 'initialTime',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian kết thúc`
  String get finishTime {
    return Intl.message(
      'Thời gian kết thúc',
      name: 'finishTime',
      desc: '',
      args: [],
    );
  }

  /// `Quay lại`
  String get back {
    return Intl.message(
      'Quay lại',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Không xác định`
  String get unknown {
    return Intl.message(
      'Không xác định',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Ký thành công`
  String get signedSuccess {
    return Intl.message(
      'Ký thành công',
      name: 'signedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Hết hạn`
  String get expired {
    return Intl.message(
      'Hết hạn',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Hủy bỏ`
  String get canceled {
    return Intl.message(
      'Hủy bỏ',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Trình ký`
  String get signer {
    return Intl.message(
      'Trình ký',
      name: 'signer',
      desc: '',
      args: [],
    );
  }

  /// `Ký`
  String get sign {
    return Intl.message(
      'Ký',
      name: 'sign',
      desc: '',
      args: [],
    );
  }

  /// `Ký thất bại`
  String get signFailed {
    return Intl.message(
      'Ký thất bại',
      name: 'signFailed',
      desc: '',
      args: [],
    );
  }

  /// `Ký hash`
  String get hashSign {
    return Intl.message(
      'Ký hash',
      name: 'hashSign',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực`
  String get authentication {
    return Intl.message(
      'Xác thực',
      name: 'authentication',
      desc: '',
      args: [],
    );
  }

  /// `Nghiệm thu`
  String get acceptance {
    return Intl.message(
      'Nghiệm thu',
      name: 'acceptance',
      desc: '',
      args: [],
    );
  }

  /// `Kích hoạt thành công`
  String get activateSuccessTitle {
    return Intl.message(
      'Kích hoạt thành công',
      name: 'activateSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Chứng thư số của bạn đã được kích hoạt thành công.`
  String get activateSuccessDesc {
    return Intl.message(
      'Chứng thư số của bạn đã được kích hoạt thành công.',
      name: 'activateSuccessDesc',
      desc: '',
      args: [],
    );
  }

  /// `Ký biên bản nghiệm thu`
  String get activateButton {
    return Intl.message(
      'Ký biên bản nghiệm thu',
      name: 'activateButton',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã PIN để kích hoạt cặp khoá ký số`
  String get pinDialogTitle {
    return Intl.message(
      'Nhập mã PIN để kích hoạt cặp khoá ký số',
      name: 'pinDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get pinDialogButton {
    return Intl.message(
      'Xác nhận',
      name: 'pinDialogButton',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu xác thực`
  String get biometricDialogTitle {
    return Intl.message(
      'Yêu cầu xác thực',
      name: 'biometricDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực bằng sinh trắc học`
  String get biometricDialogButton {
    return Intl.message(
      'Xác thực bằng sinh trắc học',
      name: 'biometricDialogButton',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng sử dụng dấu vân tay để xác nhận`
  String get fingerprintDialogDesc {
    return Intl.message(
      'Vui lòng sử dụng dấu vân tay để xác nhận',
      name: 'fingerprintDialogDesc',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng sử dụng FaceID để xác nhận`
  String get faceIDDialogDesc {
    return Intl.message(
      'Vui lòng sử dụng FaceID để xác nhận',
      name: 'faceIDDialogDesc',
      desc: '',
      args: [],
    );
  }

  /// `Kích hoạt xác thực sinh trắc học`
  String get activeBiometricAuthentication {
    return Intl.message(
      'Kích hoạt xác thực sinh trắc học',
      name: 'activeBiometricAuthentication',
      desc: '',
      args: [],
    );
  }

  /// `Trạng thái`
  String get status {
    return Intl.message(
      'Trạng thái',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Đã kích hoạt`
  String get activated {
    return Intl.message(
      'Đã kích hoạt',
      name: 'activated',
      desc: '',
      args: [],
    );
  }

  /// `Chờ tạo cặp khóa`
  String get waitingGenerateKeyPair {
    return Intl.message(
      'Chờ tạo cặp khóa',
      name: 'waitingGenerateKeyPair',
      desc: '',
      args: [],
    );
  }

  /// `Chờ kích hoạt`
  String get waitingActivate {
    return Intl.message(
      'Chờ kích hoạt',
      name: 'waitingActivate',
      desc: '',
      args: [],
    );
  }

  /// `Chờ ký Biên bản nghiệm thu`
  String get waitingSignAcceptanceMinutes {
    return Intl.message(
      'Chờ ký Biên bản nghiệm thu',
      name: 'waitingSignAcceptanceMinutes',
      desc: '',
      args: [],
    );
  }

  /// `Chờ tạo chứng chỉ`
  String get waitingGenerateCertificate {
    return Intl.message(
      'Chờ tạo chứng chỉ',
      name: 'waitingGenerateCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Tạm dừng`
  String get suspended {
    return Intl.message(
      'Tạm dừng',
      name: 'suspended',
      desc: '',
      args: [],
    );
  }

  /// `Đã thu hồi`
  String get revoked {
    return Intl.message(
      'Đã thu hồi',
      name: 'revoked',
      desc: '',
      args: [],
    );
  }

  /// `Kích hoạt cặp khóa`
  String get activateKeyPair {
    return Intl.message(
      'Kích hoạt cặp khóa',
      name: 'activateKeyPair',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có giao dịch`
  String get haveNotYetTransaction {
    return Intl.message(
      'Chưa có giao dịch',
      name: 'haveNotYetTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mã PIN để xác nhận giao dịch.`
  String get pinDialogConfirmSignDigitalTitle {
    return Intl.message(
      'Vui lòng nhập mã PIN để xác nhận giao dịch.',
      name: 'pinDialogConfirmSignDigitalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận hủy`
  String get confirmCancel {
    return Intl.message(
      'Xác nhận hủy',
      name: 'confirmCancel',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mã PIN để hủy giao dịch`
  String get pinDialogConfirmCancel {
    return Intl.message(
      'Vui lòng nhập mã PIN để hủy giao dịch',
      name: 'pinDialogConfirmCancel',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian yêu cầu`
  String get requestTime {
    return Intl.message(
      'Thời gian yêu cầu',
      name: 'requestTime',
      desc: '',
      args: [],
    );
  }

  /// `Tên ứng dụng liên kết`
  String get affiliateAppName {
    return Intl.message(
      'Tên ứng dụng liên kết',
      name: 'affiliateAppName',
      desc: '',
      args: [],
    );
  }

  /// `Tên file`
  String get fileName {
    return Intl.message(
      'Tên file',
      name: 'fileName',
      desc: '',
      args: [],
    );
  }

  /// `Mô tả giao dịch`
  String get transactionDesc {
    return Intl.message(
      'Mô tả giao dịch',
      name: 'transactionDesc',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận ký số`
  String get confirmTransaction {
    return Intl.message(
      'Xác nhận ký số',
      name: 'confirmTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Xem tài liệu`
  String get documentPreview {
    return Intl.message(
      'Xem tài liệu',
      name: 'documentPreview',
      desc: '',
      args: [],
    );
  }

  /// `Hủy giao dịch`
  String get cancelTransaction {
    return Intl.message(
      'Hủy giao dịch',
      name: 'cancelTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách tài liệu cần ký`
  String get listOfDocumentToBeSigned {
    return Intl.message(
      'Danh sách tài liệu cần ký',
      name: 'listOfDocumentToBeSigned',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mã PIN gồm 6 số.`
  String get pinValidateSixDigit {
    return Intl.message(
      'Vui lòng nhập mã PIN gồm 6 số.',
      name: 'pinValidateSixDigit',
      desc: '',
      args: [],
    );
  }

  /// `Mã PIN không được là dãy số liên tiếp.`
  String get pinValidateSequence {
    return Intl.message(
      'Mã PIN không được là dãy số liên tiếp.',
      name: 'pinValidateSequence',
      desc: '',
      args: [],
    );
  }

  /// `Mã PIN không được chứa dãy số giống nhau.`
  String get pinValidateTheSame {
    return Intl.message(
      'Mã PIN không được chứa dãy số giống nhau.',
      name: 'pinValidateTheSame',
      desc: '',
      args: [],
    );
  }

  /// `Mã PIN không khớp`
  String get pinValidateNotMatch {
    return Intl.message(
      'Mã PIN không khớp',
      name: 'pinValidateNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Bước {step}`
  String noStep(Object step) {
    return Intl.message(
      'Bước $step',
      name: 'noStep',
      desc: '',
      args: [step],
    );
  }

  /// `Nhập thông tin tài khoản`
  String get enterAccountInformation {
    return Intl.message(
      'Nhập thông tin tài khoản',
      name: 'enterAccountInformation',
      desc: '',
      args: [],
    );
  }

  /// `Mã kích hoạt`
  String get activateCode {
    return Intl.message(
      'Mã kích hoạt',
      name: 'activateCode',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận mật khẩu`
  String get confirmPassword {
    return Intl.message(
      'Xác nhận mật khẩu',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp theo`
  String get next {
    return Intl.message(
      'Tiếp theo',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không khớp`
  String get passwordNotMatch {
    return Intl.message(
      'Mật khẩu không khớp',
      name: 'passwordNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Tạo mã PIN`
  String get createPinTitle {
    return Intl.message(
      'Tạo mã PIN',
      name: 'createPinTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp theo: Tạo mã PIN`
  String get nextStepPin {
    return Intl.message(
      'Tiếp theo: Tạo mã PIN',
      name: 'nextStepPin',
      desc: '',
      args: [],
    );
  }

  /// `Khởi tạo mã PIN`
  String get initializePIN {
    return Intl.message(
      'Khởi tạo mã PIN',
      name: 'initializePIN',
      desc: '',
      args: [],
    );
  }

  /// `Mã PIN cá nhân được sử dụng để bảo vệ chữ ký số của bạn.`
  String get initializePINTitle {
    return Intl.message(
      'Mã PIN cá nhân được sử dụng để bảo vệ chữ ký số của bạn.',
      name: 'initializePINTitle',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận mã PIN`
  String get confirmPINTitle {
    return Intl.message(
      'Xác nhận mã PIN',
      name: 'confirmPINTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mã PIN để xác nhận`
  String get confirmPINDesc {
    return Intl.message(
      'Nhập lại mã PIN để xác nhận',
      name: 'confirmPINDesc',
      desc: '',
      args: [],
    );
  }

  /// `Cảnh báo`
  String get warning {
    return Intl.message(
      'Cảnh báo',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get Notice {
    return Intl.message(
      'Thông báo',
      name: 'Notice',
      desc: '',
      args: [],
    );
  }

  /// `Sử dụng sinh trắc học để tăng cường tính bảo mật, bạn có đồng ý?`
  String get activateBiometricDesc {
    return Intl.message(
      'Sử dụng sinh trắc học để tăng cường tính bảo mật, bạn có đồng ý?',
      name: 'activateBiometricDesc',
      desc: '',
      args: [],
    );
  }

  /// `Từ chối`
  String get reject {
    return Intl.message(
      'Từ chối',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `Đồng ý`
  String get agree {
    return Intl.message(
      'Đồng ý',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản chưa được kích hoạt cặp khóa`
  String get activateTransactionNotSignKeypair {
    return Intl.message(
      'Tài khoản chưa được kích hoạt cặp khóa',
      name: 'activateTransactionNotSignKeypair',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản chưa ký biên bản nghiệm thu`
  String get activateTransactionNotSignAcceptanceMinutes {
    return Intl.message(
      'Tài khoản chưa ký biên bản nghiệm thu',
      name: 'activateTransactionNotSignAcceptanceMinutes',
      desc: '',
      args: [],
    );
  }

  /// `Ký biên bản nghiệm thu`
  String get signBbnt {
    return Intl.message(
      'Ký biên bản nghiệm thu',
      name: 'signBbnt',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp theo: Ký biên bản nghiệm thu`
  String get nextSignBbnt {
    return Intl.message(
      'Tiếp theo: Ký biên bản nghiệm thu',
      name: 'nextSignBbnt',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian ký còn lại`
  String get remainTimeToSign {
    return Intl.message(
      'Thời gian ký còn lại',
      name: 'remainTimeToSign',
      desc: '',
      args: [],
    );
  }

  /// `Kích thước`
  String get size {
    return Intl.message(
      'Kích thước',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian`
  String get time {
    return Intl.message(
      'Thời gian',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Xem thông tin giao dịch`
  String get viewTransactionInfo {
    return Intl.message(
      'Xem thông tin giao dịch',
      name: 'viewTransactionInfo',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng sử dụng sinh trắc học để {purpose}`
  String requestBiometricDesc(Object purpose) {
    return Intl.message(
      'Vui lòng sử dụng sinh trắc học để $purpose',
      name: 'requestBiometricDesc',
      desc: '',
      args: [purpose],
    );
  }

  /// `tiếp tục`
  String get Continue {
    return Intl.message(
      'tiếp tục',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Không thể xác thực ứng dụng.`
  String get serviceCannotVerifyApp {
    return Intl.message(
      'Không thể xác thực ứng dụng.',
      name: 'serviceCannotVerifyApp',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực App lỗi.`
  String get serviceVerifyAppFail {
    return Intl.message(
      'Xác thực App lỗi.',
      name: 'serviceVerifyAppFail',
      desc: '',
      args: [],
    );
  }

  /// `Đã có lỗi xảy ra. Vui lòng thử lại sau.`
  String get serviceSomethingWentWrong {
    return Intl.message(
      'Đã có lỗi xảy ra. Vui lòng thử lại sau.',
      name: 'serviceSomethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi kết nối. Vui lòng kiểm tra lại kết nối mạng.`
  String get serviceLostConnection {
    return Intl.message(
      'Lỗi kết nối. Vui lòng kiểm tra lại kết nối mạng.',
      name: 'serviceLostConnection',
      desc: '',
      args: [],
    );
  }

  /// `Phiên đã hết hạn. Vui lòng đăng nhập lại.`
  String get serviceExpireToken {
    return Intl.message(
      'Phiên đã hết hạn. Vui lòng đăng nhập lại.',
      name: 'serviceExpireToken',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy accessToken.`
  String get serviceNoAccessTokenFound {
    return Intl.message(
      'Không tìm thấy accessToken.',
      name: 'serviceNoAccessTokenFound',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy thiết bị.`
  String get serviceNotFoundDevice {
    return Intl.message(
      'Không tìm thấy thiết bị.',
      name: 'serviceNotFoundDevice',
      desc: '',
      args: [],
    );
  }

  /// `Không thể đăng ký nhận thông báo.`
  String get serviceNotFoundFCMToken {
    return Intl.message(
      'Không thể đăng ký nhận thông báo.',
      name: 'serviceNotFoundFCMToken',
      desc: '',
      args: [],
    );
  }

  /// `Thiết bị của bạn không đủ an toàn để khởi chạy ứng dụng VNPT SmartCA.`
  String get serviceJailbreak {
    return Intl.message(
      'Thiết bị của bạn không đủ an toàn để khởi chạy ứng dụng VNPT SmartCA.',
      name: 'serviceJailbreak',
      desc: '',
      args: [],
    );
  }

  /// `Nam`
  String get male {
    return Intl.message(
      'Nam',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Nữ`
  String get female {
    return Intl.message(
      'Nữ',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Doanh nghiệp`
  String get business {
    return Intl.message(
      'Doanh nghiệp',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `Cá nhân trong doanh nghiệp`
  String get personalInBusiness {
    return Intl.message(
      'Cá nhân trong doanh nghiệp',
      name: 'personalInBusiness',
      desc: '',
      args: [],
    );
  }

  /// `Ký số hoàn tất`
  String get signTransactionDone {
    return Intl.message(
      'Ký số hoàn tất',
      name: 'signTransactionDone',
      desc: '',
      args: [],
    );
  }

  /// `Đã hủy bỏ giao dịch`
  String get cancelTransactionDone {
    return Intl.message(
      'Đã hủy bỏ giao dịch',
      name: 'cancelTransactionDone',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử`
  String get history {
    return Intl.message(
      'Lịch sử',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `{anything}`
  String anything(Object anything) {
    return Intl.message(
      '$anything',
      name: 'anything',
      desc: '',
      args: [anything],
    );
  }

  /// `Token không hợp lệ.`
  String get invalidToken {
    return Intl.message(
      'Token không hợp lệ.',
      name: 'invalidToken',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy KAK.`
  String get KAKNotFound {
    return Intl.message(
      'Không tìm thấy KAK.',
      name: 'KAKNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Mã PIN không hợp lệ.`
  String get invalidPIN {
    return Intl.message(
      'Mã PIN không hợp lệ.',
      name: 'invalidPIN',
      desc: '',
      args: [],
    );
  }

  /// `Tính toán xác thực lỗi.`
  String get calAuthDataFail {
    return Intl.message(
      'Tính toán xác thực lỗi.',
      name: 'calAuthDataFail',
      desc: '',
      args: [],
    );
  }

  /// `Không thể lấy thông tin thiết bị.`
  String get cannotGetDeviceInfo {
    return Intl.message(
      'Không thể lấy thông tin thiết bị.',
      name: 'cannotGetDeviceInfo',
      desc: '',
      args: [],
    );
  }

  /// `Token đã hết hạn.`
  String get tokenExpired {
    return Intl.message(
      'Token đã hết hạn.',
      name: 'tokenExpired',
      desc: '',
      args: [],
    );
  }

  /// `Không thể ký khóa.`
  String get cannotSignKeyChallenge {
    return Intl.message(
      'Không thể ký khóa.',
      name: 'cannotSignKeyChallenge',
      desc: '',
      args: [],
    );
  }

  /// `PIN của bạn đã bị khóa do nhập sai nhiều lần.`
  String get serviceLockPINOverEnter {
    return Intl.message(
      'PIN của bạn đã bị khóa do nhập sai nhiều lần.',
      name: 'serviceLockPINOverEnter',
      desc: '',
      args: [],
    );
  }

  /// `Ký lỗi`
  String get signError {
    return Intl.message(
      'Ký lỗi',
      name: 'signError',
      desc: '',
      args: [],
    );
  }

  /// `Hủy bỏ lỗi`
  String get serviceRejectFail {
    return Intl.message(
      'Hủy bỏ lỗi',
      name: 'serviceRejectFail',
      desc: '',
      args: [],
    );
  }

  /// `Không tồn tại lịch sử giao dịch.`
  String get serviceNotExistedTransactionHis {
    return Intl.message(
      'Không tồn tại lịch sử giao dịch.',
      name: 'serviceNotExistedTransactionHis',
      desc: '',
      args: [],
    );
  }

  /// `Không tồn tại thông tin người dùng.`
  String get serviceNotExistedUserInfo {
    return Intl.message(
      'Không tồn tại thông tin người dùng.',
      name: 'serviceNotExistedUserInfo',
      desc: '',
      args: [],
    );
  }

  /// `Sinh khóa bảo vệ(KAK) không thành công.`
  String get serviceGenerateKAKFail {
    return Intl.message(
      'Sinh khóa bảo vệ(KAK) không thành công.',
      name: 'serviceGenerateKAKFail',
      desc: '',
      args: [],
    );
  }

  /// `Generating KAK`
  String get serviceGeneratingKAK {
    return Intl.message(
      'Generating KAK',
      name: 'serviceGeneratingKAK',
      desc: '',
      args: [],
    );
  }

  /// `Sử dụng 8 đến 30 ký tự, kết hợp chữ hoa, chữ thường, số và ký tự đặc biệt {pattern}`
  String strongPasswordValid(Object pattern) {
    return Intl.message(
      'Sử dụng 8 đến 30 ký tự, kết hợp chữ hoa, chữ thường, số và ký tự đặc biệt $pattern',
      name: 'strongPasswordValid',
      desc: '',
      args: [pattern],
    );
  }

  /// `Cài đặt chung`
  String get settings {
    return Intl.message(
      'Cài đặt chung',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Ngôn ngữ`
  String get language {
    return Intl.message(
      'Ngôn ngữ',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Việt`
  String get vietnamese {
    return Intl.message(
      'Tiếng Việt',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `Đã có phiên bản mới`
  String get updateAvailable {
    return Intl.message(
      'Đã có phiên bản mới',
      name: 'updateAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật`
  String get update {
    return Intl.message(
      'Cập nhật',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Để sau`
  String get maybeLater {
    return Intl.message(
      'Để sau',
      name: 'maybeLater',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật ứng dụng từ phiên bản {localVersion} lên {storeVersion}`
  String updateVersionMsg(Object localVersion, Object storeVersion) {
    return Intl.message(
      'Cập nhật ứng dụng từ phiên bản $localVersion lên $storeVersion',
      name: 'updateVersionMsg',
      desc: '',
      args: [localVersion, storeVersion],
    );
  }

  /// `Bạn đang sử dụng phiên bản mới nhất.`
  String get versionNewest {
    return Intl.message(
      'Bạn đang sử dụng phiên bản mới nhất.',
      name: 'versionNewest',
      desc: '',
      args: [],
    );
  }

  /// `VNPT SmartCA phiên bản {version}`
  String versionNumber(Object version) {
    return Intl.message(
      'VNPT SmartCA phiên bản $version',
      name: 'versionNumber',
      desc: '',
      args: [version],
    );
  }

  /// `Chủ thể`
  String get subject {
    return Intl.message(
      'Chủ thể',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `Nhà phát hành`
  String get issuer {
    return Intl.message(
      'Nhà phát hành',
      name: 'issuer',
      desc: '',
      args: [],
    );
  }

  /// `Số sê-ri`
  String get serial {
    return Intl.message(
      'Số sê-ri',
      name: 'serial',
      desc: '',
      args: [],
    );
  }

  /// `Hiệu lực`
  String get validity {
    return Intl.message(
      'Hiệu lực',
      name: 'validity',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc chắn muốn đăng xuất khỏi thiết bị này không?`
  String get signOutConfirm {
    return Intl.message(
      'Bạn có chắc chắn muốn đăng xuất khỏi thiết bị này không?',
      name: 'signOutConfirm',
      desc: '',
      args: [],
    );
  }

  /// `MST`
  String get taxCode {
    return Intl.message(
      'MST',
      name: 'taxCode',
      desc: '',
      args: [],
    );
  }

  /// `Đang lấy thông tin chứng thư...`
  String get gettingCert {
    return Intl.message(
      'Đang lấy thông tin chứng thư...',
      name: 'gettingCert',
      desc: '',
      args: [],
    );
  }

  /// `Đang kích hoạt chứng thư...`
  String get activingCert {
    return Intl.message(
      'Đang kích hoạt chứng thư...',
      name: 'activingCert',
      desc: '',
      args: [],
    );
  }

  /// `Đang xử lý, vui lòng đợi trong giây lát...`
  String get activingKey {
    return Intl.message(
      'Đang xử lý, vui lòng đợi trong giây lát...',
      name: 'activingKey',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp theo: Kích hoạt cặp khóa`
  String get nextAssignKey {
    return Intl.message(
      'Tiếp theo: Kích hoạt cặp khóa',
      name: 'nextAssignKey',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get changePassword {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Loại CTS`
  String get typeOfCertificate {
    return Intl.message(
      'Loại CTS',
      name: 'typeOfCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu cũ`
  String get oldPassword {
    return Intl.message(
      'Mật khẩu cũ',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới`
  String get newPassword {
    return Intl.message(
      'Mật khẩu mới',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận mật khẩu mới`
  String get confirmNewPassword {
    return Intl.message(
      'Xác nhận mật khẩu mới',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu đã thay đổi. Vui lòng đăng nhập lại.`
  String get noticeWhenPasswordChange {
    return Intl.message(
      'Mật khẩu đã thay đổi. Vui lòng đăng nhập lại.',
      name: 'noticeWhenPasswordChange',
      desc: '',
      args: [],
    );
  }

  /// `Đã sao chép.`
  String get copied {
    return Intl.message(
      'Đã sao chép.',
      name: 'copied',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới trùng với mật khẩu cũ.`
  String get passwordDuplicate {
    return Intl.message(
      'Mật khẩu mới trùng với mật khẩu cũ.',
      name: 'passwordDuplicate',
      desc: '',
      args: [],
    );
  }

  /// `Sai mật khẩu cũ.`
  String get oldPasswordWrong {
    return Intl.message(
      'Sai mật khẩu cũ.',
      name: 'oldPasswordWrong',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy thông tin người dùng, vui lòng tải lại dữ liệu bằng cách vuốt xuống màn hình.`
  String get noticeAfterConnectNetworkChangePassword {
    return Intl.message(
      'Không tìm thấy thông tin người dùng, vui lòng tải lại dữ liệu bằng cách vuốt xuống màn hình.',
      name: 'noticeAfterConnectNetworkChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Tổng đài CSKH`
  String get contactCustomerCare {
    return Intl.message(
      'Tổng đài CSKH',
      name: 'contactCustomerCare',
      desc: '',
      args: [],
    );
  }

  /// `Đóng`
  String get close {
    return Intl.message(
      'Đóng',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Đang tải...`
  String get loading {
    return Intl.message(
      'Đang tải...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Kéo lên để tải thêm`
  String get idleLoading {
    return Intl.message(
      'Kéo lên để tải thêm',
      name: 'idleLoading',
      desc: '',
      args: [],
    );
  }

  /// `Thả xuống để tải thêm`
  String get canLoading {
    return Intl.message(
      'Thả xuống để tải thêm',
      name: 'canLoading',
      desc: '',
      args: [],
    );
  }

  /// `Tôi đồng ý với `
  String get iAgreeWith {
    return Intl.message(
      'Tôi đồng ý với ',
      name: 'iAgreeWith',
      desc: '',
      args: [],
    );
  }

  /// `điều khoản sử dụng dịch vụ`
  String get termOfUseService {
    return Intl.message(
      'điều khoản sử dụng dịch vụ',
      name: 'termOfUseService',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có giao dịch cần xác nhận ký số.`
  String get emptyDescTransaction {
    return Intl.message(
      'Chưa có giao dịch cần xác nhận ký số.',
      name: 'emptyDescTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Đang xử lý, vui lòng đợi trong giây lát..`
  String get checkingInfor {
    return Intl.message(
      'Đang xử lý, vui lòng đợi trong giây lát..',
      name: 'checkingInfor',
      desc: '',
      args: [],
    );
  }

  /// `Đang lấy thông tin chứng thư`
  String get loadingCert {
    return Intl.message(
      'Đang lấy thông tin chứng thư',
      name: 'loadingCert',
      desc: '',
      args: [],
    );
  }

  /// `Đang xử lý, vui lòng đợi trong giây lát...`
  String get progressProcessing {
    return Intl.message(
      'Đang xử lý, vui lòng đợi trong giây lát...',
      name: 'progressProcessing',
      desc: '',
      args: [],
    );
  }

  /// `Hotline`
  String get hotline {
    return Intl.message(
      'Hotline',
      name: 'hotline',
      desc: '',
      args: [],
    );
  }

  /// `Chờ xác nhận`
  String get waitingForSignerConfirm {
    return Intl.message(
      'Chờ xác nhận',
      name: 'waitingForSignerConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Ngày giao dịch`
  String get transactionDate {
    return Intl.message(
      'Ngày giao dịch',
      name: 'transactionDate',
      desc: '',
      args: [],
    );
  }

  /// `Trạng thái`
  String get transactionStatus {
    return Intl.message(
      'Trạng thái',
      name: 'transactionStatus',
      desc: '',
      args: [],
    );
  }

  /// `Hiện tại ứng dụng chưa hỗ trợ xem trước định dạng `
  String get notSupportExt {
    return Intl.message(
      'Hiện tại ứng dụng chưa hỗ trợ xem trước định dạng ',
      name: 'notSupportExt',
      desc: '',
      args: [],
    );
  }

  /// `Tổng số: {total} kết quả`
  String totalRecord(Object total) {
    return Intl.message(
      'Tổng số: $total kết quả',
      name: 'totalRecord',
      desc: '',
      args: [total],
    );
  }

  /// `Tài khoản`
  String get account {
    return Intl.message(
      'Tài khoản',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Không có kết nối mạng.`
  String get noInternet {
    return Intl.message(
      'Không có kết nối mạng.',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian kết nối quá lâu.`
  String get connectTimeout {
    return Intl.message(
      'Thời gian kết nối quá lâu.',
      name: 'connectTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Không nhận dạng được dữ liệu JSON`
  String get unrecognized_json {
    return Intl.message(
      'Không nhận dạng được dữ liệu JSON',
      name: 'unrecognized_json',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đang chạy ứng dụng trên thiết bị ảo. Vui lòng cài đặt ứng dụng trên thiết bị thật.`
  String get notPhysicalDevice {
    return Intl.message(
      'Bạn đang chạy ứng dụng trên thiết bị ảo. Vui lòng cài đặt ứng dụng trên thiết bị thật.',
      name: 'notPhysicalDevice',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản của bạn chưa có trên hệ thống. Vui lòng đăng ký tích hợp để sử dụng SDK.`
  String get partnerNotRegister {
    return Intl.message(
      'Tài khoản của bạn chưa có trên hệ thống. Vui lòng đăng ký tích hợp để sử dụng SDK.',
      name: 'partnerNotRegister',
      desc: '',
      args: [],
    );
  }

  /// `Mã PIN`
  String get pinCode {
    return Intl.message(
      'Mã PIN',
      name: 'pinCode',
      desc: '',
      args: [],
    );
  }

  /// `Có lỗi trong quá trình làm mới token.`
  String get refreshTokenFailed {
    return Intl.message(
      'Có lỗi trong quá trình làm mới token.',
      name: 'refreshTokenFailed',
      desc: '',
      args: [],
    );
  }

  /// `Lấy thông tin đăng nhập thất bại.`
  String get getAuthenticationFailed {
    return Intl.message(
      'Lấy thông tin đăng nhập thất bại.',
      name: 'getAuthenticationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Chưa xác thực đăng nhập tài khoản.`
  String get notAuthenticated {
    return Intl.message(
      'Chưa xác thực đăng nhập tài khoản.',
      name: 'notAuthenticated',
      desc: '',
      args: [],
    );
  }

  /// `- Chỉ dùng khi thay đổi sang tài khoản khác trên thiết bị này\n- Thông tin của tài sẽ bị xóa, Bạn sẽ quay trở lại màn hình kích hoạt tài khoản!`
  String get alertDelRegDevice {
    return Intl.message(
      '- Chỉ dùng khi thay đổi sang tài khoản khác trên thiết bị này\n- Thông tin của tài sẽ bị xóa, Bạn sẽ quay trở lại màn hình kích hoạt tài khoản!',
      name: 'alertDelRegDevice',
      desc: '',
      args: [],
    );
  }

  /// `Tham số không đúng.`
  String get invalidParameter {
    return Intl.message(
      'Tham số không đúng.',
      name: 'invalidParameter',
      desc: '',
      args: [],
    );
  }

  /// `Không có file để xem trước`
  String get listFileEmpty {
    return Intl.message(
      'Không có file để xem trước',
      name: 'listFileEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số CMND/CCCD/HC/Mã số thuế.`
  String get usernamePlacehoder {
    return Intl.message(
      'Nhập số CMND/CCCD/HC/Mã số thuế.',
      name: 'usernamePlacehoder',
      desc: '',
      args: [],
    );
  }

  /// `Đang hoạt động`
  String get activing {
    return Intl.message(
      'Đang hoạt động',
      name: 'activing',
      desc: '',
      args: [],
    );
  }

  /// `Làm mới`
  String get clear {
    return Intl.message(
      'Làm mới',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Vẽ chữ ký của bạn`
  String get drawYourSignature {
    return Intl.message(
      'Vẽ chữ ký của bạn',
      name: 'drawYourSignature',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng vẽ Chữ ký của bạn`
  String get pleaseDrawSign {
    return Intl.message(
      'Vui lòng vẽ Chữ ký của bạn',
      name: 'pleaseDrawSign',
      desc: '',
      args: [],
    );
  }

  /// `Mã thiết bị`
  String get deviceId {
    return Intl.message(
      'Mã thiết bị',
      name: 'deviceId',
      desc: '',
      args: [],
    );
  }

  /// `Ký số theo QĐ-769-BTTTT`
  String get signToQD769 {
    return Intl.message(
      'Ký số theo QĐ-769-BTTTT',
      name: 'signToQD769',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách đã ký`
  String get listsigned {
    return Intl.message(
      'Danh sách đã ký',
      name: 'listsigned',
      desc: '',
      args: [],
    );
  }

  /// `Tính năng xem không hỗ trợ giao dịch ký hash!`
  String get readNotifyHash {
    return Intl.message(
      'Tính năng xem không hỗ trợ giao dịch ký hash!',
      name: 'readNotifyHash',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin lịch sử giao dịch`
  String get transactionhistoryinfo {
    return Intl.message(
      'Thông tin lịch sử giao dịch',
      name: 'transactionhistoryinfo',
      desc: '',
      args: [],
    );
  }

  /// `Để bảo vệ mã PIN của bạn vui lòng sử dụng thiết bị có hỗ trợ sinh trắc học và kích hoạt tính năng này`
  String get bio_protect_pin {
    return Intl.message(
      'Để bảo vệ mã PIN của bạn vui lòng sử dụng thiết bị có hỗ trợ sinh trắc học và kích hoạt tính năng này',
      name: 'bio_protect_pin',
      desc: '',
      args: [],
    );
  }

  /// `Sử dụng sinh trắc học`
  String get active_bio {
    return Intl.message(
      'Sử dụng sinh trắc học',
      name: 'active_bio',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản của Quý khách cần xác minh thông tin đăng ký, vui lòng chuẩn bị:`
  String get introEkycTitle {
    return Intl.message(
      'Tài khoản của Quý khách cần xác minh thông tin đăng ký, vui lòng chuẩn bị:',
      name: 'introEkycTitle',
      desc: '',
      args: [],
    );
  }

  /// `Giấy chứng nhận đăng ký kinh doanh bản gốc`
  String get certBusinessRegistration {
    return Intl.message(
      'Giấy chứng nhận đăng ký kinh doanh bản gốc',
      name: 'certBusinessRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Giấy CMND/Thẻ CCCD bản gốc, còn hiệu lực, không scan/photocopy`
  String get idEkyc {
    return Intl.message(
      'Giấy CMND/Thẻ CCCD bản gốc, còn hiệu lực, không scan/photocopy',
      name: 'idEkyc',
      desc: '',
      args: [],
    );
  }

  /// `Giấy CMND / Thẻ CCCD bản gốc, còn hiệu lực của Người đại diện pháp luật`
  String get idRepreEkyc {
    return Intl.message(
      'Giấy CMND / Thẻ CCCD bản gốc, còn hiệu lực của Người đại diện pháp luật',
      name: 'idRepreEkyc',
      desc: '',
      args: [],
    );
  }

  /// `Đối chiếu khuôn mặt với ảnh CMND/CCCD`
  String get certRequester {
    return Intl.message(
      'Đối chiếu khuôn mặt với ảnh CMND/CCCD',
      name: 'certRequester',
      desc: '',
      args: [],
    );
  }

  /// `Lưu ý chụp ảnh giấy tờ:`
  String get noteEkyc {
    return Intl.message(
      'Lưu ý chụp ảnh giấy tờ:',
      name: 'noteEkyc',
      desc: '',
      args: [],
    );
  }

  /// `Không chụp quá mờ`
  String get blurryPhotos {
    return Intl.message(
      'Không chụp quá mờ',
      name: 'blurryPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Không chụp mất góc`
  String get missingCorner {
    return Intl.message(
      'Không chụp mất góc',
      name: 'missingCorner',
      desc: '',
      args: [],
    );
  }

  /// `Không chụp lóa sáng`
  String get backLighting {
    return Intl.message(
      'Không chụp lóa sáng',
      name: 'backLighting',
      desc: '',
      args: [],
    );
  }

  /// `VNPT SmartCA đã tiếp nhận hồ sơ của quý khách, vui lòng chờ VNPT SmartCA thẩm định hồ sơ và cấp chứng thư số.`
  String get waitingForApproval {
    return Intl.message(
      'VNPT SmartCA đã tiếp nhận hồ sơ của quý khách, vui lòng chờ VNPT SmartCA thẩm định hồ sơ và cấp chứng thư số.',
      name: 'waitingForApproval',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận thông tin của bạn gặp sự cố đề nghị bạn liên hệ với tổng đài 18001260 để được tư vẫn hỗ trợ`
  String get alertApproval {
    return Intl.message(
      'Xác nhận thông tin của bạn gặp sự cố đề nghị bạn liên hệ với tổng đài 18001260 để được tư vẫn hỗ trợ',
      name: 'alertApproval',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin đăng ký cấp Chứng thư`
  String get confirmInfo {
    return Intl.message(
      'Thông tin đăng ký cấp Chứng thư',
      name: 'confirmInfo',
      desc: '',
      args: [],
    );
  }

  /// `Họ tên`
  String get fullName {
    return Intl.message(
      'Họ tên',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get confirm {
    return Intl.message(
      'Xác nhận',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Quốc tịch`
  String get nationality {
    return Intl.message(
      'Quốc tịch',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Tỉnh/TP`
  String get province {
    return Intl.message(
      'Tỉnh/TP',
      name: 'province',
      desc: '',
      args: [],
    );
  }

  /// `Quận/Huyện`
  String get district {
    return Intl.message(
      'Quận/Huyện',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Phường/Xã`
  String get wards {
    return Intl.message(
      'Phường/Xã',
      name: 'wards',
      desc: '',
      args: [],
    );
  }

  /// `Phiếu yêu cầu cung cấp dịch vụ`
  String get serviceRequestForm {
    return Intl.message(
      'Phiếu yêu cầu cung cấp dịch vụ',
      name: 'serviceRequestForm',
      desc: '',
      args: [],
    );
  }

  /// `Ký xác nhận`
  String get signConfirm {
    return Intl.message(
      'Ký xác nhận',
      name: 'signConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Gửi yêu cầu cấp Chứng thư số thành công. Vui lòng kiểm tra email sau ít phút để kích hoạt dịch vụ.`
  String get sentServiceRequestSuccess {
    return Intl.message(
      'Gửi yêu cầu cấp Chứng thư số thành công. Vui lòng kiểm tra email sau ít phút để kích hoạt dịch vụ.',
      name: 'sentServiceRequestSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Ngày cấp`
  String get issueDate {
    return Intl.message(
      'Ngày cấp',
      name: 'issueDate',
      desc: '',
      args: [],
    );
  }

  /// `Nơi cấp`
  String get placeOfIssue {
    return Intl.message(
      'Nơi cấp',
      name: 'placeOfIssue',
      desc: '',
      args: [],
    );
  }

  /// `Thôn/Xóm`
  String get streetName {
    return Intl.message(
      'Thôn/Xóm',
      name: 'streetName',
      desc: '',
      args: [],
    );
  }

  /// `Không có dữ liệu`
  String get emptyData {
    return Intl.message(
      'Không có dữ liệu',
      name: 'emptyData',
      desc: '',
      args: [],
    );
  }

  /// `Chọn dữ liệu`
  String get selectData {
    return Intl.message(
      'Chọn dữ liệu',
      name: 'selectData',
      desc: '',
      args: [],
    );
  }

  /// `Khác`
  String get other {
    return Intl.message(
      'Khác',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Trang chủ`
  String get home {
    return Intl.message(
      'Trang chủ',
      name: 'home',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
