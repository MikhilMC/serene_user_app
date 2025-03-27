// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/booking_details_module/bloc/booking_details_bloc/booking_details_bloc.dart';
import 'package:serene_user_app/app_modules/booking_details_module/bloc/cancel_booking_bloc/cancel_booking_bloc.dart';
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

  String _formatPaymentMethod(String paymentMethod) {
    switch (paymentMethod) {
      case "cash_on_arrival":
        return "Cash On Arrival";
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
              bool isLoading = state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );

              return OverlayLoaderWidget(
                isLoading: isLoading,
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
                        value: bookingDetails.bookingStatus,
                        valueColor: Helper.statusColor(bookingStatus),
                      ),
                      DetailRow(
                        label: "Booking Date",
                        value: dateFormat.format(bookingDetails.bookingDate),
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
                        value: dateFormat.format(bookingDetails.startDate),
                      ),
                      DetailRow(
                        label: "Check-out Date",
                        value: dateFormat.format(bookingDetails.endDate),
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
                        label: "Total Cost",
                        value:
                            "₹${(double.parse(bookingDetails.totalCost) + double.parse(bookingDetails.platformFee)) - double.parse(bookingDetails.refundAmount)}",
                      ),
                      DetailRow(
                        label: "Payment Method",
                        value:
                            _formatPaymentMethod(bookingDetails.paymentMethod),
                      ),
                      DetailRow(
                        label: "Payment Status",
                        value: paymentStatus,
                        valueColor:
                            Helper.statusColor(bookingDetails.paymentStatus),
                      ),

                      SizedBox(height: 20),

                      // Actions
                      SectionTitle(title: "Actions"),
                      ActionButton(
                        text: "Modify Booking",
                        icon: Icons.edit,
                        color: Colors.blue,
                        action: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookingUpdateScreen(
                                hostName: bookingDetails.hostName,
                                rate: double.parse(bookingDetails.totalCost) /
                                    bookingDetails.noOfGuests,
                                bookingId: bookingDetails.id,
                                numberOfPersons: bookingDetails.noOfGuests,
                                startingDate: bookingDetails.startDate,
                                endingDate: bookingDetails.endDate,
                              ),
                            ),
                          );
                        },
                      ),
                      if (bookingDetails.bookingStatus == "booking_initiated" ||
                          bookingDetails.bookingStatus == "booking_completed")
                        ActionButton(
                          text: "Cancel Booking",
                          icon: Icons.cancel,
                          color: Colors.red,
                          action: _showBookingCancelDialogueBox,
                        ),
                      ActionButton(
                        text: "Contact Host",
                        icon: Icons.message,
                        color: Colors.green,
                        action:
                            _showContactHostModal, // Updated to show the modal
                      ),
                      ActionButton(
                        text: "Leave a Review",
                        icon: Icons.star,
                        color: Colors.orange,
                        action: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingReviewScreen(),
                          ),
                        ),
                      ),
                      // 🔥 New Report Host Button
                      ActionButton(
                        text: "Report Host",
                        icon: Icons.report,
                        color: Colors.redAccent,
                        action: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReportHostScreen(
                              bookingId:
                                  int.parse(bookingId), // Passing booking ID
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
