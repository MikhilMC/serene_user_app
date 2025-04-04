// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/booking_details_module/bloc/booking_details_bloc/booking_details_bloc.dart';
import 'package:serene_user_app/app_modules/booking_details_module/bloc/cancel_booking_bloc/cancel_booking_bloc.dart';
import 'package:serene_user_app/app_modules/booking_details_module/bloc/check_in_bloc/check_in_bloc.dart';
import 'package:serene_user_app/app_modules/booking_details_module/bloc/check_out_bloc/check_out_bloc.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/custom_error_widget.dart';
import 'package:serene_user_app/app_widgets/overlay_loader_widget.dart';
import 'package:url_launcher/url_launcher.dart'; // For launching URLs (email, phone, SMS, WhatsApp)

import 'package:serene_user_app/app_modules/booking_details_module/utils/helper.dart';
import 'package:serene_user_app/app_modules/booking_details_module/widget/action_button.dart';
import 'package:serene_user_app/app_modules/booking_details_module/widget/detail_row.dart';
import 'package:serene_user_app/app_modules/booking_details_module/widget/section_title.dart';
import 'package:serene_user_app/app_modules/booking_module/view/booking_update_screen.dart';
import 'package:serene_user_app/app_modules/booking_review_module/view/booking_review_screen.dart';
import 'package:serene_user_app/app_modules/report_host_module/view/report_host_screen.dart';

class BookingDetailsScreen extends StatefulWidget {
  final int bookingId;
  const BookingDetailsScreen({
    super.key,
    required this.bookingId,
  });

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  // Hardcoded data
  final String bookingId = "123456";
  final String bookingStatus = "Confirmed";
  final String bookingDate = "2025-10-10 00:00:00.000";
  final String propertyName = "Cozy Beachfront Villa";
  final String propertyAddress = "123 Ocean Drive, Miami, FL";
  final String hostName = "John Doe";
  final String checkInDate = "2025-11-15 00:00:00.000";
  final String checkOutDate = "2025-11-20 00:00:00.000";
  final int numberOfNights = 5;
  final int numberOfGuests = 2;
  final double totalCost = 750.00;
  final String paymentMethod = "Credit/Debit Card";
  final String paymentStatus = "Paid";
  final String guestName = "Jane Smith";
  final String specialRequests = "Early check-in at 2 PM";

  // Host contact details (hardcoded for demonstration)
  final String hostEmail = "john.doe@example.com";
  final String hostPhoneNumber = "+1234567890";

  @override
  void initState() {
    super.initState();
    context
        .read<BookingDetailsBloc>()
        .add(BookingDetailsEvent.bookingDetailsFetched(widget.bookingId));
  }

