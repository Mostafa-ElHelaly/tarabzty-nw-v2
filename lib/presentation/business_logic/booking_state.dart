part of 'booking_cubit.dart';

@immutable
abstract class BookingState {}

class BookingInitial extends BookingState {}
class BookingLoaded extends BookingState {
  final List<BookingModel> Booking;

  BookingLoaded(this.Booking);

}