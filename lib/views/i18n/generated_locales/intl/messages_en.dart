// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(anything) => "${anything}";

  static String m1(anything) => "Enter ${anything}";

  static String m2(step) => "Step ${step}";

  static String m3(purpose) => "Please use biometric to ${purpose}";

  static String m4(anything) => "Enter ${anything} to continue";

  static String m5(pattern) =>
      "Use 8 to 30 characters with a combination of uppercase, lowercase, numbers, special characters ${pattern}";

  static String m6(total) => "Total: ${total} results";

  static String m7(localVersion, storeVersion) =>
      "Update this app to ${storeVersion}";

  static String m8(version) => "VNPT SmartCA version ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Continue": MessageLookupByLibrary.simpleMessage("continue"),
        "KAKNotFound": MessageLookupByLibrary.simpleMessage("KAK not found"),
        "Notice": MessageLookupByLibrary.simpleMessage("Notify"),
        "acceptance": MessageLookupByLibrary.simpleMessage("Acceptance"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "accountType": MessageLookupByLibrary.simpleMessage("Account type"),
        "activateAccount":
            MessageLookupByLibrary.simpleMessage("Activate account"),
        "activateBiometricDesc": MessageLookupByLibrary.simpleMessage(
            "Using biometrics to enhance security, do you agree?"),
        "activateButton":
            MessageLookupByLibrary.simpleMessage("Sign acceptance minutes"),
        "activateCode": MessageLookupByLibrary.simpleMessage("Activate code"),
        "activateKeyPair":
            MessageLookupByLibrary.simpleMessage("Activate keypair"),
        "activateSuccessDesc": MessageLookupByLibrary.simpleMessage(
            "Your digital certificate has been activated successfully."),
        "activateSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Activate success"),
        "activateTransactionNotSignAcceptanceMinutes":
            MessageLookupByLibrary.simpleMessage(
                "The account has not signed the acceptance minutes"),
        "activateTransactionNotSignKeypair":
            MessageLookupByLibrary.simpleMessage(
                "The account has not been activated with a key pair"),
        "activated": MessageLookupByLibrary.simpleMessage("Activated"),
        "activeBiometricAuthentication": MessageLookupByLibrary.simpleMessage(
            "Active biometric authentication"),
        "active_bio": MessageLookupByLibrary.simpleMessage("Turn on biometric"),
        "activing": MessageLookupByLibrary.simpleMessage("Activing"),
        "activingCert":
            MessageLookupByLibrary.simpleMessage("Activating certificate..."),
        "activingKey":
            MessageLookupByLibrary.simpleMessage("Please wait a moment..."),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "affiliateAppName":
            MessageLookupByLibrary.simpleMessage("Linked App Name"),
        "affiliateApplication":
            MessageLookupByLibrary.simpleMessage("Linked app"),
        "agree": MessageLookupByLibrary.simpleMessage("Agree"),
        "alertApproval": MessageLookupByLibrary.simpleMessage(
            "Verify information have problem, please contact hotline 18001260 for advice and support"),
        "alertDelRegDevice": MessageLookupByLibrary.simpleMessage(
            "- Only use when you want to use another account on this device\n- Existing account data saved on your device will be deleted, you will return to Account Activation step!"),
        "anything": m0,
        "authentication":
            MessageLookupByLibrary.simpleMessage("Authentication"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "backLighting":
            MessageLookupByLibrary.simpleMessage("Avoid back lighting"),
        "bio_protect_pin": MessageLookupByLibrary.simpleMessage(
            "To protect your PIN, we recommend you to use device supported biometric"),
        "biometricDialogButton":
            MessageLookupByLibrary.simpleMessage("Authentication by biometric"),
        "biometricDialogTitle":
            MessageLookupByLibrary.simpleMessage("Authentication required"),
        "blurryPhotos":
            MessageLookupByLibrary.simpleMessage("Advoid too blurry photos"),
        "business": MessageLookupByLibrary.simpleMessage("Enterprise"),
        "calAuthDataFail": MessageLookupByLibrary.simpleMessage(
            "Calculate authorize data failed"),
        "canLoading":
            MessageLookupByLibrary.simpleMessage("Release to load more"),
        "cancelTransaction":
            MessageLookupByLibrary.simpleMessage("Cancel transaction"),
        "cancelTransactionDone":
            MessageLookupByLibrary.simpleMessage("Transaction Canceled"),
        "canceled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "cannotGetDeviceInfo":
            MessageLookupByLibrary.simpleMessage("Cannot get device info"),
        "cannotSignKeyChallenge":
            MessageLookupByLibrary.simpleMessage("Cannot sign key challenge"),
        "certBusinessRegistration": MessageLookupByLibrary.simpleMessage(
            "Certificate of business registration"),
        "certRequester": MessageLookupByLibrary.simpleMessage(
            "Certificate requester needs to match the face"),
        "certificate": MessageLookupByLibrary.simpleMessage("Certificate"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Change password"),
        "checkingInfor":
            MessageLookupByLibrary.simpleMessage("Please wait a moment..."),
        "clear": MessageLookupByLibrary.simpleMessage("Clear"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmCancel": MessageLookupByLibrary.simpleMessage("Confirm cancel"),
        "confirmInfo": MessageLookupByLibrary.simpleMessage("Confirm Info"),
        "confirmNewPassword":
            MessageLookupByLibrary.simpleMessage("Confirm new password"),
        "confirmPINDesc":
            MessageLookupByLibrary.simpleMessage("Re-enter PIN to confirm"),
        "confirmPINTitle": MessageLookupByLibrary.simpleMessage("Confirm PIN"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "confirmTransaction":
            MessageLookupByLibrary.simpleMessage("Confirm Transaction"),
        "connectTimeout":
            MessageLookupByLibrary.simpleMessage("Connect Timeout."),
        "contactCustomerCare":
            MessageLookupByLibrary.simpleMessage("Customer Service Center"),
        "copied": MessageLookupByLibrary.simpleMessage("Copied"),
        "createPinTitle":
            MessageLookupByLibrary.simpleMessage("Create PIN code"),
        "dateOfBirth": MessageLookupByLibrary.simpleMessage("Date of birth"),
        "deviceId": MessageLookupByLibrary.simpleMessage("Device\'s ID"),
        "district": MessageLookupByLibrary.simpleMessage("District"),
        "documentPreview":
            MessageLookupByLibrary.simpleMessage("Document preview"),
        "drawYourSignature":
            MessageLookupByLibrary.simpleMessage("Draw your signature"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emptyData": MessageLookupByLibrary.simpleMessage("No data found"),
        "emptyDescTransaction": MessageLookupByLibrary.simpleMessage(
            "No transactions to confirm yet"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "enterAccountInformation":
            MessageLookupByLibrary.simpleMessage("Enter account information"),
        "enterAnything": m1,
        "expired": MessageLookupByLibrary.simpleMessage("Expired"),
        "faceIDDialogDesc": MessageLookupByLibrary.simpleMessage(
            "Please use your FaceID to confirm"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "fileName": MessageLookupByLibrary.simpleMessage("File name"),
        "fingerprintDialogDesc": MessageLookupByLibrary.simpleMessage(
            "Please use your fingerprint to confirm"),
        "finishTime": MessageLookupByLibrary.simpleMessage("Finish time"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full name"),
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "getAuthenticationFailed":
            MessageLookupByLibrary.simpleMessage("Get Authentication Failed."),
        "gettingCert":
            MessageLookupByLibrary.simpleMessage("Getting certificate..."),
        "hashSign": MessageLookupByLibrary.simpleMessage("Sign hash"),
        "haveNotYetTransaction":
            MessageLookupByLibrary.simpleMessage("Have not yet transaction"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "hotline": MessageLookupByLibrary.simpleMessage("Hotline"),
        "iAgreeWith": MessageLookupByLibrary.simpleMessage("I agree to "),
        "idEkyc": MessageLookupByLibrary.simpleMessage(
            "Valid Identity Card and not a copy/scanned copy"),
        "idRepreEkyc": MessageLookupByLibrary.simpleMessage(
            "Identity Card of legal representative  and not a copy/scanned copy"),
        "identification": MessageLookupByLibrary.simpleMessage("Identity"),
        "idleLoading":
            MessageLookupByLibrary.simpleMessage("Pull up to load more"),
        "initialTime": MessageLookupByLibrary.simpleMessage("Create time"),
        "initializePIN": MessageLookupByLibrary.simpleMessage("Initialize PIN"),
        "initializePINTitle": MessageLookupByLibrary.simpleMessage(
            "Personal PIN is used to protect your digital signature"),
        "introEkycTitle": MessageLookupByLibrary.simpleMessage(
            "Your account needs identity verification, please prepare:"),
        "invalidPIN": MessageLookupByLibrary.simpleMessage("Invalid PIN"),
        "invalidParameter":
            MessageLookupByLibrary.simpleMessage("Invalid Parameter."),
        "invalidToken": MessageLookupByLibrary.simpleMessage("Invalid token"),
        "issueDate": MessageLookupByLibrary.simpleMessage("Issue Date"),
        "issuer": MessageLookupByLibrary.simpleMessage("Issuer"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "listFileEmpty":
            MessageLookupByLibrary.simpleMessage("Have no file to preview"),
        "listOfDocumentToBeSigned": MessageLookupByLibrary.simpleMessage(
            "List of documents to be signed"),
        "listsigned": MessageLookupByLibrary.simpleMessage("Signed list"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "loadingCert": MessageLookupByLibrary.simpleMessage(
            "Getting certificate, please wait a moment..."),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "maybeLater": MessageLookupByLibrary.simpleMessage("Maybe Later"),
        "missingCorner":
            MessageLookupByLibrary.simpleMessage("Advoid take missing-conrner"),
        "nationality": MessageLookupByLibrary.simpleMessage("Nationality"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New password"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "nextAssignKey":
            MessageLookupByLibrary.simpleMessage("Next step: Activate keypair"),
        "nextSignBbnt": MessageLookupByLibrary.simpleMessage(
            "Next step: Sign acceptance minutes"),
        "nextStepPin":
            MessageLookupByLibrary.simpleMessage("Next step: Create PIN"),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("No Internet Connection."),
        "noStep": m2,
        "notAuthenticated":
            MessageLookupByLibrary.simpleMessage("Not Authenticated."),
        "notPhysicalDevice": MessageLookupByLibrary.simpleMessage(
            "You are running the application on a virtual device. Please install the app on a real device."),
        "notSupportExt": MessageLookupByLibrary.simpleMessage(
            "The application does not support preview of "),
        "noteEkyc": MessageLookupByLibrary.simpleMessage("Note:"),
        "noticeAfterConnectNetworkChangePassword":
            MessageLookupByLibrary.simpleMessage(
                "User\'s information not found. Please reload data by pull down screen"),
        "noticeWhenPasswordChange": MessageLookupByLibrary.simpleMessage(
            "Your password has changed. Please login again."),
        "oldPassword": MessageLookupByLibrary.simpleMessage("Old password"),
        "oldPasswordWrong":
            MessageLookupByLibrary.simpleMessage("Wrong old password"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordDuplicate": MessageLookupByLibrary.simpleMessage(
            "New password duplicate with the old password"),
        "passwordNotMatch":
            MessageLookupByLibrary.simpleMessage("Password does not match"),
        "personal": MessageLookupByLibrary.simpleMessage("Personal"),
        "personalInBusiness": MessageLookupByLibrary.simpleMessage("Staff"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone number"),
        "pinDialogButton": MessageLookupByLibrary.simpleMessage("Confirm"),
        "pinDialogConfirmCancel": MessageLookupByLibrary.simpleMessage(
            "Please enter your PIN to cancel transaction"),
        "pinDialogConfirmSignDigitalTitle":
            MessageLookupByLibrary.simpleMessage(
                "Please enter your PIN to confirm transaction"),
        "pinDialogTitle": MessageLookupByLibrary.simpleMessage(
            "Enter the PIN to activate the digital signing key pair"),
        "pinValidateNotMatch":
            MessageLookupByLibrary.simpleMessage("PIN code does not match"),
        "pinValidateSequence": MessageLookupByLibrary.simpleMessage(
            "PIN codes cannot be consecutive numbers"),
        "pinValidateSixDigit": MessageLookupByLibrary.simpleMessage(
            "Please enter a 6-digit PIN codes"),
        "pinValidateTheSame": MessageLookupByLibrary.simpleMessage(
            "PIN codes cannot be the same numbers"),
        "placeOfIssue": MessageLookupByLibrary.simpleMessage("Place of issue"),
        "pleaseDrawSign": MessageLookupByLibrary.simpleMessage(
            "Please draw your signature before confirm"),
        "progressProcessing":
            MessageLookupByLibrary.simpleMessage("Please wait a moment..."),
        "province": MessageLookupByLibrary.simpleMessage("Province"),
        "readNotifyHash": MessageLookupByLibrary.simpleMessage(
            "The preview feature does not support signed hash transactions!"),
        "refreshTokenFailed": MessageLookupByLibrary.simpleMessage(
            "Failed to retrieve refresh token for authentication."),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "remainTimeToSign":
            MessageLookupByLibrary.simpleMessage("Remain time to sign"),
        "requestBiometricDesc": m3,
        "requestTime": MessageLookupByLibrary.simpleMessage("Request time"),
        "revoked": MessageLookupByLibrary.simpleMessage("Revoked"),
        "selectData": MessageLookupByLibrary.simpleMessage("Select data"),
        "sentServiceRequestSuccess": MessageLookupByLibrary.simpleMessage(
            "Submit request for issuance of Digital Certificate successfully. Please check your email in a few minutes to activate the service."),
        "serial": MessageLookupByLibrary.simpleMessage("Serial"),
        "serviceCannotVerifyApp":
            MessageLookupByLibrary.simpleMessage("Cannot verify app"),
        "serviceExpireToken": MessageLookupByLibrary.simpleMessage(
            "Your session is expired. Please signin again"),
        "serviceGenerateKAKFail":
            MessageLookupByLibrary.simpleMessage("Generate KAK failed"),
        "serviceGeneratingKAK":
            MessageLookupByLibrary.simpleMessage("Đang tạo KAK"),
        "serviceJailbreak": MessageLookupByLibrary.simpleMessage(
            "Your device is not secure enough to use SmartCA"),
        "serviceLockPINOverEnter": MessageLookupByLibrary.simpleMessage(
            "Your PIN has been locked because enter wrong over accept times."),
        "serviceLostConnection": MessageLookupByLibrary.simpleMessage(
            "Connection errors. Please check your network connection again"),
        "serviceNoAccessTokenFound":
            MessageLookupByLibrary.simpleMessage("No accessToken found"),
        "serviceNotExistedTransactionHis": MessageLookupByLibrary.simpleMessage(
            "Have not existed transaction history"),
        "serviceNotExistedUserInfo": MessageLookupByLibrary.simpleMessage(
            "Have not existed user information"),
        "serviceNotFoundDevice":
            MessageLookupByLibrary.simpleMessage("No device found"),
        "serviceNotFoundFCMToken": MessageLookupByLibrary.simpleMessage(
            "Cannot register to receive notify"),
        "serviceRejectFail":
            MessageLookupByLibrary.simpleMessage("Reject failed"),
        "serviceRequestForm":
            MessageLookupByLibrary.simpleMessage("Service Request Form"),
        "serviceSomethingWentWrong": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please try again later"),
        "serviceVerifyAppFail":
            MessageLookupByLibrary.simpleMessage("Verify fail app"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "sign": MessageLookupByLibrary.simpleMessage("Sign"),
        "signBbnt":
            MessageLookupByLibrary.simpleMessage("Sign acceptance minutes"),
        "signConfirm":
            MessageLookupByLibrary.simpleMessage("Sign confirmation"),
        "signError": MessageLookupByLibrary.simpleMessage("Sign error"),
        "signFailed": MessageLookupByLibrary.simpleMessage("Sign failed"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signInFieldWarning": m4,
        "signOut": MessageLookupByLibrary.simpleMessage("Sign out"),
        "signOutConfirm": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to sign out this device?"),
        "signToQD769":
            MessageLookupByLibrary.simpleMessage("Sign to QD-769-BTTTT"),
        "signTransactionDone": MessageLookupByLibrary.simpleMessage(
            "Your transaction has been successfully digitally signed."),
        "signedSuccess": MessageLookupByLibrary.simpleMessage("Signed success"),
        "signer": MessageLookupByLibrary.simpleMessage("Signer"),
        "size": MessageLookupByLibrary.simpleMessage("Size"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "streetName": MessageLookupByLibrary.simpleMessage("Street name"),
        "strongPasswordValid": m5,
        "subject": MessageLookupByLibrary.simpleMessage("Subject"),
        "suspended": MessageLookupByLibrary.simpleMessage("Suspended"),
        "taxCode": MessageLookupByLibrary.simpleMessage("Tax code"),
        "termOfUseService":
            MessageLookupByLibrary.simpleMessage("terms of service"),
        "time": MessageLookupByLibrary.simpleMessage("Time"),
        "tokenExpired": MessageLookupByLibrary.simpleMessage("Token expired"),
        "totalRecord": m6,
        "transactionDate":
            MessageLookupByLibrary.simpleMessage("Transaction date"),
        "transactionDesc":
            MessageLookupByLibrary.simpleMessage("Transaction Description"),
        "transactionDetail":
            MessageLookupByLibrary.simpleMessage("Transaction detail"),
        "transactionHistory":
            MessageLookupByLibrary.simpleMessage("Transaction history"),
        "transactionStatus":
            MessageLookupByLibrary.simpleMessage("Transaction status"),
        "transactionType":
            MessageLookupByLibrary.simpleMessage("Transaction type"),
        "transactionhistoryinfo": MessageLookupByLibrary.simpleMessage(
            "Transaction history information"),
        "transactions": MessageLookupByLibrary.simpleMessage("Transactions"),
        "typeOfCertificate":
            MessageLookupByLibrary.simpleMessage("Type of certificate"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateAvailable":
            MessageLookupByLibrary.simpleMessage("Update Available"),
        "updateVersionMsg": m7,
        "username":
            MessageLookupByLibrary.simpleMessage("Identification number"),
        "usernamePlacehoder": MessageLookupByLibrary.simpleMessage(
            "Enter ID number or tax code."),
        "validity": MessageLookupByLibrary.simpleMessage("Validity"),
        "versionNewest": MessageLookupByLibrary.simpleMessage(
            "You are using the latest version"),
        "versionNumber": m8,
        "vietnamese": MessageLookupByLibrary.simpleMessage("Tiếng Việt"),
        "viewTransactionInfo":
            MessageLookupByLibrary.simpleMessage("View information"),
        "waitingActivate":
            MessageLookupByLibrary.simpleMessage("Waiting activate"),
        "waitingForApproval": MessageLookupByLibrary.simpleMessage(
            "VNPT SmartCA has received your documents. Please wait for the approval and issue the digital certificate"),
        "waitingForSignerConfirm":
            MessageLookupByLibrary.simpleMessage("Wait for confirm"),
        "waitingGenerateCertificate": MessageLookupByLibrary.simpleMessage(
            "Waiting generate certificate"),
        "waitingGenerateKeyPair":
            MessageLookupByLibrary.simpleMessage("Waiting generate keypair"),
        "waitingSignAcceptanceMinutes": MessageLookupByLibrary.simpleMessage(
            "Waiting sign acceptance minutes"),
        "wards": MessageLookupByLibrary.simpleMessage("Wards"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning")
      };
}