  Future<void> _showBookingCancelDialogueBox() async {
    if (mounted) {
      return showDialog(
        context: context,
        builder: (BuildContext dialogueContext) {
          return AlertDialog(
            title: const Text("Cancel Booking"),
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            content: const Text(
              "Do you want to cancel this booking?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(dialogueContext).pop();
                },
                child: const Text(
                  "Go Back",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                  ),
                ),
              ),
              TextButton(
                onPressed: _cancelBooking,
                child: Text(
                  "Cancel Booking",
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _cancelBooking() async {
    final CancelBookingBloc cancelBookingBloc =
        BlocProvider.of<CancelBookingBloc>(context);

    cancelBookingBloc
        .add(CancelBookingEvent.bookingCancelled(widget.bookingId));
  }

  Future<void> _checkIn() async {
    final CheckInBloc cancelBookingBloc = BlocProvider.of<CheckInBloc>(context);

    cancelBookingBloc.add(CheckInEvent.checkedIn(widget.bookingId));
  }

  Future<void> _checkOut() async {
    final CheckOutBloc cancelBookingBloc =
        BlocProvider.of<CheckOutBloc>(context);

    cancelBookingBloc.add(CheckOutEvent.checkedOut(widget.bookingId));
  }

  // Function to show the contact host modal
  void _showContactHostModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text("Email"),
                onTap: () {
                  Navigator.pop(context); // Close the modal
                  _launchEmail();
                },
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text("Phone Call"),
                onTap: () {
                  Navigator.pop(context); // Close the modal
                  _launchPhoneCall();
                },
              ),
              ListTile(
                leading: Icon(Icons.message, color: Colors.orange),
                title: Text("SMS"),
                onTap: () {
                  Navigator.pop(context); // Close the modal
                  _launchSMS();
                },
              ),
              ListTile(
                leading: Icon(Icons.chat, color: Colors.green),
                title: Text("WhatsApp"),
                onTap: () {
                  Navigator.pop(context); // Close the modal
                  _launchWhatsApp();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Function to launch email
  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: hostEmail,
      queryParameters: {
        'subject': 'Regarding Booking ID: $bookingId',
        'body': 'Hello $hostName,',
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not launch email client.")),
        );
      }
    }
  }

  // Function to launch phone call
  Future<void> _launchPhoneCall() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: hostPhoneNumber,
    );

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not launch phone app.")),
        );
      }
    }
  }

  // Function to launch SMS
  Future<void> _launchSMS() async {
    final Uri smsUri = Uri(
      scheme: 'sms',
      path: hostPhoneNumber,
      queryParameters: {
        'body': 'Hello $hostName, regarding Booking ID: $bookingId',
      },
    );

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not launch SMS app.")),
        );
      }
    }
  }

  // Function to launch WhatsApp
  Future<void> _launchWhatsApp() async {
    final Uri whatsappUri = Uri(
      scheme: 'https',
      host: 'wa.me',
      path: hostPhoneNumber,
      queryParameters: {
        'text': 'Hello $hostName, regarding Booking ID: $bookingId',
      },
    );

    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not launch WhatsApp.")),
        );
      }
    }
  }

  String _formatBookingStatus(String bookingStatus) {
    switch (bookingStatus) {
      case "booking_initiated":
        return "Booking Initiated";
      case "booking_completed":
        return "Booking Completed";
      case "check_in":
        return "Checked In";
      case "check_out":
        return "Checked Out";
      default:
        return "Canceled";
    }
  }

  String _formatPaymentMethod(String paymentMethod) {
    switch (paymentMethod) {
      case "upi":
        return "UPI";
      default:
        return "Credit/Debit Card";
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("MMMM d, yyyy");

    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Details"),
        centerTitle: true,
      ),
      body: BlocBuilder<BookingDetailsBloc, BookingDetailsState>(
        builder: (context, state) {
          if (state is BookingDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! BookingDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.firstColor,
              ),
            );
          }

          final bookingDetails = state.bookingDetails;
          final now = DateTime(
            DateTime.now().year,
            DateTime.now().month,
            DateTime.now().day,
          );
          final startDate = bookingDetails.startDate;
          final endDate = bookingDetails.endDate;

          return BlocConsumer<CheckOutBloc, CheckOutState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () {},
                success: (response) {
                  if (response.status == "success") {
                    AppHelper.showCustomSnackBar(
                      context,
                      "Success: ${response.message}",
                    );

                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  } else {
                    AppHelper.showErrorDialogue(
                      context,
                      "Checking Out Failed",
                    );
                    Navigator.pop(context);
                  }
                },
                failure: (errorMessage) {
                  AppHelper.showErrorDialogue(
                    context,
                    "Checking Out Failed: $errorMessage",
                  );
                  Navigator.pop(context);
                },
              );
            },
            builder: (context, state) {
              bool isCheckingOutLoading = state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );
              return BlocConsumer<CheckInBloc, CheckInState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loading: () {},
                    success: (response) {
                      if (response.status == "success") {
                        AppHelper.showCustomSnackBar(
                          context,
                          "Success: ${response.message}",
                        );

                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      } else {
                        AppHelper.showErrorDialogue(
                          context,
                          "Checking In Failed",
                        );
                        Navigator.pop(context);
                      }
                    },
                    failure: (errorMessage) {
                      AppHelper.showErrorDialogue(
                        context,
                        "Checking In Failed: $errorMessage",
                      );
                      Navigator.pop(context);
                    },
                  );
                },
                builder: (context, state) {
                  bool isCheckingInLoading = state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  );

                  return BlocConsumer<CancelBookingBloc, CancelBookingState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        loading: () {},
                        success: (response) {
                          if (response.status == "success") {
                            AppHelper.showCustomSnackBar(
                              context,
                              "Success: ${response.message}",
                            );

                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          } else {
                            AppHelper.showErrorDialogue(
                              context,
                              "Cancel Booking Failed",
                            );
                            Navigator.pop(context);
                          }
                        },
                        failure: (errorMessage) {
                          AppHelper.showErrorDialogue(
                            context,
                            "Cancel Booking Failed: $errorMessage",
                          );
                          Navigator.pop(context);
                        },
                      );
                    },
                    builder: (context, state) {
                      bool isCancelLoading = state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );

                      return OverlayLoaderWidget(
                        isLoading: isCancelLoading ||
                            isCheckingInLoading ||
                            isCheckingOutLoading,
                        childWidget: SingleChildScrollView(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Booking Overview
                              SectionTitle(title: "Booking Overview"),
                              DetailRow(
                                label: "Booking ID",
                                value: bookingDetails.id.toString(),
                              ),
                              DetailRow(
                                label: "Status",
                                value: _formatBookingStatus(
                                    bookingDetails.bookingStatus),
                                valueColor: Helper.statusColor(bookingStatus),
                              ),
                              DetailRow(
                                label: "Booking Date",
                                value: dateFormat
                                    .format(bookingDetails.bookingDate),
                              ),

                              SizedBox(height: 20),

                              // Property Details
                              SectionTitle(title: "Property Details"),
                              DetailRow(
                                label: "Property Name",
                                value: bookingDetails.propertyName.isNotEmpty
                                    ? bookingDetails.propertyName
                                    : "Property name unavailable",
                              ),
                              DetailRow(
                                label: "Address",
                                value: propertyAddress,
                              ),
                              DetailRow(
                                label: "Host",
                                value: bookingDetails.hostName,
                              ),

                              SizedBox(height: 20),

                              // Stay Details
                              SectionTitle(title: "Stay Details"),
                              DetailRow(
                                label: "Check-in Date",
                                value:
                                    dateFormat.format(bookingDetails.startDate),
                              ),
                              DetailRow(
                                label: "Check-out Date",
                                value:
                                    dateFormat.format(bookingDetails.endDate),
                              ),
                              DetailRow(
                                label: "Number of Nights",
                                value: bookingDetails.noOfDays.toString(),
                              ),
                              DetailRow(
                                label: "Number of Guests",
                                value: bookingDetails.noOfGuests.toString(),
                              ),

                              SizedBox(height: 20),

                              // Payment Details
                              SectionTitle(title: "Payment Details"),
                              DetailRow(
                                label: "Booking Cost",
                                value: "₹${bookingDetails.totalCost}",
                              ),
                              DetailRow(
                                label: "Platform Fee",
                                value: "₹${bookingDetails.platformFee}",
                              ),
                              DetailRow(
                                label: "Refund Amount",
                                value: "₹${bookingDetails.refundAmount}",
                              ),
                              DetailRow(
                                label: "Latest Payment Method",
                                value: _formatPaymentMethod(
                                    bookingDetails.paymentMethod),
                              ),
                              DetailRow(
                                label: "Latest Payment Status",
                                value: paymentStatus,
                                valueColor: Helper.statusColor(
                                    bookingDetails.paymentStatus),
                              ),

                              SizedBox(height: 20),

                              // Actions
                              SectionTitle(title: "Actions"),
                              SizedBox(height: 8),

                              // Check-In Button (on or after start date but before end date)
                              if ((now.year == startDate.year &&
                                      now.month == startDate.month &&
                                      now.day == startDate.day) &&
                                  bookingDetails.bookingStatus ==
                                      "booking_completed")
                                ActionButton(
                                  text: "Check In",
                                  icon: Icons.login,
                                  color: Colors.green,
                                  action: _checkIn,
                                ),

                              // Check-Out Button (only on the end date)
                              if (now.year == endDate.year &&
                                  now.month == endDate.month &&
                                  now.day == endDate.day &&
                                  bookingDetails.bookingStatus == "check_in")
                                ActionButton(
                                  text: "Check Out",
                                  icon: Icons.logout,
                                  color: Colors.red,
                                  action: _checkOut,
                                ),

                              // Show "Modify" and "Cancel" only before the `startDate`
                              if (now.isBefore(startDate) &&
                                  (bookingDetails.bookingStatus ==
                                          "booking_initiated" ||
                                      bookingDetails.bookingStatus ==
                                          "booking_completed")) ...[
                                ActionButton(
                                  text: "Modify Booking",
                                  icon: Icons.edit,
                                  color: Colors.blue,
                                  action: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BookingUpdateScreen(
                                        bookingId: bookingDetails.id,
                                        hostName: bookingDetails.hostName,
                                        rate: bookingDetails.propertyRate,
                                        platformFee: double.parse(
                                            bookingDetails.platformFee),
                                        numberOfPersons:
                                            bookingDetails.noOfGuests,
                                        startingDate: startDate,
                                        endingDate: endDate,
                                      ),
                                    ),
                                  ),
                                ),
                                ActionButton(
                                  text: "Cancel Booking",
                                  icon: Icons.cancel,
                                  color: Colors.red,
                                  action: _showBookingCancelDialogueBox,
                                ),
                              ],

                              ActionButton(
                                text: "Contact Host",
                                icon: Icons.message,
                                color: Colors.green,
                                action:
                                    _showContactHostModal, // Updated to show the modal
                              ),
                              // Show "Review" and "Report" only after the `endDate`
                              if (now.isAfter(endDate) &&
                                  bookingDetails.bookingStatus ==
                                      'check_out') ...[
                                if (!bookingDetails.reviewSubmitted)
                                  ActionButton(
                                    text: "Leave a Review",
                                    icon: Icons.star,
                                    color: Colors.orange,
                                    action: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BookingReviewScreen(
                                          bookingId: widget.bookingId,
                                        ),
                                      ),
                                    ),
                                  ),
                                if (!bookingDetails.reportSubmitted)
                                  ActionButton(
                                    text: "Report Host",
                                    icon: Icons.report,
                                    color: Colors.redAccent,
                                    action: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ReportHostScreen(
                                          bookingId: bookingDetails.id,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
