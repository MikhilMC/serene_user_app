import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/property_details_module/bloc/host_events_bloc/host_events_bloc.dart';
import 'package:serene_user_app/app_widgets/custom_error_widget.dart';

class EventsSectionWidget extends StatefulWidget {
  final int hostId;

  const EventsSectionWidget({
    super.key,
    required this.hostId,
  });

  @override
  State<EventsSectionWidget> createState() => _EventsSectionWidgetState();
}

class _EventsSectionWidgetState extends State<EventsSectionWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<HostEventsBloc>()
        .add(HostEventsEvent.hostEventsFetched(widget.hostId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HostEventsBloc, HostEventsState>(
      builder: (context, state) {
        if (state is HostEventsError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is HostEventsEmpty) {
          return Container();
        }

        if (state is! HostEventsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final events = state.events;
        final DateFormat dateFormat = DateFormat.yMMMd();

        return SizedBox(
          // Add a fixed height or constrain the ListView
          height: 400, // Set height or make it dynamic based on content
          child: ListView.builder(
            padding: const EdgeInsets.all(16.0),
            shrinkWrap:
                true, // Important: ensures ListView adapts to content size
            physics: const ClampingScrollPhysics(), // Prevents scroll conflict
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];

              return Card(
                margin: const EdgeInsets.only(bottom: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Event Title
                      Text(
                        "Event - ${event.title}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),

                      // Event Dates
                      Row(
                        children: [
                          const Icon(Icons.calendar_today,
                              size: 16, color: Colors.grey),
                          const SizedBox(width: 8),
                          Text(
                            '${dateFormat.format(event.startDate)} to ${dateFormat.format(event.endDate)}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),

                      // Event Description
                      Text(
                        event.description,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 12.0),

                      // Event Images with CachedNetworkImage
                      if (event.images.isNotEmpty)
                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: event.images.length,
                            itemBuilder: (context, imgIndex) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "${AppUrls.baseUrl}${event.images[imgIndex]}",
                                    width: 180,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(
                                      Icons.broken_image,
                                      color: Colors.grey,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
