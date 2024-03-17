

import '../models/booking_class.dart';
import '../web_services/booking_api.dart';

class BookingRepo {
  final BookingApi bookingApi;

  BookingRepo(this.bookingApi);

  Future<List<BookingModel>> getAllBooking() async {
    final booking = await bookingApi.getAllBooking();
    return booking.map((restaurant) => BookingModel.fromJson(restaurant)).toList();
  }
}
