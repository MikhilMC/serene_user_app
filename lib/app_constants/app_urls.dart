class AppUrls {
  static const String baseUrl = "https://vqp6fbbv-8001.inc1.devtunnels.ms";
  static const String userAppUrl = "$baseUrl/userapp";

  static const String userRegisterUrl = "$userAppUrl/register/";
  static const String userLoginUrl = "$userAppUrl/login/";

  static const String getProfileDataUrl = "$userAppUrl/profile/";
  static const String getUserBookingsUrl = "$userAppUrl/view_bookings/";
  static const String getPropertyListUrl = "$userAppUrl/list_host/";
  static const String getPropertyDetailsUrl = "$userAppUrl/view_host_deatails/";
  static const String getEventsUrl = "$userAppUrl/view_events/";

  static const String addBookingUrl = "$userAppUrl/bookings/";
  static const String makePaymentUrl = "$userAppUrl/payment/";

  static const String getBookingDetailsUrl = "$userAppUrl/booking_details/";
  static const String cancelBookingUrl = "$userAppUrl/cancel_booking/";
  static const String checkInUrl = "$userAppUrl/check_in/";
  static const String checkOutUrl = "$userAppUrl/check_out/";
}
