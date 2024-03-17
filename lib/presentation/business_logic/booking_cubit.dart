import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/booking_class.dart';
import '../../data/repository/booking_repo.dart';

part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  late final BookingRepo bookingRepo;

  late List<BookingModel> booking;

  BookingCubit(this.bookingRepo) : super(BookingInitial());

  Future<List<BookingModel>> getAllBooking() async {
    booking = await bookingRepo.getAllBooking();
    emit(BookingLoaded(booking));

    return booking;
  }
}
